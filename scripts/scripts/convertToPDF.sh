#!/usr/bin/sh

export IFS=$'\n'
for f in $(ls ~/Downloads | grep -E "docx?" )
do
	echo "$f"
	pdf="$(echo "$f" | sed -E "s/docx?/pdf/")"
	if ! [ -f "$1/$pdf" ]
	then
		if libreoffice --headless --convert-to pdf "$1/$f" --outdir "$1"
		then
			notify-send "$f > $pdf"
		else
			notify-send "Error converting $f to PDF"
		fi
	fi
done
