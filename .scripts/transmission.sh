#!/bin/zsh

DWNL_DIR="/dat.mnt/Downloads"

cd $DWNL_DIR

#echo "arg1=$1"
#sudo pacman -S transmission-cli

transmission-daemon --download-dir "$DWNL_DIR"
transmission-daemon
transmission-remote -a "$1"
watch -n10 transmission-remote -l

transmission-remote -t all -r
transmission-remote -l

ls -la | grep -i $1


