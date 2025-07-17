#!/bin/sh

mkdir -p ~/.local/bin/cider
mv ./cider-v3.0.2-linux-x64.AppImage ~/.local/bin/cider
mv ./cider.png ~/.local/bin/cider
chmod +x ~/.local/bin/cider/cider-v3.0.2-linux-x64.AppImage
nix-env -iA nixpkgs.desktop-file-utils
update-desktop-database ~/.local/share/applications
