#!/bin/sh

setxkbmap no &
xset -dpms &
xset s 0 0 &
xset r rate 300 50 &
swarp 1300 1190 & 
_W_PAPER=$(ls /dat.mnt/Wallpapers |shuf -n1)
#feh --bg-fill /dat.mnt/Wallpapers/$_W_PAPER &
feh --bg-max /dat.mnt/Wallpapers/$_W_PAPER &
#feh --bg-fill /dat.mnt/Wallpapers/online* &
#
/dat.mnt/dotfiles/scripts/dwm.sbar.time.sh &
#
export _GUI="true"
#
setxkbmap no &
#sleep 1
dwm
#

