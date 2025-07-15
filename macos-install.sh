#!/bin/zsh
cpu_choose() {
echo "Choose CPU your Mac has"
echo "1. Intel"
echo "2. Silicon"
read -p "Choose a CPU (choose 0 to abort): " num
}

intel_script() {
cd ~/cider_install_scripts/MacOS/Intel/
hdiutil attach ./cider-v3.0.2-macos-x64.dmg
sudo cp -rf "/Volumes/Cider Installer (x64)/Cider.app" /Applications
sudo hdiutil detach "/Volumes/Cider Installer (x64)/"
echo "Cider has been installed!"
cd ~/
exit 0
}

silicon_script() {
cd ~/cider_install_scripts/MacOS/Silicon/
hdiutil attach ./cider-v3.0.2-macos-arm64.dmg
sudo cp -rf "/Volumes/Cider Installer (arm64)/Cider.app" /Applications
sudo hdiutil detach "/Volumes/Cider Installer (x64)/"
echo "Cider has been installed!"
cd ~/
exit 0
}


if ! [[ "$num" =~ ^[0-2]+$ ]]; then
echo "Choose again..."
distro_choose
fi

if [[ "$num" =~ ^[0]+$ ]]; then
echo "Exiting..."
exit 0
fi

if [[ "$num" =~ ^[1]+$ ]]; then
echo "Chose Arch Linux"
intel_script
fi

if [[ "$num" =~ ^[2]+$ ]]; then
echo "Chose Silicon"
silicon_script
fi
