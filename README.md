# DISCLAIMER

This is not a free way to use Cider — you must already have a license to use it.

For Cider devs and legal: I am not sharing a way to use Cider for free and I recognize that Cider is owned by you wonderful people. I am making this mainly for myself because I like to distrohop and I want a quick way to install it. The only reason I'm uploading it to GitHub is because I feel that some people would also find it useful.

# Current OS Support

- Windows (Tested on Windows 11)
- MacOS Intel (Tested on macOS Sequoia)
- MacOS Silicon (Untested, but same code as Intel version)
- apt-based distros (Tested on Debian 13 and Linux Mint; also works on ChromeOS with the "Linux development environment")
- dnf-based distros (Tested on Fedora 42 and RHEL 10)
- zypper-based distros (Tested on openSUSE Tumbleweed)
- pacman-based distros (Tested on Arch Linux)
- nix-based distros (Tested on NixOS)
- eopkg-based distros (Tested on Solus)

# WIP Operating Systems

- Alpine

# How to Install and Use

## 0. Download the binaries from https://taproom.cider.sh

This step is required only for Windows and macOS users. Linux users using apt, dnf, zypper, or pacman can skip this step, but it's recommended for consistency.

- https://taproom.cider.sh

*Requested by Elijah (creator of Cider). Please do not host or distribute Cider binaries.*

## 1. Install Git

- Windows: `winget install git`
- MacOS: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && brew install git`
- apt: `sudo apt install git`
- dnf: `sudo dnf install git`
- zypper: `sudo zypper install git`
- pacman: `sudo pacman -S git`
- xbps: `sudo xbps-install git`
- nix: `nix-env -i git` or add "git" to your configuration.nix
- eopkg: `sudo eopkg install git`

## 1.5. Switch to Git Bash (Windows Only)

- Close the terminal
- Reopen Git Bash from the Git installation (enables `.sh` scripts on Windows)

## 2. Clone the Repository

`git clone https://github.com/skylar-koningin/cider_install_scripts.git`

## 3. Enter the Repository

`cd cider_install_scripts/`

## 4. Run the Installer

`sh cider_install.sh`

## 5. Finish Setup

After installation, open Cider, sign in to your Apple account, and enjoy.

---

## Licensing

Skylar's Cider Install Scripts is licensed under both the Apache License 2.0 and the BSD 3-Clause License.
You must comply with both licenses. See the `LICENSE` and `NOTICE` files for full details.

Assets from the Cider Collective (https://cider.sh and https://taproom.cider.sh/assets) are used under their respective open-source licenses.
**Cider binaries are not included** in this repository and must be downloaded separately as per the project's guidelines.

No affiliation or endorsement by Cider or the Cider Collective is implied.
