#!/bin/sh

echo "Selected MacOS..."
mac_cpu() {
    echo "What CPU does your Mac have?"
    echo "1. Intel"
    echo "2. Silicon"
    read -p "Select a CPU (choose 0 to abort): " os
}

mac_cpu

if [ $os = 0 ]; then
    echo "Aborting install..."
    exit 0

elif [ $os = 1 ]; then
    cd ./intel
    ./intel.sh

elif [ $os = 2 ]; then
    cd ./silicon
    ./silicon.sh

else
    echo "Invalid option, choose again."
    mac_cpu

fi
