#!/usr/bin/zsh

argc=$#

if [[ argc -ge 1 ]]; then
    op=$argv[1]

    if [[ $op == "-t" ]]; then
        pamixer $op 2>/dev/null
        pkill -RTMIN+6 dwmblocks

    elif [[ $op == "-i" ]] || [[ $op == "-d" ]]; then
        pamixer $op 5 2>/dev/null
        pkill -RTMIN+6 dwmblocks
    fi

elif [[ argc -lt 1 ]]; then

    if [[ $(pamixer --get-mute) == "false" ]]; then
        printf "    %d%%" "$(pamixer --get-volume)"


    elif [[ $(pamixer --get-mute) == "true" ]]; then
        printf "    %d%%" "$(pamixer --get-volume)"

    fi
fi

case $BLOCK_BUTTON in 
    1) "$(pamixer -t; pkill -RTMIN+6 dwmblocks)" ;;
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac


