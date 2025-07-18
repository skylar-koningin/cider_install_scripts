#!/bin/sh

echo "Selected Intel..."
curl -L -o "https://github.com/skylarkoningin/cider_install_scripts/releases/download/1.0.0/cider-v3.0.2-macos-x64.dmg"
hdiutil attach ./cider-v3.0.2-macos-x64.dmg
cp -R "/Volumes/Cider Installer (x64)/Cider.app" /Applications/
hdiutil detach "/Volumes/Cider Installer (x64)/"

