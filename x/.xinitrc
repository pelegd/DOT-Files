#### AutoStart ####

# screen resolution setup
$HOME/.screenlayout/display.sh

setxkbmap us,il -option grp:alt_shift_toggle &
xsetroot -cursor_name -left_ptr &

# wallpaper setup
killall "nitrogen"
nitrogen --set-zoom-fill --restore &

# compositor
killall "picom"
picom -f &

# notification
killall "dunst"
dunst &


#### Window Manager Startup ####
exec bspwm
# exec dwm
