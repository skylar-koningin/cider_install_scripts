#!/bin/sh

echo "Selected dnf..."
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
sudo rpm -i ./cider-v3.0.2-linux-x64.rpm
sudo dnf install Cider
