#
# ~/.bashrc
#

# set vim mode for lolz
set -o vi

stty -ixon # Disable ctrl-s and ctrl-q

shopt -s autocd #Auto cd into directory

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias lse='ls_extended -l'
alias aur='aurman'
alias screenfetch='screenfetch -A Windows -D Windows'
alias neofetch='screenfetch'
alias update='aur -Syu'
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio

#old PS1 with color [mike@mikeArch folder]$
#PS1='[\[\e[31m\]\u\[\e[39m\]@\h \W]\$ '

#microsoft PS1
PS1="C:/\W>\[$(tput sgr0)\]"

#microsoft aliases
alias dir='ls -l'
alias edit='nano'
alias ver='neofetch'

# >>> Added by cnchi installer
export BROWSER=/usr/bin/chromium
export EDITOR=/usr/bin/nano

if [[ $LANG = '' ]]; then
	export LANG=en_US.UTF-8
fi

#windows 95 prompt text
printf "\nMicrosoft(R) Windows 95\n\t(C)Copyright Microsoft Corp 1981-1995.\n\n"
