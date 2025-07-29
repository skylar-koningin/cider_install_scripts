#!/bin/sh

echo "Selected pacman..."
mv ~/Downloads/cider-v3.0.0-linux-x64.pkg.tar.zst ~/cider_install_scripts/linux/pacman
curl -s https://repo.cider.sh/ARCH-GPG-KEY | sudo pacman-key --add -
sudo pacman-key --lsign-key A0CD6B993438E22634450CDD2A236C3F42A61682
sudo tee -a /etc/pacman.conf << 'EOF'

# Cider Collective Repository
[cidercollective]
SigLevel = Required TrustedOnly
Server = https://repo.cider.sh/arch
EOF
sudo pacman -Sy
sudo pacman -S cider
sudo pacman -U ./cider-v3.0.0-linux-x64.pkg.tar.zst
