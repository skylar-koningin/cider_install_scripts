#!/bin/sh

echo "Selected Linux..."
package_manager() {
    echo "What package manager is on your Linux distro?"
    echo "1. apt"
    echo "2. dnf"
    echo "3. zypper"
    echo "4. pacman"
    echo "5. xbps"
    read -p "Select an Operating system (choose 0 to abort): " pm
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
        cd ./xbps
        sh xbps.sh

    elif [ $pm = 6 ]; then
        cd ./emerge
        sh emerge.sh

    else
        echo "Invalid option, choose again."
        package_manager
        checker
    fi
}

package_manager
checker
