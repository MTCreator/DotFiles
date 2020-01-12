#
# ~/.bashrc
#

stty -ixon # Disable ctrl-s and ctrl-q

shopt -s autocd #Auto cd into directory

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias startx='startx ~/.config/x/xinitrc'

alias ls='ls -a --color=auto'
alias yt="youtube-dl --add-metadata -ic -o ~/Movies/%\(title\)s.%\(ext\)s" # Download video link
alias yta="youtube-dl -x --add-metadata -f bestaudio -o ~/Music/%\(title\)s.%\(ext\)s --audio-format mp3" # Download only audio
alias scrot="i3_scrot"
alias musicvisualizer="cava"
alias listorphans="echo '>yay -Qtdq' && yay -Qtdq"
alias locknsuspend="lockscreen && systemctl suspend"
alias updatetime="sudo ntpdate 1.ro.pool.ntp.org"

#old PS1 with color [mike@mikeArch folder]$
#PS1='[\[\e[31m\]\u\[\e[39m\]@\h \W]\$ '

#microsoft PS1
PS1="C:/\W>\[$(tput sgr0)\]"

if [[ $LANG = '' ]]; then
	export LANG=en_US.UTF-8
fi

#windows 95 prompt text
printf "\nMemesoft(R) LinuxOS 77\n\t(C)Copyright Memesoft Corp 1999-2019.\n\n"
