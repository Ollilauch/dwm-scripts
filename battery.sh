#!/usr/bin/zsh

declare -A ICONS
ICONS=( [10]=" " # battery empty
        [25]=" " # battery critical
        [50]=" " # battery 1/2
        [75]=" " # battery 1/3
        [100]=" " # battery full
   )

read -r capacity </sys/class/power_supply/BAT1/capacity

read -r status_bat </sys/class/power_supply/BAT1/status

if [[ $status_bat == "Charging" ]]; then
    status_icon="󱐋 "
elif [[ $status_bat == "Discharging" ]]; then
    status_icon=""
fi

for i in  "${(@k)ICONS}"; do
    if [[ $capacity -le $i ]]; then
        printf "$status_icon $ICONS[$i]    %s%%" "$capacity"
        break
    fi
done

case $BLOCK_BUTTON in 
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

