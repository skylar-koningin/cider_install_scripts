from linux.apt.apt import apt_install
from linux.dnf.dnf import dnf_install
from linux.pacman.pacman import pacman_install


def linux_os():
    import sys

    print("Selected Linux...")
    sys.path.append("./apt")
    sys.path.append("./dnf")
    sys.path.append("./pacman")

    def operating_system():
        print("What is your package manager?")
        print("1. apt")
        print("2. dnf")
        print("3. zypper")
        print("4. pacman")

    def get_valid_input():
        while True:
            pm_input = input("Select your operating system (choose 0 to abort): ")

            # Try to convert the input to an integer
            try:
                pm_int = int(pm_input)  # Try to convert to integer
                return pm_int
            except ValueError:
                # If conversion fails, print an error and ask again
                print("Invalid input!")

    operating_system()
    pm = get_valid_input()

    if pm == 0:
        print("Aborting program...")
        exit()

    if pm == 1:
        from apt import apt
        apt_install()

    elif pm == 2:
        from dnf import dnf
        dnf_install()

    elif pm == 3:
        from pacman import pacman
        pacman_install()

    else:
        print("Select again...")
        pm = get_valid_input()
