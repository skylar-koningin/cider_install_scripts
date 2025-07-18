#!/bin/sh

echo "Selected dnf..."
curl -LO https://github.com/skylarkoningin/cider_install_scripts/releases/download/curl/cider-v3.0.2-linux-x64.rpm
sudo rpm --import https://repo.cider.sh/RPM-GPG-KEY
sudo tee /etc/yum.repos.d/cider.repo << 'EOF'
[cidercollective]
name=Cider Collective Repository
baseurl=https://repo.cider.sh/rpm/RPMS
enabled=1
gpgcheck=1
gpgkey=https://repo.cider.sh/RPM-GPG-KEY
EOF
sudo dnf makecache
sudo dnf install ./cider-v3.0.2-linux-x64.rpm
sudo dnf install Cider
