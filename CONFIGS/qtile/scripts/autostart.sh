#!/bin/bash
picom &
xrandr -s 1920x1080 -r 75 
xset s off
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
