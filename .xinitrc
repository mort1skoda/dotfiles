#!/bin/bash
#
setxkbmap no &
xset -dpms &
xset s 0 0 &
xset r rate 300 50 &
swarp 1920 1200 & 
feh --bg-fill /dat.mnt/Wallpapers/gnome/licorice-d.webp &
/dat.mnt/dotfiles/dwm.time.sh &
#
dwm
#

