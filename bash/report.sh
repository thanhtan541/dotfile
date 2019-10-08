#!/usr/bin/env bash
function weather() {
   curl -s 'wttr.in/?format=4'
}

function bluetooth_device_battery() {
    ioreg -r -l -k "BatteryPercent" | grep -i battery
}
