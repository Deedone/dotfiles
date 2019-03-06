#!/usr/bin/sh
while true; do
	ls -d ~/Images/Screenshots | entr -dp sleep 0.5s;xclip -selection clipboard -t image/png -i ~/Images/Screenshots/$(ls ~/Images/Screenshots/ -t | head -n 1)
done
