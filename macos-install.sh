#!/bin/zsh

export INTEL="$HOME/cider_install_scripts/MacOS/Intel"
export SILICON="$HOME/cider_install_scripts/MacOS/Silicon"

cpu_choose() {
echo "Choose CPU your Mac has"
echo "1. Intel"
echo "2. Silicon"
read -p "Choose a CPU (choose 0 to abort): " num
}

intel_script() {
cd $HOME/cider_install_scripts/MacOS/Intel/
hdiutil attach $INTEL/cider-v3.0.2-macos-x64.dmg
sudo cp -rf "/Volumes/Cider Installer (x64)/Cider.app" /Applications
sudo hdiutil detach "/Volumes/Cider Installer (x64)/"
echo "Cider has been installed!"
sudo rm $INTEL/cider-v3.0.2-macos-x64.dmg
cd $HOME/
exit 0
}

silicon_script() {
cd $HOME/cider_install_scripts/MacOS/Silicon/
hdiutil attach $SILICON/cider-v3.0.2-macos-arm64.dmg
sudo cp -rf "/Volumes/Cider Installer (arm64)/Cider.app" /Applications
sudo hdiutil detach "/Volumes/Cider Installer (x64)/"
echo "Cider has been installed!"
sudo rm $SILICON/cider-v3.0.2-macos-arm64.dmg
cd $HOME/
exit 0
}

cpu_choose

if ! [[ "$num" =~ ^[0-2]+$ ]]; then
echo "Invalid option, coose again..."
cpu_choose
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
