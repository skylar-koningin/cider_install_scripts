#!/bin/sh

echo "Selected MacOS..."
mac_cpu() {
    echo "What CPU does your Mac have?"
    echo "1. Intel"
    echo "2. Silicon"
    echo "3. Other"
    read -p "Select a CPU (choose 0 to abort): " cpu
}

checker() {
    if [ $cpu = 0 ]; then
        echo "Aborting install..."
        exit 0

    elif [ $cpu = 1 ]; then
        cd ./intel
        sh intel.sh

    elif [ $cpu = 2 ]; then
        cd ./silicon
        sh silicon.sh

    elif [ $cpu = 3 ]; then
        echo "What the fuck kinda cpu are you running on, MacOS only supports x86_64/AMD64 (Intel) and ARM64/aarch64 (Silicon)"
        exit 0

    else
        echo "Invalid option, choose again."
        mac_cpu
        checker

    fi
}

mac_cpu
checker
