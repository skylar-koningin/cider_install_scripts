#!/bin/sh

echo "Selected nix..."
nix profile install nixpkgs#appimage-run
mv ~/Downloads/cider-v3.0.2-linux-x64.AppImage ~/cider_install_scripts/linux/nix
chmod +x ./cider-v3.0.2-linux-x64.AppImage
mkdir ~/CiderApp
mkdir ~/.local/share/applications
mv ./cider-v3.0.2-linux-x64.AppImage ~/CiderApp
mv ./cider.png ~/CiderApp
echo -n "Exec=appimage-run /home/$USER/CiderApp/cider-v3.0.2-linux-x64.AppImage" >> ./CiderApp.desktop
echo -n "Icon=/home/$USER/CiderApp/cider.png" >> ./CiderApp.desktop
chmod +x ./CiderApp.desktop
mv ./CiderApp.desktop ~/.local/share/applications
gtk-launch CiderApp.desktop
