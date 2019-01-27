# source custom keybinds
[[ -f ~/.Xmodmap ]] && xmodmap /home/mike/.Xmodmap
# set key autorepeat rate
xset r rate 200 25
# set belgian keyboard layout
setxkbmap be
# Load x settings
xrdb ~/.Xresources
# start polkit gui auth
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# start i3
exec i3
#export XKB_DEFAULT_LAYOUT=be; exec sway
