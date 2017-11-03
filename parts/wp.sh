#! /bin/bash
set -e
apt-get install php-cli
if [ ! -f /usr/local/bin/wp ]; then
    wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x /usr/local/bin/wp
fi
