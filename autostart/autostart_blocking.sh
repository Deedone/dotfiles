#!/bin/bash
xrandr --output DP1 --auto --right-of VGA1
feh --bg-scale ~/Images/Wallpapers/0.jpg
dwmblocks &
~/src/scripts/dynwall.sh &
dunst &
picom --config ~/.config/picom.conf 
