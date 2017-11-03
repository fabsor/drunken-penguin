#! /bin/bash

# Install zsh
sudo apt-get install -y zsh

# Oh my zsh is what you have been dreaming about
# in the shower while awkwardly touching yourself.
# Let's make that secret dream a reality.
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
