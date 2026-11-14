#!/usr/bin/env python3
"""MOOP run API: compile and run MOOP programs over HTTP.

Compiles a MOOP program with the real MOOP compiler (moop.native, OCaml + LLVM 14)
and runs the generated LLVM IR with lli. Standard library only.

  POST /api/moop/run     {"source": "...", "mode": "run" | "ast" | "sast" | "ir"}
  GET  /api/moop/health

MOOP programs can only call printf (print/printi/printf/printb) and allocate memory,
so the sandbox is about resource limits: CPU time, memory, output size and one job
at a time. Nothing a client submits is kept: every job runs in its own folder in RAM
(/dev/shm), deleted as soon as the job ends, and the log records only the client,
mode, result and timing, never the program itself.
"""
import json
import os
import resource
import shutil
import signal
import subprocess
import tempfile
import threading
import time
from collections import defaultdict, deque
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

MOOP_BIN = os.environ.get("MOOP_BIN", "/opt/moop/moop.native")
MOOP_STDLIB = os.environ.get("MOOP_STDLIB", "/opt/moop/stdlib.moop")
LLI = os.environ.get("MOOP_LLI", "/usr/bin/lli-14")
# Job folders live in RAM (/dev/shm) so submitted programs never touch the disk.
WORK_ROOT = os.environ.get("MOOP_WORKDIR", "/dev/shm/moop-jobs" if os.path.isdir("/dev/shm") else None)
HOST = os.environ.get("MOOP_HOST", "127.0.0.1")
PORT = int(os.environ.get("MOOP_PORT", "8090"))

MAX_SOURCE = 10_000          # bytes of MOOP source
MAX_OUTPUT = 64_000          # bytes kept from a program's stdout / stderr
MAX_LISTING = 400_000        # bytes kept when showing the AST, SAST or LLVM IR
COMPILE_TIMEOUT = 5          # seconds, wall clock
RUN_TIMEOUT = 3              # seconds, wall clock
CPU_SECONDS = 2              # seconds of CPU per process
ADDRESS_SPACE = 256 << 20    # includes the ~100 MB libLLVM mapping
HEAP = 32 << 20              # what a MOOP program can actually allocate
FILE_SIZE = 2 << 20          # the compiler writes tests/test.ll
RATE_LIMIT = int(os.environ.get("MOOP_RATE_LIMIT", "60"))  # runs per client ...
RATE_WINDOW = 60             # ... per this many seconds
QUEUE_WAIT = 10              # seconds a request waits for its turn

MODES = {"run": None, "ast": "-a", "sast": "-s", "ir": "-l"}

job_slot = threading.Semaphore(1)         # one compile/run at a time
hits = defaultdict(deque)                 # client -> request timestamps
hits_lock = threading.Lock()


def _limits():
    os.setsid()  # own process group, so a timeout kills everything it started
    resource.setrlimit(resource.RLIMIT_CPU, (CPU_SECONDS, CPU_SECONDS))
    resource.setrlimit(resource.RLIMIT_AS, (ADDRESS_SPACE, ADDRESS_SPACE))
    resource.setrlimit(resource.RLIMIT_DATA, (HEAP, HEAP))
    resource.setrlimit(resource.RLIMIT_FSIZE, (FILE_SIZE, FILE_SIZE))
    resource.setrlimit(resource.RLIMIT_CORE, (0, 0))


def _kill(proc):
    try:
        os.killpg(proc.pid, signal.SIGKILL)
    except ProcessLookupError:
        pass


