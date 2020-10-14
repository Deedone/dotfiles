
case $BUTTON in
	1) setsid -f "st" -e htop ;;
esac


free --mebi | sed -n '2{p;q}' | awk '{printf ("🧠%2d%%\n", ( $3 /$2 ) * 100)}'
