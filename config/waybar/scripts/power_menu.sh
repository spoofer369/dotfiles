#!/bin/bash

choice=$(echo -e " Power Off\n Reboot\n Suspend\n Lock\n Cancel" | wofi --dmenu --width 200 --height 200 --prompt "Power Menu")

case "$choice" in
    " Power Off") systemctl poweroff ;;
    " Reboot") systemctl reboot ;;
    " Suspend") systemctl suspend ;;
    " Lock") hyprlock ;;
    *) exit 0 ;;
esac

