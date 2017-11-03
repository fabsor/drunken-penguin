#! /bin/bash
set -e
sudo apt-get install -y gdebi
if [ ! -f /usr/bin/vagrant ]; then
    wget -O /tmp/vagrant.deb https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.deb
    sudo gdebi -n /tmp/vagrant.deb
fi

if [ ! -f /usr/bin/virtualbox ]; then
    wget -O /tmp/virtualbox.deb http://download.virtualbox.org/virtualbox/5.2.0/virtualbox-5.2_5.2.0-118431~Ubuntu~zesty_amd64.deb
    sudo gdebi -n /tmp/virtualbox.deb
fi
