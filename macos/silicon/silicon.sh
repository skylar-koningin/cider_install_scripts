#!/bin/sh

mv ~/Downloads/cider-v3.0.2-macos-arm64.exe ~/cider_install_scripts/macos/silicon
hdiutil attach ./cider-v3.0.2-macos-arm64.dmg
cp -R "/Volumes/Cider Installer (arm64)/Cider.app" /Applications/
hdiutil detach "/Volumes/Cider Installer (arm64)/"
