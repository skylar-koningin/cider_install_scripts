#!/bin/sh

echo "Selected glibc..."
mv ~/Downloads/cider-v3.0.2-linux-x64.AppImage ~/cider_install_scripts/linux/xbps/glibc
chmod +x ./cider-v3.0.2-linux-x64.AppImage
mkdir ~/CiderApp
mkdir ~/.local/share/applications
mv ./cider-v3.0.2-linux-x64.AppImage ~/CiderApp
mv ./cider.png ~/CiderApp
cat << EOF > CiderApp.desktop
[Desktop Entry]
    Name=Cider
    Icon=~/CiderApp/cider.png
    Terminal=false
    Type=Application
    Categories=Multimedia;
    Exec=/home/$USER/CiderApp/cider-v3.0.2-linux-x64.AppImage
    Icon=/home/$USER/CiderApp/cider.png
EOF
mv ./CiderApp.desktop ~/.local/share/applications
gtk-launch CiderApp.desktop