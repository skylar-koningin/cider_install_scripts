#!/bin/sh

clear

operating_system() {
    echo "What operating system are you on?"
    echo "1. Windows"
    echo "2. MacOS"
    echo "3. Linux"
    read -p "Select an Operating system (choose 0 to abort): " os
}

checker() {
    if [ $os = 0 ]; then
        echo "Aborting install..."
        exit 0

    elif [ $os = 1 ]; then
        cd ./windows
        ./windows.bat

    elif [ $os = 2 ]; then
        cd ./macos
        sh macos.sh

    elif [ $os = 3 ]; then
        cd ./linux
        sh linux.sh

    else
        echo "Invalid option, choose again."
        operating_system
        checker

    fi
}

operating_system
checker
