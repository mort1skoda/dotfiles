#!/bin/sh

echo "useradd -mG wheel m  (to be run once at boot as root)"
if [ $EUID == 0 ]
then
    useradd -mG wheel m
    passwd m
    chown root:root /dat.mnt/mybins/bin/sudo
    chmod root:root 4755 /dat.mnt/mybins/sudo
fi