def _execute(cmd, cwd, timeout, cap=MAX_OUTPUT, keep_stdout=True):
    """Run cmd with limits; return stdout/stderr (capped), exit code and flags."""
    proc = subprocess.Popen(
        cmd, cwd=cwd, stdin=subprocess.DEVNULL,
        stdout=subprocess.PIPE if keep_stdout else subprocess.DEVNULL,
        stderr=subprocess.PIPE, preexec_fn=_limits,
        env={"PATH": "/usr/bin:/bin", "LC_ALL": "C.UTF-8"},
    )
    result = {"truncated": False, "timed_out": False}
    bufs = {"stdout": bytearray(), "stderr": bytearray()}

    def pump(name, stream):
        buf = bufs[name]
        fd = stream.fileno()
        while True:
            chunk = os.read(fd, 8192)
            if not chunk:
                break
            room = cap - len(buf)
            buf += chunk[:max(room, 0)]
            if len(chunk) > room:
                result["truncated"] = True
                _kill(proc)
                break

    threads = [threading.Thread(target=pump, args=(n, s), daemon=True)
               for n, s in (("stdout", proc.stdout), ("stderr", proc.stderr)) if s is not None]
    for t in threads:
        t.start()
    try:
        proc.wait(timeout=timeout)
    except subprocess.TimeoutExpired:
        result["timed_out"] = True
        _kill(proc)
        proc.wait()
    for t in threads:
        t.join(timeout=1)

    result["stdout"] = bufs["stdout"].decode("utf-8", "replace")
    result["stderr"] = bufs["stderr"].decode("utf-8", "replace")
    result["exit"] = proc.returncode
    return result


def _explain(res, stage):
    """Turn signals and LLVM crash dumps into one readable line."""
    code = res["exit"]
    if res["truncated"]:  # checked first: hitting the output cap also ends in SIGKILL
        limit = MAX_OUTPUT if stage == "run" else MAX_LISTING
        return f"error: output limit reached ({limit // 1000} KB), {stage} stopped"
    # wall-clock timeout, or the CPU rlimit (SIGXCPU, then SIGKILL at the hard limit)
    if res["timed_out"] or code in (-signal.SIGXCPU, -signal.SIGKILL, 128 + signal.SIGXCPU):
        return f"error: {'program' if stage == 'run' else 'compile'} took too long (limit {CPU_SECONDS} s of CPU)"
    if "Stack dump" in res["stderr"] or code in (-signal.SIGABRT, -signal.SIGSEGV, 134, 139):
        if "LLVM ERROR: out of memory" in res["stderr"] or "bad_alloc" in res["stderr"] or stage == "run":
            return f"error: program ran out of memory (limit {HEAP >> 20} MB) or crashed"
        return "error: the compiler crashed on this program"
    return None


def compile_and_run(source, mode):
    work = tempfile.mkdtemp(prefix="job-", dir=WORK_ROOT)
    try:
        os.mkdir(os.path.join(work, "tests"))  # codegen writes tests/test.ll
        shutil.copy(MOOP_STDLIB, os.path.join(work, "stdlib.moop"))
        with open(os.path.join(work, "program.moop"), "w", encoding="utf-8") as f:
            f.write(source)

        flag = MODES[mode]
        cmd = [MOOP_BIN] + ([flag] if flag else []) + ["program.moop"]
        # in run mode the compiler's printed IR isn't needed: it also writes tests/test.ll
        comp = _execute(cmd, work, COMPILE_TIMEOUT, cap=MAX_LISTING, keep_stdout=mode != "run")
        out = {"mode": mode, "stage": "compile",
               "compile": {"stdout": comp["stdout"] if mode != "run" else "",
                           "stderr": comp["stderr"], "exit": comp["exit"]}}
        problem = _explain(comp, "compile")
        if problem:
            out["compile"]["stderr"] = problem
        if comp["exit"] != 0 or problem or mode != "run":
            out["ok"] = comp["exit"] == 0 and not problem
            return out

        run = _execute([LLI, "tests/test.ll"], work, RUN_TIMEOUT)
        out["stage"] = "run"
        out["run"] = {"stdout": run["stdout"], "stderr": run["stderr"], "exit": run["exit"]}
        problem = _explain(run, "run")
        if problem:
            out["run"]["stderr"] = problem
        out["ok"] = run["exit"] == 0 and not problem
        return out
    finally:
        shutil.rmtree(work, ignore_errors=True)


