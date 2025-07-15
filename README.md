# DISCLAIMER
This is not a free way to use Cider, you must already have a license to use it.
For Cider devs and legal: I am not sharing a way to use Cider for free and I recognize that Cider is owned by you wonderful people. I am making this mainly for myself because I like to distrohop and I want a quick way to install it.

# Current OS Support
- Windows
- MacOS Intel
- MacOS Silicon
- Pacman-based distros (Arch Linux, EndeavourOS, Manjaro, etc)
- Aptitude-based distros (Debian, Ubuntu, Linux Mint, Pop!_OS, etc)
- RPM-based distros that use DNF (Fedora, RHEL, CentOS, AlmaLinux, etc)
- Any distro that can use AppImage files

# WIP Operating Systems
- OpenSUSE

# How to install and use
## 1. Install Git
- Windows:

`winget install git`


- MacOS:

``/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && brew install git``


-Linux

Arch: `sudo pacman -S git`

Debian/Ubuntu: `sudo apt install git`

Fedora/CentOS: `sudo dnf install git`

OpenSUSE: `sudo zypper install git`

Gentoo: `sudo emerge --ask dev-vcs/git`

## 2. Clone the repository
- Run `git clone https://github.com/skylarkoningin/cider_install_scripts.git` (this will work cross-platform)

## 3. Enter the new repository folder
- Windows: run `cd .\cider_install_scripts.git\`
- MacOS and Linux: run `cd ./cider_install_scripts.git/`

## 4. Run the script to install Cider for your system
- Windows: run `windows_installer.bat`
- MacOS: run `macos_installer.sh`
- Linux: run `linux_installer.sh`

## 5. After the install finished, sign in to Cider and Apple Music, and you should be good to go!
