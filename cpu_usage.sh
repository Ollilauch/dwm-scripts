printf "CPU: %s" "$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}')"

case $BLOCK_BUTTON in
    1) st -t "htop" -e htop -s PERCENT_CPU ;;
    6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

