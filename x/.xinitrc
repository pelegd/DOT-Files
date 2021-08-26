#### AutoStart ####

# screen resolution setup
$HOME/.screenlayout/display.sh

# wallpaper setup
killall "nitrogen"
nitrogen --set-zoom-fill --restore &

# compositor
killall "picom"
picom -f &

# notification
killall "dunst"
dunst &

# Screenshots
flameshot &

#### Window Manager Startup ####
exec bspwm
# exec dwm
