#!/bin/bash
#
setxkbmap no &
xset -dpms &
xset s 0 0 &
xset r rate 300 50 &
swarp 1920 1200 & 
feh --bg-scale ~/Pictures/gruvbox/autumn.leaf.jpg &
/dat.mnt/dotfiles/dwm.time.sh &
#
dwm
#
#nf
#
# run bash cmd / script on X exit
#

