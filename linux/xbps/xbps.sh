#!/bin/sh

echo "Selected xbps..."
sudo xbps-install curl
mv ~/Downloads/cider-v3.0.2-linux-x64.AppImage ~/cider_install_scripts/linux/xbps
chmod +x ./cider-v3.0.2-linux-x64.AppImage
mkdir ~/CiderApp
mkdir ~/.local/applications
mv ./cider-v3.0.2-linux-x64.AppImage ~/CiderApp
mv ./cider.png ~/CiderApp
mv ./CiderApp.desktop ~/.local/share/applications
