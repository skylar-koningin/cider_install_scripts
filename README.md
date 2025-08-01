# DISCLAIMER
This is not a free way to use Cider, you must already have a license to use it.
For Cider devs and legal: I am not sharing a way to use Cider for free and I recognize that Cider is owned by you wonderful people. I am making this mainly for myself because I like to distrohop and I want a quick way to install it. The only reason Im uploading it to Github is because I feel that some people would also find it useful.

## Credits
the Cider icon used in any non-apt, dnf, zypper, or pacman based distros is downloaded from https://taproom.cider.sh/assets and is licensed under a (idk) license

# Current OS Support
- Windows
- MacOS Intel
- MacOS Silicon
- apt-based distros (Tested on Debian 13 and Linux Mint; also works on ChromeOS with the "Linux development environment" enabled)
- dnf-based distros (Tested on Fedora 42 and RHEL 10)
- zypper-based distros (Tested on openSUSE Tumbleweed)
- pacman-based distros (Tested on Arch Linux)
- xbps-based distros (Untested, should theoretically work with Void Linux)
- nix-based distros (Tested on NixOS)
- eopkg-based distros (Tested on Solus)

# WIP Operating Systems
- nothing rn (request in "Issues" tab)

# How to install and use
## 0. Download the binaries from taproom.cider.sh
- the only reason we have this step is because it was requested by Elijah (the creator) because they are iffy on sharing the binares for Windows and MacOS (please DO NOT send them hate)
- https://taproom.cider.sh
- **NOTE** this step can be stepped on Linux distros that use apt, dnf, zypper, or pacman because it adds the repositories to download Cider from, its just generally reccomended that you still do this step to ensure nothing goes wrong

## 1. Install Git
- Windows: `winget.exe install git`
- MacOS: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && brew install git`
- apt: `sudo apt install git`
- dnf: `sudo dnf install git`
- zypper: `sudo zypper install git`
- pacman: `sudo pacman -S git`
- xbps: `sudo xbps-install git`
- nix: `nix-env -i git`
- eopkg: `sudo eopkg install git`

## 1.5. Switch to "Git Bash"
**THIS STEP IS WINDOWS ONLY**
- Close the open Terminal window
- Reopen Terminal, then click on the arrow next to the tab, then click "Git bash". This allows you to run sh files on Windows, which makes the installer a lot easier to code lol

## 2. Clone the repository
- Run `git clone https://github.com/skylar-koningin/cider_install_scripts.git` (this will work cross-platform)

## 3. Enter the new repository folder
- Run `cd cider_install_scripts/`

## 4. Run the shell script/batch file to start the install process
- `sudo sh cider_install.sh` (works cross-platform)

## 5. After the install finishes, sign in to Cider and Apple Music, and you should be good to go!
