#
# ~/.bash_profile
#

# Profile file. Runs on login.

export PATH="$PATH:$HOME/scripts"
#export EDITOR=""
export TERMINAL="xfce4-terminal"
export BROWSER="chromium"
export EDITOR="nano"
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
#export TRUEBROWSER=""
#export READER=""

export PATH="$PATH:$(go env GOPATH)/bin"

[[ -f ~/.config/bash/bashrc ]] && source ~/.config/bash/bashrc
