#!/bin/sh

echo "Selected apt..."
sudo apt install curl
curl -LO https://github.com/skylarkoningin/cider_install_scripts/releases/download/curl/cider-v3.0.2-linux-x64.deb
curl -fsSL https://repo.cider.sh/APT-GPG-KEY | sudo gpg --dearmor -o /usr/share/keyrings/cider-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/cider-archive-keyring.gpg] https://repo.cider.sh/apt stable main" | sudo tee /etc/apt/sources.list.d/cider.list
sudo apt update
sudo apt install cider
sudo apt install ./cider-v3.0.2-linux-x64.deb
