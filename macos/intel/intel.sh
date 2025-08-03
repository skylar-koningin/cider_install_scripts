#!/bin/sh

echo "Selected Intel..."
mv ~/Downloads/cider-v3.0.2-macos-x64.dmg ~/cider_install_scripts/macos/intel
hdiutil attach ./cider-v3.0.2-macos-x64.dmg
cp -R "/Volumes/Cider Installer (x64)/Cider.app" /Applications/
hdiutil detach "/Volumes/Cider Installer (x64)/"
