printf "Mem: %s" "$(free -h | awk '/^Mem: /{ print $3 }')"

case $BLOCK_BUTTON in
    1) st -t "htop" -e htop -s PERCENT_MEM ;;
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

