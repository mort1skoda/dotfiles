#!/bin/sh
#
setxkbmap no &
xset -dpms &
xset s 0 0 &
xset r rate 300 50 &
swarp 1910 1190 & 
_W_PAPER=$(ls /dat.mnt/Wallpapers |shuf -n1)
feh --bg-fill /dat.mnt/Wallpapers/$_W_PAPER &
#
/dat.mnt/dotfiles/scripts/dwm.sbar.time.sh &
#
#slstatus &
#
dwm
#

