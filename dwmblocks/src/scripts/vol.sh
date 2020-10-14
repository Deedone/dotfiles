#!/bin/sh

# Prints the current volume or 🔇 if muted.

case $BUTTON in
	2) pamixer -t ;;
	3) pamixer --allow-boost -i 5 ;;
	1) pamixer --allow-boost -d 5 ;;
esac

[ $(pamixer --get-mute) = true ] && echo 🔇 && exit

vol="$(pamixer --get-volume)"

if [ "$vol" -gt "70" ]; then
	icon="🔊"
elif [ "$vol" -lt "30" ]; then
	icon="🔈"
else
	icon="🔉"
fi

echo "$icon$vol%"
