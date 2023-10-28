#!/bin/sh

temp="$(sensors $1 | awk '/^Package id 0/ {print $4}'  | sed 's/+//')"

printf "CPU Temp: %s" "$temp"

case $BLOCK_BUTTON in
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac
