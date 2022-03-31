import os
import time
import sys
from subprocess import check_output, CalledProcessError

tests_directory = "tests"
error_message = "Fatal error: exception Stdlib.Parsing.Parse_error"


print("\
 _   .-')                      _  .-')                                                  _ (`-.  \n\
( '.( OO )_                   ( \( -O )                                                ( (OO  ) \n\
 ,--.   ,--.) ,-.-')   .-----. ,------.  .-'),-----.        .-'),-----.  .-'),-----.  _.`     \ \n\
 |   `.'   |  |  |OO) '  .--./ |   /`. '( OO'  .-.  '      ( OO'  .-.  '( OO'  .-.  '(__...--'' \n\
 |         |  |  |  \ |  |('-. |  /  | |/   |  | |  |      /   |  | |  |/   |  | |  | |  /  | | \n\
 |  |'.'|  |  |  |(_//_) |OO  )|  |_.' |\_) |  |\|  |      \_) |  |\|  |\_) |  |\|  | |  |_.' | \n\
 |  |   |  | ,|  |_.'||  |`-'| |  .  '.'  \ |  | |  |        \ |  | |  |  \ |  | |  | |  .___.' \n\
 |  |   |  |(_|  |  (_'  '--'\ |  |\  \    `'  '-'  '         `'  '-'  '   `'  '-'  ' |  |      \n\
 `--'   `--'  `--'     `-----' `--' '--'     `-----'            `-----'      `-----'  `--'      \n\
")

time.sleep(0.5)
print("Initializing Compiler")
time.sleep(1)
print("Loading")
time.sleep(1)
print("Moopert Lives")
time.sleep(1)
print("")
print("======================== Compiling ========================")
print("")

try:
    os.system("make clean")
    os.system("make toplevel.native")
except:
    print("Error occured while compiling compiler.")



num_args = len(sys.argv)
if num_args == 1:
    print("")
    print("======================== Running All Tests ======================== \n")
    print("")

    count = 0
    total = 0
    for filename in os.listdir(tests_directory):
        f = os.path.join(tests_directory, filename)

        if "cod" == filename[:3] and os.path.isfile(f):
            print("File Name: " + filename)
            os.system("./toplevel.native -c " + f + " > tests/output.txt 2> tests/error.txt")
            os.system("lli tests/test.ll " + " > tests/output.txt 2> tests/error.txt")
            result = "Passed"
            count += 1
            total += 1
            try:
                output = check_output(["diff", "tests/exp_" + filename[:-4] + "txt", "tests/output.txt"]).decode("utf-8")
            except:
                result = "Failed"
                count -= 1
            print("Result: " + result)
            print("Expected Output:")
            os.system("cat " + "tests/exp_" + filename[:-4] + "txt")
            print("")
            print("Test Output:")
            os.system("cat tests/output.txt")
            print("")
        

    print("======================== FINAL RESULTS ======================== \n")
    print("Test Cases Passed: " + str(count) + "/" + str(total))

elif num_args == 2:
    filename = sys.argv[1]
    f = os.path.join(tests_directory, filename)

    print("")
    print("======================== Running " + filename + " ======================== \n")
    print("")

    os.system("./toplevel.native -c " + f + " > tests/output.txt 2> tests/error.txt")
    os.system("lli tests/test.ll " + " > tests/output.txt 2> tests/error.txt")
    result = "Passed"
    try:
        output = check_output(["diff", "tests/exp_" + filename[:-4] + "txt", "tests/output.txt"]).decode("utf-8")
    except:
        result = "Failed"

    print("Result: " + result)
    print("Expected Output:")
    os.system("cat " + "tests/exp_" + filename[:-4] + "txt")
    print("")
    print("Test Output:")
    os.system("cat tests/output.txt")
    print("")

else:
    print("Too many arguments!")
    print("Usage: python3 testall.py [filename]")