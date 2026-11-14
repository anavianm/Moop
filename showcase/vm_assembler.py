# Assembles the two bytecode programs and writes vm.moop next to this file.
# Usage: python3 showcase/vm_assembler.py
# Assembles the bytecode programs and writes vm.moop (MOOP source).
OPS = {"HALT":0,"PUSH":1,"ADD":2,"SUB":3,"MUL":4,"DIV":5,"MOD":6,"DUP":7,"PRINT":8,
       "JMP":9,"JZ":10,"LOAD":11,"STORE":12,"LT":13}
ARG = {"PUSH","JMP","JZ","LOAD","STORE"}

def assemble(src):
    labels, items, addr = {}, [], 0
    for line in src.strip().splitlines():
        line = line.split(";")[0].strip()
        if not line: continue
        if line.endswith(":"): labels[line[:-1]] = addr; continue
        parts = line.split(); op = parts[0]
        items.append((addr, op, parts[1] if len(parts) > 1 else None))
        addr += 2 if op in ARG else 1
    out = []
    for a, op, arg in items:
        if op in ARG:
            v = labels[arg] if arg in labels else int(arg)
            out.append(f"        p.emit({OPS[op]}); p.emit({v});" + " " * max(1, 22 - len(f"p.emit({OPS[op]}); p.emit({v});")) + f"// {a:>3}: {op} {arg}")
        else:
            out.append(f"        p.emit({OPS[op]});" + " " * max(1, 22 - len(f"p.emit({OPS[op]});")) + f"// {a:>3}: {op}")
    return "\n".join(out)

FACT = """
    PUSH 1
    STORE 0        ; r0 = i = 1
    PUSH 1
    STORE 1        ; r1 = acc = 1
loop:
    LOAD 1
    LOAD 0
    MUL
    STORE 1        ; acc = acc * i
    LOAD 1
    PRINT          ; print acc
    LOAD 0
    PUSH 1
    ADD
    STORE 0        ; i = i + 1
    LOAD 0
    PUSH 11
    LT
    JZ end         ; stop once i reaches 11
    JMP loop
end:
    HALT
"""

PRIMES = """
    PUSH 2
    STORE 0        ; r0 = n = 2
outer:
    LOAD 0
    PUSH 60
    LT
    JZ done        ; while n < 60
    PUSH 2
    STORE 1        ; r1 = d = 2
inner:
    LOAD 1
    LOAD 1
    MUL
    LOAD 0
    PUSH 1
    ADD
    LT
    JZ prime       ; d*d > n: no divisor found
    LOAD 0
    LOAD 1
    MOD
    JZ next        ; n % d == 0: not prime
    LOAD 1
    PUSH 1
    ADD
    STORE 1        ; d = d + 1
    JMP inner
prime:
    LOAD 0
    PRINT
next:
    LOAD 0
    PUSH 1
    ADD
    STORE 0        ; n = n + 1
    JMP outer
done:
    HALT
"""

TEMPLATE = r'''// A tiny stack-based virtual machine, written in MOOP.
//
// The bytecode lives in a LinkedList and the operand stack is a Stack, both
// from the MOOP standard library. The VM has four registers (r0 to r3) and
// fourteen instructions:
//
//   0 HALT        5 DIV         10 JZ addr     (pop, jump if zero)
//   1 PUSH n      6 MOD         11 LOAD r      (push register r)
//   2 ADD         7 DUP         12 STORE r     (pop into register r)
//   3 SUB         8 PRINT       13 LT          (push 1 if a < b, else 0)
//   4 MUL         9 JMP addr
//
// Main loads two bytecode programs and runs them. The comments next to each
// emit() show the disassembly. Try changing PUSH 11 or PUSH 60 to make the
// programs go further.

class Program {
    LinkedList code;

    Program Program() {
        this.code = new LinkedList();
    }

    void emit(int word) {
        LinkedList c;
        c = this.code;
        c.insertElem(word);
    }

    LinkedList getCode() {
        return this.code;
    }
}

class VM {
    LinkedList code;
    Stack stack;
    int r0;
    int r1;
    int r2;
    int r3;
    int steps;

    VM VM(LinkedList code) {
        this.code = code;
        this.stack = new Stack();
        this.steps = 0;
    }

    void push(int v) {
        Stack s;
        s = this.stack;
        s.push(v);
    }

    int pop() {
        Stack s;
        int v;
        s = this.stack;
        v = s.top();
        s.pop();
        return v;
    }

    int getReg(int r) {
        if (r == 0) { return this.r0; }
        if (r == 1) { return this.r1; }
        if (r == 2) { return this.r2; }
        return this.r3;
    }

    void setReg(int r, int v) {
        if (r == 0) { this.r0 = v; }
        if (r == 1) { this.r1 = v; }
        if (r == 2) { this.r2 = v; }
        if (r == 3) { this.r3 = v; }
    }

    int getSteps() {
        return this.steps;
    }

    // fetch, decode, execute until HALT
    void run() {
        LinkedList code;
        int pc;
        int op;
        int a;
        int b;
        bool running;

        code = this.code;
        pc = 0;
        running = true;

        while (running) {
            op = code.getElem(pc);
            this.steps = this.steps + 1;

            if (op == 0) {
                running = false;
            } else if (op == 1) {
                this.push(code.getElem(pc + 1));
                pc = pc + 2;
            } else if (op == 9) {
                pc = code.getElem(pc + 1);
            } else if (op == 10) {
                a = this.pop();
                if (a == 0) {
                    pc = code.getElem(pc + 1);
                } else {
                    pc = pc + 2;
                }
            } else if (op == 11) {
                this.push(this.getReg(code.getElem(pc + 1)));
                pc = pc + 2;
            } else if (op == 12) {
                this.setReg(code.getElem(pc + 1), this.pop());
                pc = pc + 2;
            } else if (op == 8) {
                printi(this.pop());
                pc = pc + 1;
            } else if (op == 7) {
                a = this.pop();
                this.push(a);
                this.push(a);
                pc = pc + 1;
            } else {
                // binary operators: pop b, then a, push (a op b)
                b = this.pop();
                a = this.pop();
                if (op == 2) { this.push(a + b); }
                if (op == 3) { this.push(a - b); }
                if (op == 4) { this.push(a * b); }
                if (op == 5) { this.push(a / b); }
                if (op == 6) { this.push(a - (a / b) * b); }
                if (op == 13) {
                    if (a < b) { this.push(1); } else { this.push(0); }
                }
                pc = pc + 1;
            }
        }
    }
}

class Main {
    int main() {
        Program p;
        VM vm;
        int total;

        print("MOOP VM: a stack machine written in MOOP");
        print("");

        // ---- program 1: factorials of 1 to 10 ----
        p = new Program();
__FACT__

        print("Program 1: factorials of 1 to 10");
        vm = new VM(p.getCode());
        vm.run();
        total = vm.getSteps();

        // ---- program 2: primes below 60 ----
        p = new Program();
__PRIMES__

        print("");
        print("Program 2: primes below 60");
        vm = new VM(p.getCode());
        vm.run();
        total = total + vm.getSteps();

        print("");
        print("VM instructions executed:");
        printi(total);
        return 0;
    }
}
'''
src = TEMPLATE.replace("__FACT__", assemble(FACT)).replace("__PRIMES__", assemble(PRIMES))
import os
out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "vm.moop")
open(out, "w", newline=chr(10)).write(src)
print(len(src.splitlines()), "lines")
