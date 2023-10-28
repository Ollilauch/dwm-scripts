#!/bin/zsh

# check if either spotify-qt or firefox are active and are playing and set player
# TODO change to playerctl -a and select dynamically

if [[ $(playerctl -p spotify-qt metadata -f '{{status}}') == "Playing" ]]; then
    player="spotify-qt"
elif [[ $(playerctl -p firefox metadata -f '{{status}}') == "Playing" ]]; then
    player="firefox"
else
    exit
fi

printf "   $(playerctl -p $player metadata -f '{{trunc(artist, 13)}}  -  {{title}}')"

case $BLOCK_BUTTON in 
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac
