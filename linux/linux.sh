#!/bin/sh

echo "Selected Linux..."
package_manager() {
    echo "What package manager is on your Linux distro?"
    echo "1. apt"
    echo "2. dnf"
    echo "3. zypper"
    echo "4. pacman"
    read -p "Select an Operating system (choose 0 to abort): " pm
}

package_manager

if [ $pm = 0 ]; then
    echo "Aborting install..."
    exit 0

elif [ $pm = 1 ]; then
    cd ./apt
    sudo sh apt.sh

elif [ $pm = 2 ]; then
    cd ./dnf
    sudo sh dnf.sh

elif [ $pm = 3 ]; then
    cd ./zypper
    sudo sh zypper.sh

elif [ $pm = 4 ]; then
    cd ./pacman
    sudo sh pacman.sh

else
    echo "Invalid option, choose again."
    package_manager
fi
