//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "~/src/scripts/vol.sh",					10,		4},
	{"", "~/src/scripts/mem.sh",					10,		1},
	{"", "~/src/scripts/cpubar.sh",					1,		5},
	{"", "~/src/scripts/disk.sh",					60,		3},
	{"", "~/src/scripts/clock.sh",					5,		2},
	
	///{"🧠", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},

	///{"", "~/bin/statusbar/volume",						0,		10},
///
	///{"☀", "xbacklight | sed 's/\\..*//'",					0,		11},
	
	///{"", "~/bin/statusbar/battery",						5,		0},

	///{"🌡", "sensors | awk '/^temp1:/{print $2}'",				5,		0},

	///{"", "~/bin/statusbar/clock",						5,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
