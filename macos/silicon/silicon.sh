#!/bin/sh

curl -LO https://github.com/skylarkoningin/cider_install_scripts/releases/download/curl/cider-v3.0.2-macos-arm64.dmg
hdiutil attach ./cider-v3.0.2-macos-arm64.dmg
cp -R "/Volumes/Cider Installer (arm64)/Cider.app" /Applications/
hdiutil detach "/Volumes/Cider Installer (arm64)/"
