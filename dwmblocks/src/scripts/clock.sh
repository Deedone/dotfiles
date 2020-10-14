

FMTFILE=/tmp/clockfmt

if [ ! -f $FMTFILE ]
then
	printf "%%H:%%M:%%S" > $FMTFILE
fi

case $BUTTON in
	1 )
		printf "%%H:%%M:%%S" > $FMTFILE;;
	3 )
		printf "%%d/%%m/%%y %%H:%%M:%%S" > $FMTFILE;;
esac

clock=$(date '+%I')

case "$clock" in
	"00") icon="🕛" ;;
	"01") icon="🕐" ;;
	"02") icon="🕑" ;;
	"03") icon="🕒" ;;
	"04") icon="🕓" ;;
	"05") icon="🕔" ;;
	"06") icon="🕕" ;;
	"07") icon="🕖" ;;
	"08") icon="🕗" ;;
	"09") icon="🕘" ;;
	"10") icon="🕙" ;;
	"11") icon="🕚" ;;
	"12") icon="🕛" ;;
esac


echo $(date +"$(cat $FMTFILE)") $icon
