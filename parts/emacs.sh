#!/bin/bash

sudo pacman -S --noconfirm install emacs
if [ ! -f $HOME/.emacs.d/init.el ]; then
  git clone git@github.com:fabsor/emacs-reborn.git $HOME/.emacs.d
fi
