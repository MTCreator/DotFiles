#
# ~/.bash_profile
#

# Profile file. Runs on login.

export PATH="$PATH:$HOME/.scripts"
#export EDITOR=""
export TERMINAL="xfce4-terminal"
export BROWSER="chromium"
export EDITOR="nano"
export PASSWORD_STORE_ENABLE_EXTENSIONS=true
#export TRUEBROWSER=""
#export READER=""

export GOPATH=$(go env GOPATH)
export PATH="$PATH:$GOPATH/bin"

[[ -f ~/.bashrc ]] && source ~/.bashrc

# Start graphical server if i3 not already running.
#if [ "$(tty)" = "/dev/tty1" ]; then
#	pgrep -x i3 || exec startx
#fi
