

printf "%s:%s %s:%s" 🏠 $(df -h /home/mpoturai | awk '/[0-9]/ {print $5}') 🖥 $(df -h / | awk '/[0-9]/ {print $5}')$
