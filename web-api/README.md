# MOOP web API

A small, general-purpose HTTP API for compiling and running MOOP programs. Send it
source code; it compiles it with this repo's compiler, runs the generated LLVM IR with
`lli`, and returns the output as JSON. Any front end can use it, from an online editor
to a game that uses MOOP as its backend (see `showcase/hanoi.moop`). `server.py` uses
only the Python standard library.

- `POST /api/moop/run` with `{"source": "...", "mode": "run" | "ast" | "sast" | "ir"}`
  (`ast`, `sast` and `ir` are the compiler's `-a`, `-s` and `-l` flags)
- `GET /api/moop/health`

## Limits and privacy

One job at a time; 2 s of CPU, 32 MB of heap and 256 MB of address space per process;
64 KB of program output; 10 KB of source; 60 runs per minute per client.
MOOP programs can only call `printf` and allocate memory, so these resource limits are
the sandbox.

Nothing is stored. Each job runs in its own folder in RAM under `/dev/shm/moop-jobs`,
deleted as soon as the job ends (the folder is also wiped when the service starts), and
the log records only the client, mode, result and timing, never the program.

## Building the compiler on Ubuntu 24.04 (without opam)

The Makefile builds through `opam exec`. With Ubuntu's packaged OCaml and LLVM 14
bindings instead, the compiler builds unchanged and passes all 18 tests:

```bash
sudo apt-get install -y libllvm-14-ocaml-dev llvm-14 llvm-14-dev ocaml ocamlbuild ocaml-findlib
LIBRARY_PATH=/usr/lib/llvm-14/lib ocamlbuild -use-ocamlfind moop.native
```

(`make test` runs `make clean` and an opam rebuild first, so with this setup run the
test steps directly: compile each file with `./moop.native`, run `lli tests/test.ll`,
and diff against `tests/exp_*.txt`.)

## Running it

```bash
MOOP_BIN=$PWD/_build/moop.native MOOP_STDLIB=$PWD/stdlib.moop python3 web-api/server.py
curl -s localhost:8090/api/moop/run -d '{"source": "class Main { int main() { printi(42); return 0; } }"}'
```

Settings (environment variables): `MOOP_BIN`, `MOOP_STDLIB`, `MOOP_LLI` (default
`/usr/bin/lli-14`), `MOOP_WORKDIR` (default `/dev/shm/moop-jobs`), `MOOP_HOST` (default
`127.0.0.1`), `MOOP_PORT` (default `8090`), `MOOP_RATE_LIMIT` (default `60`).

It listens on localhost by default. To serve it publicly, put it behind a reverse proxy
(Apache, nginx, etc.) that forwards `/api/moop/` to it, rather than exposing it directly.
