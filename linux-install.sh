#!/bin/bash

export PACMAN="$SUDO_HOME/cider_install_scripts/Linux/Pacman"
export APTITUDE="$SUDO_HOME/cider_install_scripts/Linux/Aptitude"
export DNF="$SUDO_HOME/cider_install_scripts/Linux/DNF"
export ZYPPER="$SUDO_HOME/cider_install_scripts/Linux/Zypper"
export OTHERDISTRO="$SUDO_HOME/cider_install_scripts/Linux/OtherDistro"

distro_choose() {
echo "Choose the package manager your system uses."
echo "1. Pacman (ArchLinux-based distros)"
echo "2. Aptitude (Debian/Ubuntu-based distros)"
echo "3. DNF (Fedora-based distros)"
echo "4. Anything else"
read -p "Select the number (choose 0 to abort): " num
}

pacman_script() {
sudo pacman -Syu
cd $PACMAN
curl -s https://repo.cider.sh/ARCH-GPG-KEY | sudo pacman-key --add -
sudo pacman-key --lsign-key A0CD6B993438E22634450CDD2A236C3F42A61682
sudo tee -a /etc/pacman.conf > /dev/null <<EOF

# Cider Collective Repository
[cidercollective]
SigLevel = Required TrustedOnly
Server = https://repo.cider.sh/arch
EOF
sudo pacman -Sy
sudo pacman -U cider-v3.0.0-linux-x64.pkg.tar.zst
sudo pacman -S cider
echo "Cider has been installed!"
sudo rm $PACMAN/cider-v3.0.0-linux-x64.pkg.tar.zst
cd $SUDO_HOME/
exit 0
}

aptitude_script() {
sudo apt update && sudo apt upgrade
cd $APTITUDE
curl -fsSL https://repo.cider.sh/APT-GPG-KEY | sudo gpg --dearmor -o /usr/share/keyrings/cider-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/cider-archive-keyring.gpg] https://repo.cider.sh/apt stable main" | sudo tee /etc/apt/sources.list.d/cider.list
sudo apt update && sudo apt upgrade && sudo dpkg -i cider-v3.0.2-linux-x64.deb
sudo apt install cider
echo "Cider has been installed!"
sudo rm $APTITUDE/cider-v3.0.2-linux-x64.deb
cd $SUDO_HOME/
exit 0
}

dnf_script() {
sudo dnf upgrade
cd $DNF
sudo rpm --import https://repo.cider.sh/RPM-GPG-KEY
sudo mv $DNF/cider.repo /etc/yum.repos.d
sudo dnf makecache
sudo rpm -i cider cider-v3.0.2-linux-x64.rpm
sudo dnf cider
echo "Cider has been installed!"
sudo rm $DNF/cider-v3.0.2-linux-x64.rpm
cd $SUDO_HOME/
exit 0
}

otherdistro_script() {
cd $SUDO_HOME/cider_install_scripts/Linux/OtherDistro/
chmod +x $OTHERDISTRO/cider-v3.0.2-linux-x64.AppImage
mkdir $SUDO_HOME/Cider
sudo mv $OTHERDISTRO/512.png $SUDO_HOME/Cider
sudo mv $OTHERDISTRO/cider-v3.0.2-linux-x64.AppImage $SUDO_HOME/Cider
sudo mv $OTHERDISTRO/cider.desktop $SUDO_HOME/.local/share/applications/
chmod +x $SUDO_HOME/.local/share/applications/cider.desktop
exit 0
}

distro_choose

if ! [[ "$num" =~ ^[0-4]+$ ]]; then
echo "Invalid option, choose again..."
distro_choose
fi

if [[ "$num" =~ ^[0]+$ ]]; then
echo "Exiting..."
exit 0
fi

if [[ "$num" =~ ^[1]+$ ]]; then
echo "Chose Arch Linux"
pacman_script
fi

if [[ "$num" =~ ^[2]+$ ]]; then
echo "Chose Debian"
aptitude_script
fi

if [[ "$num" =~ ^[3]+$ ]]; then
echo "Chose Fedora"
dnf_script
fi

if [[ "$num" =~ ^[4]+$ ]]; then
echo "Chose Other Distro"
otherdistro_script
fi
