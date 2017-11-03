#! /bin/bash
set -e
apt-get install -f gdebi
if [ ! -f /usr/bin/vagrant ]; then
    wget -O /tmp/vagrant.deb https://releases.hashicorp.com/vagrant/2.0.0/vagrant_2.0.0_x86_64.deb
    gdebi -y /tmp/vagrant.deb
fi

if [ ! -f /usr/bin/virtualbox ]; then
    wget -O /tmp/virtualbox.deb http://download.virtualbox.org/virtualbox/5.2.0/virtualbox-5.2_5.2.0-118431~Ubuntu~zesty_amd64.deb
    gdebi -y /tmp/virtualbox.deb
fi
