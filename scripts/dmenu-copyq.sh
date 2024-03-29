#!/usr/bin/env bash

# This script aims at showing the last 99 items stored in copyq history and to allow selection of the desired one. 
# The selection will automatically be pasted in the active window.
# There is also an option to delete entries from the history.
# Requirements: dmenu copyq

clips=()
# show the 99 last items in history
for i in {0..98}
do
	clips+=("$i $(copyq read $i | awk 'NR==1' | cut -c 1-22)") # show only the first 22 characters of each item and prepend it with a number
done

# show the clipboard in dmenu
action=$(printf '%s\n' "${clips[@]}" | dmenu -l 11)

# action on selection
case $action in
    "") ;;
    d*) copyq remove $(echo "$action" | sed 's/.//' );; # type dXX to delete item number XX
    *) line=$(echo -E "$action" | sed 's/ .*//')
       copyq -- select $line # bump the selected item on top of the list
       sleep 0.2 && copyq paste;
	esac
