#!/usr/bin/env bash

firefox_bin="/Applications/Firefox.app/Contents/MacOS/firefox-bin"

env=$1
case "$env" in
    "staging")
        bo_url="https://backoffice-eu.staging.roadsurfer.com"
        cb_url="https://booking-eu.staging.roadsurfer.com"
        ;;
    "uat")
        bo_url="https://backoffice-uat.staging.roadsurfer.com"
        cb_url="https://booking-uat.staging.roadsurfer.com"
        ;;
    *)
        bo_url="https://rp1-$env-backoffice.sg.dev.roadsurfer.com"
        cb_url="https://rp1-$env-booking.sg.dev.roadsurfer.com"
        ;;

esac
shift

while [ "$#" -gt 0 ]; do
    curr=$1
    shift

    case "$curr" in
        "-bo")
            $firefox_bin --new-tab $bo_url
            ;;
        "-cb")
            $firefox_bin --new-tab $cb_url
            ;;
        *) echo "Unvailable command... $curr"
    esac
done
