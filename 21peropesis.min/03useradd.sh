#!/bin/sh

echo "useradd -mG wheel m  (to be run once at boot as root)"
if [ $EUID == 0 ]
then
    useradd -mG wheel m
    usermod -aG m m
    passwd m
    chown root:root /dat.mnt/mybins/bin/sudo
    chmod 4755      /dat.mnt/mybins/bin/sudo
fi

