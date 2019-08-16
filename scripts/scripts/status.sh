#!/bin/bash
xsetroot -name "Hellou"


delim="|"

status(){\
	amixer get Master | grep -o "[0-9]*%\|\[on\]\|\[off\]" | sed "s/\[on\]/ VOL/;s/\[off\]/MUTE/"

	echo $delim
	top -bn1 | grep Cpu\(s\): | sed -E "s/.+, ([0-9.]+) id.+/\1/" | awk '{printf "%3.0f%%\n", 100 - $1}'
	echo "CPU"
	echo $delim
	free -m | grep Mem | awk '{printf "%3.0f%%\n",$3/$2 * 100}'
	echo "MEM"
	echo $delim
	sed  -E "s/0{1,3}$//" /sys/devices/platform/coretemp.0/hwmon/hwmon2/temp1_input
	echo "TEMP"
	echo $delim

	xkb-switch
	echo $delim
	date +%T

}





while :; do
	# So all that big status function was just a command that quicking gets
	# what we want to be the statusbar. This xsetroot command is what sets
	# it. Note that the tr command replaces newlines with spaces. This is
	# to prevent some weird issues that cause significant slowing of
	# everything in dwm. Note entirely sure of the cause, but again, the tr
	# command easily avoids it.
	xsetroot -name "$(status | tr '\n' ' ')"

	# Check to see if new weather report is needed.

	# Sleep for a minute after changing the status bar before updating it
	# again. Note that the `refbar` "refreshes" the statusbar by killing
	# this command. Feel free to change the time interval if you want.
	sleep 5s
done
