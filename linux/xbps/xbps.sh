#!/bin/sh

echo "Selected xbps..."
c_library() {
    echo "What C library is on your Linux distro?"
    echo "1. glibc"
    echo "2. musl"
    echo "3. other"
    read -p "Select a C library (choose 0 to abort): " cl
}

checker() {
    if [ $cl = 0 ]; then
        echo "Aborting install..."
        exit 0

    elif [ $cl = 1 ]; then
        cd ./glibc
        sh glibc.sh

    elif [ $cl = 2 ]; then
        cd ./musl
        sh musl.sh

    elif [ $cl = 3 ]; then
        echo "What the fuck kinda clibs are you running on, Void Linux mainly supports glibc and musl libraries"
        exit 0

    else
        echo "Invalid option, please choose again."
        c_library
        checker
    fi
}

c_library
checker
