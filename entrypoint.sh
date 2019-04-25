#!/usr/bin/env bash

vimDir=$PWD/vim
targetVimDir=$HOME/.vim

vimrcDir=$vimDir/vimrc
targetVimrc=$HOME/.vimrc

if [ ! -f "$vimrcDir" ]; then
    echo 'File not exist!'
else
    echo 'Setting up ....'
    ln -s "$vimrcDir" "$targetVimrc"
    ln -s "$vimDir" "$targetVimDir"
fi

echo 'Done'
