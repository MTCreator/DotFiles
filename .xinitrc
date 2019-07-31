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

# Default
session=${1:-i3}

case $session in
    i3|i3wm           ) exec i3;;
    sway|swaywm       ) export XKB_DEFAULT_LAYOUT=be; exec sway;;
    awesome           ) exec awesome;;
    # No known session, try to run it as command
    *                 ) exec $1;;
esac

