import os
import sys

try:
    os.system("make clean")
    os.system("make toplevel.native")
except:
    print("Error occured while compiling compiler.")

if len(sys.argv) == 2:
    filename = sys.argv[1]
    f = os.path.join(filename)

    os.system("./toplevel.native -c " + f + " > tests/output.txt")
    os.system("llc tests/test.ll")
    os.system("clang tests/test.s")
else: 
    print("Incorrect number of arguments")



