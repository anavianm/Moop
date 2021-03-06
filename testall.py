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
    os.system("make moop.native")
except:
    print("Error occured while compiling compiler.")



num_args = len(sys.argv)
if num_args == 1:
    print("")
    print("======================== Running All Tests ======================== \n")
    print("")

    print("")
    print("======================== Running Positive Tests ======================== \n")
    print("")

    pos_count = 0
    pos_total = 0
    for filename in os.listdir(tests_directory):
        f = os.path.join(tests_directory, filename)
        if "pos" == filename[:3] and os.path.isfile(f):
            print("File Name: " + filename)
            os.system("./moop.native " + f + " > tests/output.txt 2> tests/error.txt")
            os.system("lli tests/test.ll > tests/output.txt 2> tests/error.txt")
            result = "Passed"
            pos_count += 1
            pos_total += 1
            try:
                output = check_output(["diff", "tests/exp_" + filename[:-4] + "txt", "tests/output.txt"]).decode("utf-8")
            except:
                result = "Failed"
                pos_count -= 1
            print("Result: " + result)
            print("Test Output:")
            os.system("cat tests/output.txt")
            print("")

    print("")
    print("======================== Running Negative Tests ======================== \n")
    print("")

    neg_count = 0
    neg_total = 0
    for filename in os.listdir(tests_directory):
        f = os.path.join(tests_directory, filename)

        if "neg" == filename[:3] and os.path.isfile(f):
            print("File Name: " + filename)
            os.system("./moop.native " + f + " > tests/output.txt 2> tests/error.txt")
            # os.system("lli tests/test.ll > tests/output.txt 2> tests/error.txt")
            result = "Passed"
            neg_count += 1
            neg_total += 1
            try:
                output = check_output(["diff", "tests/exp_" + filename[:-4] + "txt", "tests/error.txt"]).decode("utf-8")
            except:
                neg_count -= 1
                result = "Failed"
            print("Result: " + result)
            print("Expected Output:")
            os.system("cat " + "tests/exp_" + filename[:-4] + "txt")
            print("")
            print("Test Output:")
            os.system("cat tests/error.txt")
            print("")

    print("======================== FINAL RESULTS ======================== \n")
    print("Positive Test Cases Passed: " + str(pos_count) + "/" + str(pos_total))
    print("Negative Test Cases Passed: " + str(neg_count) + "/" + str(neg_total))

elif num_args == 2:
    filename = sys.argv[1]
    f = os.path.join(tests_directory, filename)

    print("")
    print("======================== Running " + filename + " ======================== \n")
    print("")

    if filename[:3] in ["neg", "pos"] and os.path.isfile(f):
        os.system("./moop.native " + f + " > tests/output.txt 2> tests/error.txt")
        os.system("lli tests/test.ll > tests/output.txt 2> tests/error.txt")
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
        print("Test File does not exist.")

else:
    print("Too many arguments!")
    print("Usage: python3 testall.py [filename]")