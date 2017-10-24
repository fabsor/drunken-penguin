#!/bin/bash

sudo apt-get install -y git
git clone https://github.com/fabsor/drunken-penguin.git /tmp/drunken-penguin

pushd /tmp/drunken-penguin;
./all.sh
popd
