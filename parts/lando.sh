#! /bin/bash
set -e
if [ ! -f /usr/local/bin/lando ]; then
    wget -O /tmp/lando.deb https://github.com/lando/lando/releases/download/v3.0.0-rc.1/lando-v3.0.0-rc.1.deb
    sudo dpkg -i /tmp/lando.deb
fi
