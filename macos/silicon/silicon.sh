#!/bin/sh

curl -L -O https://github.com/skylarkoningin/cider_install_scripts/releases/download/1.0.0/cider-v3.0.2-macos-arm64.dmg
hdiutil attach ./cider-v3.0.2-macos-arm64.dmg
cp -R "/Volumes/Cider Installer (arm64)/Cider.app" /Applications/
hdiutil detach "/Volumes/Cider Installer (arm64)/"
