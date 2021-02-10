# The following lines were added by compinstall
# 

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}'
zstyle :compinstall filename '/home/mpoturai/.zshrc'
fpath=(~/.zsh/compl $fpath)

autoload -U compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.local/share/zshhist
HISTSIZE=100000
SAVEHIST=100000
PROMPT="%F{red}%n%f %F{green}%~%f > "
setopt autocd extendedglob
setopt nocorrectall
bindkey -v
# End of lines configured by zsh-newuser-install
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name '' # group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # enable approximate matches for completion


export FrameworkPathOverride=/usr/lib/mono/msbuild/Current/bin
alias ls="exa"
alias bc=bc -l
alias vim=nvim
alias vm="qemu-system-aarch64 -cpu cortex-a57 -machine type=virt -m 2G -kernel /home/mpoturai/src/linux/arch/arm64/boot/Image -append \"mem=512M,console=ttyAMA0,115200  root=/dev/nfs nfsroot=172.22.89.39:/home/mpoturai/rfs_board rw init=/sbin/init ip=10.0.2.15::10.0.2.2:255.255.255.0  \" -nographic"
alias notes="nvim ~/.notes"
alias kcheckpatch="~/src/linux/scripts/checkpatch.pl"
alias vifm="vifmrun"
export BUILD_BOOTLOADERS=true
export TERM=xterm-256color
export EDITOR=nvim
alias grep='grep --color=auto'
export USE_CCACHE=1
export CCACHE_DIR=/home/mpoturai/mnt/ccache
export CCACHE_EXEC=`which ccache`


export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias rgrep="grep -r"
alias rgrepi="grep -ir"



source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-fsh/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/notify/notify.plugin.zsh
source ~/.zsh/zsh-256color.plugin.zsh
source ~/.zsh/color.zsh

export SOONG_GEN_COMPDB=1
export SOONG_GEN_COMPDB_DEBUG=1
export ALLOW_MISSING_DEPENDENCIES=true
function movessd {
	mkdir -p /home/mpoturai/src/external
	mv "$1" /home/mpoturai/src/external -v
	ln -vs "/home/mpoturai/src/external/$1" "./$1"
}

