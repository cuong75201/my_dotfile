BRIGHT=$(brightnessctl get)
MAX=$(brightnessctl max)
PCT=$((BRIGHT * 100 / MAX))

if [ "$PCT" -ge 70 ]; then
    ICON=$'󰃠'   # 
elif [ "$PCT" -ge 30 ]; then
    ICON=$'󰃟'   # 
else
    ICON=$'󰃞'   # 
fi

echo "${ICON}   ${PCT}%"  