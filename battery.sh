#!/usr/bin/bash

declare -A ICONS
ICONS=( [10]="  " # battery empty
        [25]="  " # battery critical
        [50]="  " # battery 1/2
        [75]="  " # battery 1/3
        [100]="  " # battery full
   )

read -r capacity </sys/class/power_supply/BAT1/capacity

if [ $capacity -le 10 ]; then
    printf "${ICONS[10]}    %s%%" "$capacity"
elif [ $capacity -le 25 ]; then
    printf "${ICONS[25]}    %s%%" "$capacity"
elif [ $capacity -le 50 ]; then
    printf "${ICONS[50]}    %s%%" "$capacity"
elif [ $capacity -le 75 ]; then
    printf "${ICONS[75]}    %s%%" "$capacity"
elif [ $capacity -le 100 ]; then
    printf "${ICONS[100]}   %s%%" "$capacity"
fi

