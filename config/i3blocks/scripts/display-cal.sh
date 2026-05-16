#!/bin/bash

if [ "$BLOCK_BUTTON" = "1" ]; then
    dunstify -r 2593 -u low -t 5000 'Calendar' "$(cal | sed "s/\b$(date +'%e')\b/<u>$(date +'%e')<\/u>/")"
fi

date "+   %a %d-%m-%Y"