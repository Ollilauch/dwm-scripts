#!/bin/zsh

ppid=$$

while [[ $(swaymsg -t get_tree) ]]; do
    if name=$(swaymsg -t get_tree | jq '.. | select(.type?) | select(.focused==false).name' | grep 'htop_mem\|cpu') >/dev/null; then
                swaymsg '[title='$name']' kill    
                break
        fi
        sleep 0.1
done &
