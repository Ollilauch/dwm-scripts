#!/bin/zsh
printf "%s  " "$(date '+%a, %b %d, %R')"

case $BLOCK_BUTTON in 
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac
