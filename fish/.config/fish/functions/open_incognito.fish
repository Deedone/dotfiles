function open_incognito
	set url (echo (xclip -o) | sed -r -n "/(http\S+)/p")
if test -n "$url"
firefox --private-window "$url"
end
end
