#!/bin/sh

clear

operating_system() {
    echo "What operating system are you on?"
    echo "1. MacOS"
    echo "2. Linux"
    read -p "Select an Operating system (choose 0 to abort): " os
}

operating_system

if [ $os = 0 ]; then
    echo "Aborting install..."
    exit 0

elif [ $os = 1 ]; then
    cd ./macos
    ./macos.sh

elif [ $os = 2 ]; then
    cd ./linux
    ./linux.sh

else
    echo "Invalid option, choose again."
    operating_system

fi
