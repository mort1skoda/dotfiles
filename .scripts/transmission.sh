#!/bin/zsh

DWNL_DIR="/dat.mnt/Downloads"
cd $DWNL_DIR

sudo pacman -S wget transmission-cli

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

wget https://mirros.dotsrc.org/archlinux/iso/$YEARMONTH.01/archlinux-x86_64.iso.sig
wget https://mirror.rackspace.com/archlinux/iso/$YEARMONTH.01/b2sums.txt
wget https://mirror.rackspace.com/archlinux/iso/$YEARMONTH.01/sha256sums.txt



