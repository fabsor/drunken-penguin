#! /bin/bash

source /etc/os-release

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $VERSION_CODENAME stable"

sudo apt-get update
sudo apt-get install -y docker-ce

sudo apt-get -y install python3-pip
sudo pip3 install docker-compose

sudo adduser $USER docker
