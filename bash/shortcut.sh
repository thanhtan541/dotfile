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

        tmux split-window -h 'solana-test-validator -l ./tmp/test-ledger' && \
        tmux select-pane -t !
    else
        echo "Please create tmp directory"
    fi
}

