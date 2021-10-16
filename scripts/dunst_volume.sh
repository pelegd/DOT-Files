#!/usr/bin/env bash

# dunst_volume: use dunst as a volume indicator
# This script uses dunst to display your volume level.
# Features:
# show a volume level notification (with a progress bar)
# execute pulseeffects on mouse click on the notification
#
# Requirements:
# dunst
# ponymix to show the volume info
# (optional) pulseeffects


#make sure the script process and dunst notification are killed after 2 seconds
{
    sleep 2s
    dunstify -C 1
    killall dunstify
    kill $$
} &

cur=$(ponymix get-volume)

ITEMS="10" # The total number of items(the width of the bar)
FILLED_ITEM="▣" # The look of a filled item 
NOT_FILLED_ITEM="▢" # The look of a not filled item
STATUS=$(echo "$cur/10" | bc) # The current progress status in percent

# calculate how many items need to be filled and not filled
FILLED_ITEMS=$(echo "(${ITEMS} * ${STATUS})/10" | bc)
NOT_FILLED_ITEMS=$(echo "$ITEMS - $FILLED_ITEMS" | bc)

# Assemble the bar string
msg=$(printf "%${FILLED_ITEMS}s" | sed "s| |${FILLED_ITEM}|g")
msg=${msg}$(printf "%${NOT_FILLED_ITEMS}s" | sed "s| |${NOT_FILLED_ITEM}|g")

# Execute pulseeffects on mouse-click on the notification
if [ "$(amixer sget Master,0 | awk 'NR==5 {print $5}')" == "[on]" ] || [ "$(amixer sget Master,0 | awk 'NR==6 {print $6}')" == "[on]" ]; then
    ACTION=$(dunstify -r 1 --action="default,Reply" "$msg $cur%")
    case "$ACTION" in
	"default")
	    pulseeffects
	    ;;
    esac
else
    dunstify -r 1 "off"
fi
