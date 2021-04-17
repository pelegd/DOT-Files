#!/bin/bash
# This will setup the screen resolution on logon screen
# In LightDM

mode="$(xrandr -q|grep -A1 "VGA1 connected"| tail -1 |awk '{ print $1 }')"
if [ -n "$mode" ]; then
  xrandr --output LVDS1 --off
  xrandr --output VGA1 --primary --mode 1920x1080
fi
