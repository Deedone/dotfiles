

#xrandr --output eDP1 --primary --auto 
setxkbmap us,ru -option caps:escape
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D


#	screenhelper.sh &

	twmnd  &

#	downloadshelper.sh &

#sxhkd &

compton --config=/home/ddone/.config/compton.conf &

numlockx &
nm-applet &
python ~/scripts/kbhelper.py &
feh --bg-scale ~/Images/Wallpapers/0.jpg &

telegram-desktop &

#st -t stscratch &
#status.sh &

exec i3
