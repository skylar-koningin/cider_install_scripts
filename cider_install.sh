#!/bin/sh

clear

operating_system() {
    echo "What operating system are you on?"
    echo "1. Windows"
    echo "2. MacOS"
    echo "3. Linux"
    echo "4. Other"
    read -p "Select an Operating system (choose 0 to abort): " os
}

checker() {
    if [ $os = 0 ]; then
        echo "Aborting install..."
        exit 0

    elif [ $os = 1 ]; then
        cd ./windows
        powershell -ExecutionPolicy Bypass -File "./windows.ps1"

    elif [ $os = 2 ]; then
        cd ./macos
        sh macos.sh

    elif [ $os = 3 ]; then
        cd ./linux
        sh linux.sh

    elif [ $os = 4 ]; then
        echo "This script currently does not support any other operating systems :("
        echo "If you would like us to add support, create an issue with the request tag!"
        echo "Have a nice day!"
        exit 0
    else
        echo "Invalid option, please choose again."
        operating_system
        checker

    fi
}

operating_system
checker
