#
# ~/.bashrc
#

# set vim mode for lolz
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias lse='ls_extended -l'
alias auru='aurman -Syu'
alias screenfetch='screenfetch -A Windows'
alias neofetch='screenfetch'
alias update='auru'

#RMarkDown to pdf
rmdcompile() { echo "require(rmarkdown);render(\"$1\")" | R --vanilla; }

#old PS1 with color [mike@mikeArch folder]$
#PS1='[\[\e[31m\]\u\[\e[39m\]@\h \W]\$ '

#microsoft PS1
PS1="C:/\W>\[$(tput sgr0)\]"

#microsoft aliases
alias dir='ls -l'
alias edit='nano'
alias ver='neofetch'

# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano


#windows 95 prompt text
printf "\nMicrosoft(R) Windows 95\n\t(C)Copyright Microsoft Corp 1981-1995.\n\n"
