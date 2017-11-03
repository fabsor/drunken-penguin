#!/bin/bash
set -e
apt-get install php-cli
if [ ! -f /usr/local/bin/drush ]; then
    wget -O /usr/local/bin/drush https://github.com/drush-ops/drush-launcher/releases/download/0.4.2/drush.phar
    chmod +x /usr/local/bin/drush
fi
