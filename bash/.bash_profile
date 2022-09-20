#
# ~/.bash_profile
#

# Profile file. Runs on login.

export LANG=en_US.UTF-8

export PATH="$PATH:$HOME/scripts"
export TERMINAL="kitty"
export BROWSER="chromium"
export EDITOR="nano"
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
#export TRUEBROWSER=""
#export READER=""

export PATH="$PATH:$(go env GOPATH)/bin"

[[ -f ~/.bashrc ]] && source ~/.bashrc
