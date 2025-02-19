#!/usr/bin/env bash

# Check out feature branch based on ticket id
# git [c]heckout [b]rach
function git_cb () {
    ITEM_ID=$1

    echo >&2 "Executing: git branch | grep $ITEM_ID | xargs git checkout"
    git branch | grep $ITEM_ID | xargs git checkout
}

# Commit changes with message
# git [c]ommit [w]ith [m]essage
function git_cwm () {
    git commit -m "$1"
}
