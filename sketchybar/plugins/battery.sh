#!/bin/sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100) ICON="" COLOR="0xff83be8c"
  ;;
  [6-8][0-9]) ICON="" COLOR="0xff97b67c"
  ;;
  [3-5][0-9]) ICON="" COLOR="0xffebcb8b"
  ;;
  [1-2][0-9]) ICON="" COLOR="0xffb74e58"
  ;;
  *) ICON="" COLOR="0xffb74e58"
esac

if [[ "$CHARGING" != "" ]]; then
  ICON="" COLOR="0xff83be8c"
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
# sketchybar --set "$NAME" icon="$ICON" icon.color="0xff97b67c" label="${PERCENTAGE}%"
sketchybar --set "$NAME" icon="$ICON" icon.color="$COLOR" label="${PERCENTAGE}%"
