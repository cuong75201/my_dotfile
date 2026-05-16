#!/bin/bash

BAT=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [ "$STATUS" = "Charging" ]; then
    ICON=$'\uf0e7'   # 
elif [ "$BAT" -ge 80 ]; then
    ICON=$'\uf240'   # 
elif [ "$BAT" -ge 60 ]; then
    ICON=$'\uf241'   # 
elif [ "$BAT" -ge 40 ]; then
    ICON=$'\uf242'   # 
elif [ "$BAT" -ge 20 ]; then
    ICON=$'\uf243'   # 
else
    ICON=$'\uf244'   # 
fi

if [ "$BAT" -le 20 ] && [ "$STATUS" != "Charging" ]; then
    echo "${ICON}   ${BAT}%"
    echo "${ICON}   ${BAT}%"
    echo "#ff5555"
else
    echo "${ICON}   ${BAT}%"
fi