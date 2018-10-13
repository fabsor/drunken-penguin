#! /bin/bash
set -e
if [ ! -f /usr/local/bin/lando ]; then
    wget -O /tmp/lando.pacman https://github.com/lando/lando/releases/download/v3.0.0-rc.1/lando-v3.0.0-rc.1.pacman
    sudo pacman -U /tmp/lando.pacman
fi
