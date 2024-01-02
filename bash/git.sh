#!/usr/bin/env bash

# Check out feature branch based on ticket id
# git [c]heckout [b]rach
function git_cb () {
    ITEM_ID=$1

    git branch | grep $ITEM_ID | xargs git checkout
}

