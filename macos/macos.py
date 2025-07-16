from macos.intel.intel import intel_cpu
from macos.silicon.silicon import silicon_cpu


def macos_os():
    print("Selected MacOS...")

    import sys
    sys.path.append("./intel")
    sys.path.append("./silicon")

    def mac_cpu():
        print("What CPU does your Mac have?")
        print("1. Intel")
        print("2. Silicon")

    def get_valid_input():
        while True:
            cpu_input = input("Select your operating system (choose 0 to abort): ")

            try:
                cpu_int = int(cpu_input)
                return cpu_int
            except ValueError:
                print("Invalid input!")

    mac_cpu()
    cpu = get_valid_input()

    if cpu == 0:
        print("Aborting program...")
        exit()

    elif cpu == 1:
        from intel import intel
        intel_cpu()

    elif cpu == 2:
        from silicon import silicon
        silicon_cpu()

    else:
        print("Select again...")
        cpu = get_valid_input()
