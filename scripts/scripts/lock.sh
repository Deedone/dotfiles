rm -f /tmp/locked.png


[ -f /usr/bin/convert ] &&
scrot -m -z /tmp/base.png &&
convert /tmp/base.png -filter Gaussian -resize 25% \
          -define filter:sigma=2.5 -resize 400% /tmp/locked.png

i3lock -e -f -c 000000 -i /tmp/locked.png
