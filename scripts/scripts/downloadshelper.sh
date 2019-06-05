#!/usr/bin/sh

while true; do
	ls -d /home/ddone/Downloads | entr -dp convertToPDF.sh /home/ddone/Downloads
done
