#!/bin/sh

CHOICE=$(printf "Monitor Speakers\nTV Speakers" | wofi --dmenu --prompt "Audio Output")

case "$CHOICE" in
  "Monitor Speakers")
    wpctl set-default 52
    notify-send "Audio Output" "Monitor speakers selected"
    ;;
  "TV Speakers")
    wpctl set-default 53
    notify-send "Audio Output" "TV speakers selected"
    ;;
esac
