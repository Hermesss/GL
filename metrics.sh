#!/bin/bash

if [[ $1 == cpu ]]; then

    cpu="$(cat /proc/stat | grep -w cpu | cut --complement -f1 -d' ')"
    timesum="$(echo $cpu | awk -F ' ' 'BEGIN {sum=0} {for (i = 1; i <= NF; i++) sum+=$i} END {print sum}')"

    user="$(echo $cpu | cut -f1 -d' ')"
    nice="$(echo $cpu | cut -f2 -d' ')"
    system="$(echo $cpu | cut -f3 -d' ')"
    idle="$(echo $cpu | cut -f4 -d' ')"
    iowait="$(echo $cpu | cut -f5 -d' ')"
    irq="$(echo $cpu | cut -f6 -d' ')"
    softirq="$(echo $cpu | cut -f7 -d' ')"
    stolen="$(echo $cpu | cut -f8 -d' ')"
    guest="$(echo $cpu | cut -f9 -d' ')"
    guest_nice="$(echo $cpu | cut -f10 -d' ')"
    echo system.cpu.idle $( echo "scale=1; ((($idle * 100 ) / $timesum))"  | bc | awk '{printf "%.1f", $0}' )
    echo system.cpu.user $( echo "scale=1; ((($user * 100 ) / $timesum))"  | bc | awk '{printf "%.1f", $0}' )
    echo system.cpu.guest $( echo "scale=1; ((($guest * 100 ) / $timesum))"  | bc | awk '{printf "%.1f", $0}' )
    echo system.cpu.iowait $( echo "scale=1; ((($iowait * 100 ) / $timesum))"  | bc | awk '{printf "%.1f", $0}' )
    echo system.cpu.stolen $( echo "scale=1; ((($stolen * 100 ) / $timesum))"  | bc | awk '{printf "%.1f", $0}' )
    echo system.cpu.system $( echo "scale=1; ((($system * 100 ) / $timesum))"  | bc | awk '{printf "%.1f", $0}' )

else
    echo "Usage: accepted params cpu or memory"
fi
