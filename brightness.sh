#!/usr/bin/zsh

argc=$#

op=$argv[1]

if [[ $argc -ge 1 ]]; then
    light $op 5 2>/dev/null
    pkill -RTMIN+5 dwmblocks 2>/dev/null
fi

printf "󰛨   %d" "$(light)"

case $BLOCK_BUTTON in 
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac
