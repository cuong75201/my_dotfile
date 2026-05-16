#!/bin/bash

    VOL=$(pamixer --get-volume)
    MUTE=$(pamixer --get-mute)

    if [ "$MUTE" = "true" ]; then
        ICON=$'\uf466'
        echo "${ICON}   muted"
        echo "${ICON}   gmuted"
        echo "#ff5555"
    elif [ "$VOL" -ge 70 ]; then
        ICON=$'\uf028'
        echo "${ICON}   ${VOL}%"
    elif [ "$VOL" -le 20 ]; then
        ICON=$'\uf026'
        echo "${ICON}   ${VOL}%"
        echo "${ICON}   ${VOL}%"
        echo "#ff5555"
    else
        ICON=$'\uf027'
        echo "${ICON}   ${VOL}%"
    fi