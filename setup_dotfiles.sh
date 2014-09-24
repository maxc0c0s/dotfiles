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
