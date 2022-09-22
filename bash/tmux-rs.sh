#!/usr/bin/env bash

tmux new -s rs -d

while [ "$#" -gt 0 ]; do
    curr=$1
    shift

    case "$curr" in
    "-b")
        tmux neww -t rs: -n be_api -d -c "$HOME/devel/work/backend-api"
        ;;
    "-p")
        tmux neww -t rs: -n pricing -d -c "$HOME/devel/work/pricing-microservice"
        ;;
    "-f")
        tmux neww -t rs: -n fe_bo -d -c "$HOME/devel/work/fe-backoffice"
        tmux neww -t rs: -n fe_cb -d -c "$HOME/devel/work/fe-booking"
        ;;
    "-et")
        tmux neww -t rs: -n e_t -d -c "$HOME/devel/work/email-templates"
        ;;
    *) echo "Unvailable command... $curr"
    esac
done
