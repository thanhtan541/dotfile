#!/usr/bin/env bash

tmux new -s rs -d

while [ "$#" -gt 0 ]; do
    curr=$1
    shift

    case "$curr" in
    "-b")
        tmux neww -t rs: -n be_api -d -c "$HOME/devel/project-gits/office/backend-api"
        ;;
    "-f")
        tmux neww -t rs: -n fe_bo -d -c "$HOME/devel/project-gits/office/fe-backoffice"
        tmux neww -t rs: -n fe_cb -d -c "$HOME/devel/project-gits/office/fe-booking"
        ;;
    "-et")
        tmux neww -t rs: -n e_t -d -c "$HOME/devel/project-gits/office/email-templates"
        ;;
    *) echo "Unvailable command... $curr"
    esac
done
