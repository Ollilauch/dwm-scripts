#!/usr/bin/zsh
ESSID=$(iwconfig wlan0 | grep -oP '"\K[^"]+')

ICONS=" " #connected

printf "$ICONS   %s\n" "$ESSID"

case $BLOCK_BUTTON in
    1) st -t "nmtui" -e nmtui;;
    3) notify-send "Connected Network: " "$ESSID";;
esac
