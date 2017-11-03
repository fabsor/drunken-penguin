#! /bin/bash
set -e
sudo apt-get install php-cli
if [ ! -f /usr/local/bin/wp ]; then
    sudo wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    sudo chmod +x /usr/local/bin/wp
fi
