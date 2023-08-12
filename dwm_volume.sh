#!/usr/bin/zsh

argc=$#

op=$argv[1]

if [[ $op = "-t" ]]; then
    pamixer $op 2>/dev/null
    pkill -RTMIN+6 dwmblocks 2>/dev/null
fi

if [[ $op = "-i" ]] || [[ $op = "-d" ]]; then
    pamixer $op 5 2>/dev/null
    pkill -RTMIN+6 dwmblocks 2>/dev/null
fi

if [[ $(pamixer --get-mute) = "false" ]]; then
    printf "        %d\n" "$(pamixer --get-volume)"
fi

if [[ $(pamixer --get-mute) = "true" ]]; then
    printf "        %d\n" "$(pamixer --get-volume)"
fi
