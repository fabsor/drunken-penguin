#! /bin/bash

if [ ! -f /usr/bin/vagrant ]; then
    wget -O /tmp/vagrant.deb https://releases.hashicorp.com/vagrant/1.9.7/vagrant_1.9.7_x86_64.deb
    sudo dpkg -i /tmp/vagrant.deb
fi

if [ ! -f /usr/bin/virtualbox ]; then
    wget -O /tmp/virtualbox.deb http://download.virtualbox.org/virtualbox/5.1.26/virtualbox-5.1_5.1.26-117224~Ubuntu~zesty_amd64.deb
    sudo dpkg -i /tmp/virtualbox.deb
fi
