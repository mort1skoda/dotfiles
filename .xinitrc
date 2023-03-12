#!/bin/bash

setxkbmap no &
xset -dpms &
xset s 0 0 &
xset r rate 300 50 &
swarp 1920 1600 & 
feh --bg-scale ~/Pictures/berries.jpg &
/dat.mnt/dotfiles/dwm.time.sh &

exec dwm

