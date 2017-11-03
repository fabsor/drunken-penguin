#!/bin/bash

wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.26/hugo_0.26_Linux-64bit.deb
dpkg -i /tmp/hugo.deb
