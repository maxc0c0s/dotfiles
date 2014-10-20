#!/usr/bin/env bash


DOT_FILE_LIST="bashrc vimrc gitconfig" # .file names without the dot.
DOT_BACK="${HOME}/.dotfiles_backup"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ${DOT_BACK}

for file in $DOT_FILE_LIST;
do
    mv ~/.$file ${DOT_BACK}
    ln -s $DIR/$file ~/.$file
done

# Install vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install plugins
vim +PluginInstall +qall

# Virtualenvwrapper dir creation.
mkdir -p ${HOME}/.virtualenvs
mkdir -p ${HOME}/Projects
source ~/.bashrc
