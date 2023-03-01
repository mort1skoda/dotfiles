#!/bin/zsh

DWNL_DIR="/dat.mnt/Downloads"
cd $DWNL_DIR

#sudo pacman -S wget transmission-cli

YEARMONTH=$(date +"%Y.%m")
echo 'YEARMONTH='$YEARMONTH
echo 'wget https://archlinux.org/releng/releases/'$YEARMONTH'.01/torrent/'
echo
wget https://archlinux.org/releng/releases/$YEARMONTH.01/torrent/
mv index.html arch-$YEARMONTH-iso.torrent
ls -la

transmission-remote -t all -r

transmission-daemon --download-dir "$DWNL_DIR"
transmission-daemon
transmission-remote -a "arch-$YEARMONTH-iso.torrent"

#watch -n10 transmission-remote -l

#transmission-remote -t all -r
#transmission-remote -l
#
#ls -la | grep -i $1


