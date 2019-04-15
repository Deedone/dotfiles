set -x VISUAL nvim
set -x EDITOR nvim
set -x TERM xterm-256color
set -x TERMINAL st
set -x -a PATH $HOME/scripts
set -x MONITOR eDP1
set -x XDG_CONFIG_HOME /home/ddone/.config
set fish_greeting

alias vim="nvim"
alias la="exa -a"
alias ls="exa"
alias xclip="xclip -selection clipboard"

abbr -a sp "sudo pacman"
abbr -a ss "sudo systemctl"
abbr -a mm "sudo xrandr --output eDP1 --primary --auto --output DP1 --auto --left-of eDP1"
abbr -a bg "feh --bg-scale ~/Images/Wallpapers/0.jpg"
abbr -a xo "xdg-open"
abbr -a targz "tar -czvf archive.tar.gz "

source ~/.cargo/env



set -x LESS "--RAW-CONTROL-CHARS"
# Use colors for less, man, etc.
#
set -x LESS_TERMCAP_mb (tput bold; tput setaf 2) # green
set -x LESS_TERMCAP_md (tput bold; tput setaf 6) # cyan
set -x LESS_TERMCAP_me (tput sgr0)
set -x LESS_TERMCAP_so (tput bold; tput setaf 3; tput setab 4) # yellow on blue
set -x LESS_TERMCAP_se (tput rmso; tput sgr0)
set -x LESS_TERMCAP_us (tput smul; tput bold; tput setaf 7) # white
set -x LESS_TERMCAP_ue (tput rmul; tput sgr0)
set -x LESS_TERMCAP_mr (tput rev)
set -x LESS_TERMCAP_mh (tput dim)
set -x LESS_TERMCAP_ZN (tput ssubm)
set -x LESS_TERMCAP_ZV (tput rsubm)
set -x LESS_TERMCAP_ZO (tput ssupm)
set -x LESS_TERMCAP_ZW (tput rsupm)

function sudo
	if test "$argv" = !!
		echo "sudo "(echo $history[1])
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

