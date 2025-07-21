# DISCLAIMER
This is not a free way to use Cider, you must already have a license to use it.
For Cider devs and legal: I am not sharing a way to use Cider for free and I recognize that Cider is owned by you wonderful people. I am making this mainly for myself because I like to distrohop and I want a quick way to install it. The only reason Im uploading it to Github is because I feel that some people would also find it useful.

# Current OS Support
- Windows
- MacOS Intel
- MacOS Silicon
- apt-based distros (Tested on Debian 13, Kali Linux, Linux Mint, PikaOS, and Pop!_OS)
- dnf-based distros (Tested on AlmaLinux, CentOS, and Fedora 42)
- zypper-based distros (Tested on openSUSE Tumbleweed)
- pacman-based distros (Tested on Arch Linux, CachyOS, and Manjaro)

# WIP Operating Systems
- none rn (create an issue if you would like me to add support)

# How to install and use
## 1. Install Git
- Windows: `winget install git`
- MacOS: ``/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && brew install git``
- apt: `sudo apt install git`
- dnf: `sudo dnf install git`
- zypper: `sudo zypper install git`
- pacman: `sudo pacman -S git`

## 1.5. Switch to "Git Bash"
**THIS STEP IS WINDOWS ONLY**
- Click on the arrow next to the tab, then click "Git bash". This allows you to run sh files on Windows, which makes the installer a lot easier to code lol

## 2. Clone the repository
- Run `git clone https://github.com/skylarkoningin/cider_install_scripts.git` (this will work cross-platform)

## 3. Enter the new repository folder
- Windows: run `cd cider_install_scripts.git\`
- MacOS and Linux: run `cd ./cider_install_scripts.git/`

## 4. Run the shell script/batch file to start the install process
- `sh cider_install.sh` (works cross-platform)

## 5. After the install finishes, sign in to Cider and Apple Music, and you should be good to go!
