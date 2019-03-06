#!/usr/bin/bash



rm /home/ddone/scripts/con-*



while read p; do
	echo "$p"
	words=($p)
	filename="/home/ddone/scripts/con-${words[0]}"
	touch "$filename"
	echo -n "#!/usr/bin/expect 
spawn ssh "	>> $filename
	for ((i = 2;i < ${#words[@]}; i++)); do
		echo -n "${words[i]} " >> $filename
	done
	echo "" >> $filename
	echo "expect \"password\"
send \"${words[1]}\r\"
interact" >> $filename
	sudo chmod +x $filename
done < /home/ddone/scripts/datacon.hidden
