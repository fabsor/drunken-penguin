#!/bin/bash
git clone https://aur.archlinux.org/spotify-stable.git /tmp/spotify-stable
pushd /tmp/spotify-stable
makepkg --skippgpcheck -si
popd

git clone https://aur.archlinux.org/slack-desktop.git /tmp/slack
pushd /tmp/slack
makepkg -si
popd

git clone https://aur.archlinux.org/nvm.git /tmp/nvm
pushd /tmp/nvm
makepkg -si
popd

git clone https://aur.archlinux.org/signal.git /tmp/signal
pushd /tmp/signal
makepkg -si
popd

