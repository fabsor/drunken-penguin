#!/bin/bash

sudo apt-get -y install emacs25
if [ ! -f .emacs.d/personal/personal.el ]; then
    curl -L https://raw.githubusercontent.com/fabsor/emacs/master/utils/installer.sh | sh
fi
