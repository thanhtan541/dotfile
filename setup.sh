#!/usr/bin/env bash

vimDir=$PWD/vim/
targetVimDir=$HOME/.vim

vimrcDir=$PWD/vim/vimrc
targetVimrc=$HOME/.vimrc

bashDir=$PWD/bash/
targetBashDir=$HOME/.local/bash

if [ ! -f "$vimrcDir" ]; then
    echo 'File is not exist!'
else
    echo 'Setting up ....'
    ln -sF "$vimrcDir" "$targetVimrc"
    ln -sF "$vimDir" "$targetVimDir"
    ln -sF "$bashDir/*.sh" "$targetBashDir"
fi

echo 'Done'
