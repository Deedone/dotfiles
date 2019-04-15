rm -f /tmp/locked.png


[ -f /usr/bin/corrupter ] &&
scrot -m -z /tmp/base.png &&
corrupter -mag 2 -boffset 5 /tmp/base.png /tmp/locked.png

i3lock -e -f -c 000000 -i /tmp/locked.png
