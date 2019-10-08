#!/usr/bin/env bash

function death_to_port() {
    echo "Freedom for port $1"
    lsof -t -i tcp:$1 | xargs kill
}
