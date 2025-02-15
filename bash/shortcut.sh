#!/usr/bin/env bash

function reload() {
    source ~/.zshrc
}

function edit() {
    vim ~/.zshrc
}

function init_solana_local() {
    tmux split-window -h 'solana-test-validator' && \
    tmux select-pane -t !
}

