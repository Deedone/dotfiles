#!/usr/bin/sh


chosen="$(find Downloads -maxdepth 1 -type f -printf "%f\n" |grep pdf| rofi -dmenu)"

if [ -f "/home/ddone/Downloads/$chosen" ]
then
	xdg-open "/home/ddone/Downloads/$chosen"
fi
