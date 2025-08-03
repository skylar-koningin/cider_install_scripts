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

*Stated by Elijah (creator of Cider): "We generally don't recommend re-distributing Cider binaries on GitHub, as Cider is a paid product this could lead to unintended interpretation if people don't read into it all the way ... people combing Google can easily skip this information if SEO decided to bump entries."* (I asked if I should remove the binaries, and he said that he would reccomend it until they had public ones)
Please don't send Elijah or Cider devs any hate, and I can completely understand their reasoning.

## 1. Install Git

- Windows: `winget install git`
- MacOS: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && brew install git`
- apt: `sudo apt install git`
- dnf: `sudo dnf install git`
- zypper: `sudo zypper install git`
- pacman: `sudo pacman -S git`
- xbps: `sudo xbps-install git`
- nix: `nix-env -i git` (wont work if nix profile has been used), `nix profile install nixpkgs#git`, or add "git" to your configuration.nix
- eopkg: `sudo eopkg install git`

## 1.5. Switch to Git Bash (Windows Only)

- Close Terminal
- Reopen Terminal, select the arrow near the "+" icon, and select "Git bash" (enables `.sh` scripts on Windows)

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
**Cider binaries are not included** in this repository and must be downloaded separately as per Elijah's request.

No affiliation or endorsement by Cider or the Cider Collective is implied.
