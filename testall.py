import os
import time
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

print("")
print("======================== Running Positive Tests ======================== \n")
print("")

pos_count = 0
pos_total = 0
for filename in os.listdir(tests_directory):
    f = os.path.join(tests_directory, filename)

    if "pos" == filename[:3] and os.path.isfile(f):
        print("File Name: " + filename)
        os.system("./toplevel.native -a " + f + " > tests/output.txt 2> error.txt")
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
        os.system("./toplevel.native -a " + f + " > output.txt 2> tests/error.txt")
        result = "Passed"
        neg_count += 1
        neg_total += 1
        try:
            output = check_output(["diff", "tests/errormessage.txt", "tests/error.txt"]).decode("utf-8")
        except:
            neg_count -= 1
            result = "Failed"
        print("Result: " + result)
        print("Test Output:")
        os.system("cat tests/error.txt")
        print("")

print("======================== FINAL RESULTS ======================== \n")
print("Positive Test Cases Passed: " + str(pos_count) + "/" + str(pos_total))
print("Negative Test Cases Passed: " + str(neg_count) + "/" + str(neg_total))