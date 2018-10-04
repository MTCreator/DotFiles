#
# ~/.bash_profile
#

# Profile file. Runs on login.

export PATH="$PATH:$HOME/.scripts"
#export EDITOR=""
#export TERMINAL=""
#export BROWSER=""
#export TRUEBROWSER=""
#export READER=""

[[ -f ~/.bashrc ]] && source ~/.bashrc

# Start graphical server if i3 not already running.
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x i3 || exec startx
fi