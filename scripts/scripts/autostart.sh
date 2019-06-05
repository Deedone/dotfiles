#!/usr/bin/sh

if ! ps aux | grep kbhelper | grep -v grep > /dev/null 
then
	python ~/scripts/kbhelper.py &
fi


if ! ps aux | grep screenhelper | grep -v grep > /dev/null 
then
	~/scripts/screenhelper.sh &
fi

if ! ps aux | grep libinput-gestures | grep -v grep > /dev/null
then
	libinput-gestures &
fi

if ! ps aux | grep twmnd | grep -v grep > /dev/null
then
	twmnd > /dev/null &
fi

if ! ps aux | grep downloadshelper | grep -v grep > /dev/null
then
	~/scripts/downloadshelper.sh > /dev/null &
fi
