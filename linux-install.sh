#!/bin/bash
distro_choose() {
echo "Choose a distro to install"
echo "1. Arch Linux"
echo "2. Debian"
echo "3. Fedora"
echo "4. Anything else"
read -p "Choose a distro (choose 0 to abort): " num
}

archlinux_script() {
sudo pacman -Syu
cd $HOME/cider_install_scripts/Linux/ArchLinux/
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
sudo rm ./cider-v3.0.0-linux-x64.pkg.tar.zst
cd $HOME/
exit 0
}

debian_script() {
sudo apt update && sudo apt upgrade
cd $HOME/cider_install_scripts/Linux/Debian/
curl -fsSL https://repo.cider.sh/APT-GPG-KEY | sudo gpg --dearmor -o /usr/share/keyrings/cider-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/cider-archive-keyring.gpg] https://repo.cider.sh/apt stable main" | sudo tee /etc/apt/sources.list.d/cider.list
sudo apt update && sudo apt upgrade && sudo dpkg -i cider-v3.0.2-linux-x64.deb
sudo apt install cider
echo "Cider has been installed!"
sudo rm ./cider-v3.0.2-linux-x64.deb
cd $HOME/
exit 0
}

fedora_script() {
sudo dnf upgrade
cd $HOME/cider_install_scripts/Linux/Fedora/
sudo rpm --import https://repo.cider.sh/RPM-GPG-KEY
sudo mv ./cider.repo /etc/yum.repos.d
sudo dnf makecache
sudo rpm -i cider cider-v3.0.2-linux-x64.rpm
sudo dnf cider
echo "Cider has been installed!"
sudo rm ./cider cider-v3.0.2-linux-x64.rpm
cd $HOME/
exit 0
}

otherdistro_script() {
cd $HOME/cider_install_scripts/Linux/OtherDistro/
chmod +x ./cider-v3.0.2-linux-x64.AppImage
mkdir $HOME/Cider
sudo mv ./512.png $HOME/Cider
sudo mv ./cider-v3.0.2-linux-x64.AppImage $HOME/Cider
sudo mv ./cider.desktop $HOME/.local/share/applications/
chmod +x $HOME/.local/share/applications/cider.desktop
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
archlinux_script
fi

if [[ "$num" =~ ^[2]+$ ]]; then
echo "Chose Debian"
debian_script
fi

if [[ "$num" =~ ^[3]+$ ]]; then
echo "Chose Fedora"
fedora_script
fi

if [[ "$num" =~ ^[4]+$ ]]; then
echo "Chose Other Distro"
otherdistro_script
fi
