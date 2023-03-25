#!/bin/sh
#
setxkbmap no &
xset -dpms &
xset s 0 0 &
xset r rate 300 50 &
swarp 1910 1190 & 
feh --bg-fill /dat.mnt/Wallpapers/gnome/wood-d.webp &
/dat.mnt/dotfiles/scripts/dwm.sbar.time.sh &
#
dwm
#

#Wallpapers
#/dat.mnt/Wallpapers/pexels-christian-heitz-1581581.jpg
#pexels-christian-heitz-842711.jpg
