#!/bin/bash

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
if [ "$CPU" -ge 80 ]; then
    echo "  CPU: ${CPU}%"
    echo "  CPU: ${CPU}%"
    echo "#ff5555"  
elif [ "$CPU" -ge 50 ]; then
    echo "  CPU: ${CPU}%"
    echo "  CPU: ${CPU}%"
    echo "#ffb86c" 
else
    echo "  CPU: ${CPU}%"  
fi