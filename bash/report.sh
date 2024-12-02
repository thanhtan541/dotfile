#!/usr/bin/env bash
function weather() {
   curl -s 'wttr.in/?format=4'
}

function bluetooth_device_battery() {
    ioreg -r -l -k "BatteryPercent" | grep -i battery
}

function show_os_info() {
    unameOUT="$(uname -s)"
    echo "$unameOUT"
    if [ "$unameOut" = "Linux" ]; then
        cat /etc/os-release
    elif [ "$unameOut" = "Darwin" ]
    then
        sw_vers
    else
        echo "Something else"
    fi
}

function show_dns_servers() {
    scutil --dns | grep 'nameserver\[[0-9]*\]'
}
