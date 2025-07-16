import sys

from linux.linux import linux_os
from macos.macos import macos_os
from windows.windows import windows_os

sys.path.append("./windows")
sys.path.append("./macos")
sys.path.append("./linux")

def operating_system():
    print("What is your operating system?")
    print("1. Windows")
    print("2. MacOS")
    print("3. Linux")


def get_valid_input():
    while True:
        os_input = input("Select your operating system (choose 0 to abort): ")

        try:
            os_int = int(os_input)
            return os_int
        except ValueError:
            print("Invalid input!")

operating_system()
os = get_valid_input()

if os == 0:
    print("Aborting program...")
    exit()

if os == 1:
    from windows import windows
    windows_os()

elif os == 2:
    from macos import macos
    macos_os()

elif os == 3:
    from linux import linux
    linux_os()

else:
    print("Select again...")
    os = get_valid_input()
