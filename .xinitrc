#!/bin/bash

setxkbmap no &
xset -dpms &
xset s 0 0 &
xset r rate 250 45 &
exec dwm

