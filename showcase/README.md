# MOOP showcase programs

Programs written in 2026, after the course, to show what MOOP can do. They run on the
compiler in this repo unchanged and also power the MOOP Terminal and the Tower of Hanoi
game on [maxwellanavian.com](https://maxwellanavian.com).

| File | What it is |
|---|---|
| `hello.moop` | A short tour: a class with a constructor and a field, method calls, a `for` loop. |
| `vm.moop` | A stack-based virtual machine written in MOOP. The bytecode lives in a `LinkedList`, the operand stack is a `Stack` (both from `stdlib.moop`), and it has four registers and 14 instructions. It runs two bytecode programs: factorials of 1 to 10 and the primes below 60. |
| `vm_assembler.py` | The assembler that turns the two bytecode programs into the `emit()` calls in `vm.moop`, so jump targets are computed rather than counted by hand. Run `python3 showcase/vm_assembler.py` to regenerate `vm.moop`. |
| `hanoi.moop` | The backend of a Tower of Hanoi game: checks that a board is a legal position, enforces the rules, detects a win, and solves optimally from any position with a recursive solver. Uses `unless`. |

## Running them

From the repo root (the compiler reads `stdlib.moop` from the current folder and writes
`tests/test.ll`):

```bash
./moop.native showcase/vm.moop > /dev/null && lli tests/test.ll
```

or `python3 moop.py showcase/vm.moop && ./a.out`.

## How the Hanoi game uses MOOP

MOOP programs can't read input, so the web page writes the current board and the
player's action into `main()` between the `// @@BEGIN@@` and `// @@END@@` markers,
compiles and runs the file, and draws what it prints:

```
game.place(0, 3);     // peg 0, bottom disk first
game.place(0, 2);
game.place(2, 1);
game.move(0, 1);      // or game.newGame(n) / game.solve()
```

Output is one value per line: a status (`NEW`, `OK`, `WON`, `ILLEGAL`, `BADSTATE` or
`SOLUTION`), a message for the player, then for `SOLUTION` the moves as pairs of
`from` / `to` lines followed by `END` and the move count, and finally the board: for
each peg, the number of disks and then the disks from bottom to top.

## What we learned about MOOP while writing these

- Recursion works well (the Hanoi solver is recursive).
- A subclass object can't be assigned to a variable of its parent class
  (`illegal assignment Shape = Square`), so inheritance is for reuse rather than
  polymorphism.
- There are no arrays and no string concatenation or comparison by value, and every
  `print` ends the line, so programs build on the stdlib's `LinkedList`, `Stack` and
  `Queue` and print one value per line.
- The stdlib defines `Node`, `LinkedList`, `StringNode`, `StringLinkedList`, `Stack`,
  `StringStack`, `Queue` and `StringQueue`, so those class names are taken.
