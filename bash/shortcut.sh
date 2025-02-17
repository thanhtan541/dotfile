#!/usr/bin/env bash

function reload() {
    source ~/.zshrc
}

function edit() {
    vim ~/.zshrc
}

function init_solana_local() {
    if [ -d "./tmp" ]; then
        echo "Setting up test-ledger in tmp directory"

        tmux split-window -h 'solana-test-validator --reset -l ./tmp/test-ledger' && \
        tmux select-pane -t !
    else
        echo "Please create tmp directory"
    fi
}

# -n is force to open new instance
# Fixme: find a way to check the current profile instance running
# before using -n
function chrome_default() {
    open -n -a "Google Chrome" --args --profile-directory=Default
}

function chrome_tan() {
    open -n -a "Google Chrome" --args --profile-directory="Profile 1"
}
