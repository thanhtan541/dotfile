#!/usr/bin/env bash
die()
select os in "macos" "window" "linux"
do
    echo "${os}"
    break
done
