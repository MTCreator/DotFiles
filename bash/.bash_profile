#
# ~/.bash_profile
#

# Profile file. Runs on login.

export LANG=en_US.UTF-8

export TERMINAL="kitty"
export BROWSER="chromium"
export EDITOR="nano"
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
#export TRUEBROWSER=""
#export READER=""

export PATH="$PATH:$HOME/scripts:$(go env GOPATH)/bin:$HOME/.local/bin"

[[ -f ~/.bashrc ]] && source ~/.bashrc
