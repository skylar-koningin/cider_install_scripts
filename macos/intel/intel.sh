#!/bin/sh

echo "Selected Intel..."
curl -LO https://github.com/skylarkoningin/cider_install_scripts/releases/download/curl/cider-v3.0.2-macos-x64.dmg
hdiutil attach ./cider-v3.0.2-macos-x64.dmg
cp -R "/Volumes/Cider Installer (x64)/Cider.app" /Applications/
hdiutil detach "/Volumes/Cider Installer (x64)/"

