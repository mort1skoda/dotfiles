#!/bin/sh
#
setxkbmap no &
xset -dpms &
xset s 0 0 &
xset r rate 300 50 &
swarp 1910 1190 & 
_WPAPER=$(ls /dat.mnt/Wallpapers/gnome |shuf -n1)

feh --bg-fill /dat.mnt/Wallpapers/gnome/$_WPAPER &

#---------
/dat.mnt/dotfiles/scripts/dwm.sbar.time.sh &
#
#slstatus &
#
dwm
#

#Wallpapers
#/dat.mnt/Wallpapers/pexels/pexels-christian-heitz-1581581.jpg
#/dat.mnt/Wallpapers/pexels/pexels-christian-heitz-842711.jpg
#corntin_20230323_190953.jpg
#

#vnc-l.webp
#symbolic-d.webp
#pixels-l.webp
#wood-l.webp
#dune-l.svg
#truchet-l.webp
#truchet-d.webp
#dune-d.svg
#wood-d.webp
#drool-l.svg
#pixels-d.webp
#field-l.svg
#symbolic-l.webp
#adwaita-d.webp
#oceans.svg
#grid-l.webp
#blobs-d.svg
#blobs-l.svg
#field-d.svg
#grid-d.webp
#licorice-l.webp
#vnc-d.webp
#adwaita-l.webp
#drool-d.svg
#licorice-d.webp
