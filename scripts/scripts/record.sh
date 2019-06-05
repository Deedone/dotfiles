#!/bin/sh


INFO=$(xwininfo)

echo "$INFO"
W=$(echo "$INFO" | grep "Width" | grep -oP "\d+")
H=$(echo "$INFO" | grep "Height" | grep -oP "\d+")
X=$(echo "$INFO" | grep "Absolute upper-left X" | grep -oP "\d+")
Y=$(echo "$INFO" | grep "Absolute upper-left Y" | grep -oP "\d+")
NAME=$(echo "$INFO" |grep "Window id:" | grep -oP "\".+\"" | grep -oP "[^\"]+")

DUR=$(echo "5 10 15 20 25 30"| sed "s/ /\n/g" | rofi -dmenu)
echo "$W $H $X $Y $DUR"


FILENAME="/home/ddone/Images/Gifs/$(date +%F_%H:%M)_$NAME.mp4"


ffmpeg -y -f x11grab  -video_size ${W}x${H} -i :0.0+${X},${Y} -t 00:00:${DUR} $FILENAME
echo $FILENAME| xclip -selection clipboard 
notify-send "Recording done"

