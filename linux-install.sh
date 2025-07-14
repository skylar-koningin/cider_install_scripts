#!/bin/sh
distro_choose() {
echo "Choose a distro to install"
echo "1. Arch Linux"
echo "2. Debian"
echo "3. Ubuntu"
echo "4. Fedora"
echo "5. RHEL/CentOS"
echo "6. Anything else"
read -p "Choose a distro (choose 0 to abort): " num
}

arch_script() {
sudo pacman -Syu
cd ~/cider_install_scripts/linux/arch_linux/
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
cd ~/
exit 0
}

debian_script() {
sudo apt update && sudo apt upgrade
cd ~/cider_install_scripts/linux/debian/
curl -fsSL https://repo.cider.sh/APT-GPG-KEY | sudo gpg --dearmor -o /usr/share/keyrings/cider-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/cider-archive-keyring.gpg] https://repo.cider.sh/apt stable main" | sudo tee /etc/apt/sources.list.d/cider.list
sudo apt update && sudo apt upgrade && sudo dpkg -i cider-v3.0.2-linux-x64.deb
sudo apt install cider
echo "Cider has been installed!"
cd ~/
exit 0
}

ubuntu_script() {
sudo apt update && sudo apt upgrade
cd ~/cider_install_scripts/linux/ubuntu/
curl -fsSL https://repo.cider.sh/APT-GPG-KEY | sudo gpg --dearmor -o /usr/share/keyrings/cider-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/cider-archive-keyring.gpg] https://repo.cider.sh/apt stable main" | sudo tee /etc/apt/sources.list.d/cider.list
sudo apt update && sudo apt upgrade && sudo dpkg -i cider-v3.0.2-linux-x64.deb
sudo apt install cider
echo "Cider has been installed!"
cd ~/
exit 0
}

fedora_script() {
sudo dnf upgrade
cd ~/cider_install_scripts/linux/fedora/
sudo rpm --import https://repo.cider.sh/RPM-GPG-KEY
sudo mv ./cider.repo /etc/yum.repos.d
sudo dnf makecache
sudo rpm -i cider cider-v3.0.2-linux-x64.rpm
sudo dnf cider
echo "Cider has been installed!"
cd ~/
exit 0
}

rhel_centos_script() {
sudo dnf upgrade
cd ~/cider_install_scripts/linux/fedora/
sudo rpm --import https://repo.cider.sh/RPM-GPG-KEY
sudo mv ./cider.repo /etc/yum.repos.d
sudo dnf makecache
sudo rpm -i cider cider-v3.0.2-linux-x64.rpm
sudo dnf cider
echo "Cider has been installed!"
cd ~/
exit 0
}

all_distro_script() {
cd ~/cider_install_scripts/linux/all_distros/
chmod +x ./cider-v3.0.2-linux-x64.AppImage
mkdir ~/Cider
sudo mv ./512.png ~/Cider
sudo mv ./cider-v3.0.2-linux-x64.AppImage ~/Cider
sudo mv ./cider.desktop ~/.local/share/applications/
chmod +x ~/.local/share/applications/cider.desktop
}
 
if ! [[ "$num" =~ ^[0-6]+$ ]]; then
echo "Choose again..."
distro_choose
fi

if [[ "$num" =~ ^[0]+$ ]]; then
echo "Exiting..."
exit 0
fi

if [[ "$num" =~ ^[1]+$ ]]; then
echo "Chose Arch Linux"
arch_script
fi

if [[ "$num" =~ ^[2]+$ ]]; then
echo "Chose Debian"
debian_script
fi

if [[ "$num" =~ ^[3]+$ ]]; then
echo "Chose Ubuntu"
ubuntu_script
fi

if [[ "$num" =~ ^[4]+$ ]]; then
echo "Chose Debian"
fedora_script
fi

if [[ "$num" =~ ^[5]+$ ]]; then
echo "Chose Debian"
rhel_centos_script
fi

if [[ "$num" =~ ^[6]+$ ]]; then
echo "Chose Debian"
all_distro_script
fi
