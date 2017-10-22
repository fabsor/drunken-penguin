#! /bin/bash

# I just put my virtualenv shit in a folder right under
# my user account. You probably want to do something else,
# because you probably think I'm wrong for some reason.
# Go ahead. Change it all you want. See if I care. Fucker.
VIRTUALENV_HOME='~/.virtualenvs'

# You're probably a fucking hipster, so I guess you're using
# zsh. Change this to .bashrc if you're an old fucking dinosaur.
SHELL_RC="$HOME/.zshrc"

sudo apt-get update

# Lets start out with installing python3. Because, come on.
sudo apt-get -y install python3 python python-pip python3-pip

# My projects use redis for well, everything. so let's go ahead and get
# get that as well.
sudo apt-get -y install redis-server

# Virtualenvwrapper is necessary for virtually (hehe)
# everything when you work with multiple python projects.
# Let's shove it right in there.
sudo pip install virtualenv virtualenvwrapper

if [ -f $SHELL_RC ]; then
    # Add our WORKON_HOME variable, if it's not already there.
    if !  grep -q "WORKON_HOME" $SHELL_RC; then
        echo "export WORKON_HOME=$VIRTUALENV_HOME" >> $SHELL_RC
    fi
    # We need our virtualenvwrapper script in there as well.
    # Damn it, I just wanted to write som python.
    if !  grep -q "virtualenvwrapper.sh" $SHELL_RC; then
        echo "source /usr/local/bin/virtualenvwrapper.sh" >> $SHELL_RC
    fi
fi

# Let's create the stinking directory already.
mkdir -p $VIRTUALENV_HOME

sudo pip install fabric ansible
