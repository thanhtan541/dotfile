#!/usr/bin/env bash

vimDir=$PWD/vim
targetVimDir=$HOME/.vim

vimrcDir=$vimDir/vimrc
targetVimrc=$HOME/.vimrc

bashDir=$PWD/bash/
targetBashDir=$HOME/.local/bash

if [ ! -f "$vimrcDir" ]; then
    echo 'File is not exist!'
else
    echo 'Setting up ....'
    ln -sF "$vimrcDir" "$targetVimrc"
    ln -sF "$vimDir" "$targetVimDir"
    ln -sF "$bashDir" "$targetBashDir"
fi

echo 'Done'
