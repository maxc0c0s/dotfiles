#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y python-pip

# Install vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install plugins
vim +PluginInstall +qall

sudo pip install -r requirements.txt

# Virtualenvwrapper dir creation.
mkdir -p ${HOME}/.virtualenvs
mkdir -p ${HOME}/Projects
