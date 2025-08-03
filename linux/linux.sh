#!/bin/sh

echo "Selected Linux..."
package_manager() {
    echo "What package manager is on your Linux distro?"
    echo "1. apt"
    echo "2. dnf"
    echo "3. zypper"
    echo "4. pacman"
    echo "5. nix"
    echo "6. eopkg"
    echo "7. apk"
    echo "8. other"
    read -p "Select a package manager (choose 0 to abort): " pm
}

checker() {
    if [ $pm = 0 ]; then
        echo "Aborting install..."
        exit 0

    elif [ $pm = 1 ]; then
        cd ./apt
        sh apt.sh

    elif [ $pm = 2 ]; then
        cd ./dnf
        sh dnf.sh

    elif [ $pm = 3 ]; then
        cd ./zypper
        sh zypper.sh

    elif [ $pm = 4 ]; then
        cd ./pacman
        sh pacman.sh

    elif [ $pm = 5 ]; then
        cd ./nix
        sh nix.sh

    elif [ $pm = 6 ]; then
        cd ./eopkg
        sh eopkg.sh

    elif [ $pm = 7 ]; then
        cd ./apk
        sh apk.sh

    elif [ $pm = 8 ]; then
        cd ./xbps
        sh xbps.sh

    elif [ $pm = 9 ]; then
        echo "This script currently does not support any other distros :("
        echo "If you would like us to add support, create an issue with the request tag!"
        echo "Have a nice day!"
        exit 0

    else
        echo "Invalid option, please choose again."
        package_manager
        checker
    fi
}

package_manager
checker
