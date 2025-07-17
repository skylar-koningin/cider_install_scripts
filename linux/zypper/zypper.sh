#!/bin/sh

echo "Selected zypper..."
sudo rpm --import https://repo.cider.sh/RPM-GPG-KEY
sudo tee /etc/zypp/repos.d/cider.repo << 'EOF'
[cidercollective]
name=Cider Collective Repository
enabled=1
autorefresh=1
baseurl=https://repo.cider.sh/rpm/RPMS
gpgcheck=1
gpgkey=https://repo.cider.sh/RPM-GPG-KEY
EOF
sudo zypper refresh
sudo rpm -i ./cider-v3.0.2-linux-x64.rpm
sudo zypper install Cider
