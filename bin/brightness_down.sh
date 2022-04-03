#!/bin/bash

brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
brightness=$(expr $brightness - 10000)

echo $brightness > /sys/class/backlight/intel_backlight/brightness

