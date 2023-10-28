#!/bin/zsh

SPEEDTEST="$(speedtest-cli --simple)"

UPLOAD="󰕒   $(echo $SPEEDTEST | grep -oP '(?<=Upload:\s).+(\w+)')"
DOWNLOAD="󰇚   $(echo $SPEEDTEST | grep -oP '(?<=Download:\s).+(\w+)')"

case $BLOCK_BUTTON in
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

printf "%s      %s\n" "$UPLOAD" "$DOWNLOAD"

