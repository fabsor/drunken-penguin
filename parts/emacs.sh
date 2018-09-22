#!/bin/bash

sudo apt-get -y install emacs
if [ ! -d $HOME/.emacs.d ]; then
  git clone git@github.com:fabsor/emacs-reborn.git $HOME/.emacs.d
fi
