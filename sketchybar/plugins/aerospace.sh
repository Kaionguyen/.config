#!/usr/bin/env bash
source "$CONFIG_DIR/colors.sh"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME label.color=$FOUCESED
else
    sketchybar --set $NAME label.color=$UNFOCUSED
fi
