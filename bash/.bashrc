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

#PS1
PS1="[\u@\h \w]\\$\[$(tput sgr0)\]"

printf "\n"
shuf -n 1 ~/.config/bash_headlines
printf "\n"
task simple
# printf "\n"
