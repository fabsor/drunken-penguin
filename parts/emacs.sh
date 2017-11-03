#!/bin/bash

sudo apt-get -y install emacs25
if [ ! -f .emacs.d/personal/personal.el ]; then
    curl -L http://git.io/DOC7Sg | sh
fi
