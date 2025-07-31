#!/bin/sh

echo "Selected xbps..."
sudo xbps-install curl
mv ~/Downloads/cider-v3.0.2-linux-x64.AppImage ~/cider_install_scripts/linux/xbps
chmod +x ./cider-v3.0.2-linux-x64.AppImage
mkdir ~/CiderApp
mv ./cider-v3.0.2-linux-x64.AppImage ~/CiderApp
mv ./cider.png ~/CiderApp
echo "[Desktop Entry]
    Name=Cider
    Exec=~/CiderApp/cider-v3.0.2-linux-x64.AppImage
    Icon=~/CiderApp/cider.png
    Terminal=false
    Type=Application
    Categories=Multimedia;" > ~/.local/share/applications/CiderApp.desktop
