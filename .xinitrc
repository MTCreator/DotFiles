# source custom keybinds
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
# set key autorepeat rate
xset r rate 200 50
# set belgian keyboard layout
setxkbmap be
# start i3
exec i3