#!/bin/sh

export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"
export XAUTHORITY="/home/ddone/.Xauthority"


if /usr/bin/task sync 
then
	/usr/bin/notify-send "Tasks synced, you have $( /usr/bin/task status:pending count ) pending tasks" -i /home/ddone/scripts/icons/sync.svg
else
	/usr/bin/notify-send "Failed suncing tasks, $( /usr/bin/task status:pending count ) pending" -i /home/ddone/scripts/icons/cross.svg
fi
