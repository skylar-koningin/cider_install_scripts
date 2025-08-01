#!/bin/sh

echo "Selected nix..."
nix-env -i appimage-run
mv ~/Downloads/cider-v3.0.2-linux-x64.AppImage ~/cider_install_scripts/linux/other
chmod +x ./cider-v3.0.2-linux-x64.AppImage
mkdir ~/CiderApp
mkdir ~/.local/share/applications
mv ./cider-v3.0.2-linux-x64.AppImage ~/CiderApp
mv ./cider.png ~/CiderApp
echo "Exec=appimage-run /home/$USER/CiderApp/cider-v3.0.2-linux-x64.AppImage" >> ./CiderApp.desktop
echo "Icon=/home/$USER/CiderApp/cider.png" >> ./CiderApp.desktop
mv ./CiderApp.desktop ~/.local/share/applications
~/.local/share/CiderApp.desktop