def _rate_ok(client):
    now = time.monotonic()
    with hits_lock:
        q = hits[client]
        while q and now - q[0] > RATE_WINDOW:
            q.popleft()
        if len(q) >= RATE_LIMIT:
            return False
        q.append(now)
        if len(hits) > 5000:  # forget idle clients
            for k in [k for k, v in hits.items() if not v]:
                del hits[k]
        return True


class Handler(BaseHTTPRequestHandler):
    server_version = "moop-api/1.0"
    sys_version = ""

    def _client(self):
        ip = self.client_address[0]
        fwd = self.headers.get("X-Forwarded-For")
        if fwd and ip in ("127.0.0.1", "::1"):  # only trust the local Apache proxy
            ip = fwd.split(",")[-1].strip()
        return ip

    def _send(self, status, body):
        data = json.dumps(body).encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "application/json; charset=utf-8")
        self.send_header("Content-Length", str(len(data)))
        self.send_header("Cache-Control", "no-store")
        self.send_header("X-Content-Type-Options", "nosniff")
        self.end_headers()
        self.wfile.write(data)

    def do_GET(self):
        if self.path.rstrip("/") == "/api/moop/health":
            return self._send(200, {"ok": True, "compiler": "moop.native", "llvm": "14"})
        self._send(404, {"ok": False, "error": "not found"})

    def do_POST(self):
        if self.path.rstrip("/") != "/api/moop/run":
            return self._send(404, {"ok": False, "error": "not found"})
        client = self._client()
        if not _rate_ok(client):
            return self._send(429, {"ok": False, "error": "too many runs, wait a minute and try again"})

        length = int(self.headers.get("Content-Length") or 0)
        if length <= 0 or length > MAX_SOURCE * 2 + 1000:
            return self._send(413, {"ok": False, "error": f"program too large (limit {MAX_SOURCE // 1000} KB)"})
        try:
            req = json.loads(self.rfile.read(length))
            source = req["source"]
            mode = req.get("mode", "run")
            assert isinstance(source, str) and mode in MODES
        except Exception:
            return self._send(400, {"ok": False, "error": "bad request"})
        if len(source.encode("utf-8")) > MAX_SOURCE:
            return self._send(413, {"ok": False, "error": f"program too large (limit {MAX_SOURCE // 1000} KB)"})

        if not job_slot.acquire(timeout=QUEUE_WAIT):
            return self._send(503, {"ok": False, "error": "the compiler is busy, try again in a moment"})
        started = time.monotonic()
        try:
            result = compile_and_run(source, mode)
        except Exception as e:  # never leak a traceback to the page
            self.log_message("job failed: %r", e)
            return self._send(500, {"ok": False, "error": "internal error"})
        finally:
            job_slot.release()
        result["ms"] = round((time.monotonic() - started) * 1000)
        self.log_message("%s mode=%s stage=%s ok=%s %dms", client, mode, result["stage"], result["ok"], result["ms"])
        self._send(200, result)

    def log_message(self, fmt, *args):
        print("%s %s" % (time.strftime("%Y-%m-%d %H:%M:%S"), fmt % args), flush=True)


def _reset_work_root():
    """Start clean: remove any job folders left behind if the API was killed mid-run."""
    if WORK_ROOT:
        shutil.rmtree(WORK_ROOT, ignore_errors=True)
        os.makedirs(WORK_ROOT, mode=0o700)


if __name__ == "__main__":
    for path in (MOOP_BIN, MOOP_STDLIB, LLI):
        if not os.path.exists(path):
            raise SystemExit(f"missing: {path}")
    _reset_work_root()
    print(f"moop-api listening on {HOST}:{PORT}", flush=True)
    ThreadingHTTPServer((HOST, PORT), Handler).serve_forever()
