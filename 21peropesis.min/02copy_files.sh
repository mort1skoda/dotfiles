#!/bin/sh
if [ $EUID == 0 ]
then
    echo "Copy system files from here"
    rm -v /etc/passwd
    cp -v /dat.mnt/dotfiles/21peropesis.min/etc.passwd     /etc/passwd
    rm -v /etc/sudoers
    cp -v /dat.mnt/dotfiles/21peropesis.min/etc.sudo.conf      /etc/sudo.conf
    cp -v /dat.mnt/dotfiles/21peropesis.min/etc.sudoers         /etc/sudoers
    cp -vr /dat.mnt/dotfiles/21peropesis.min/etc.sudoers.d        /etc/sudoers.d
    cp -v /dat.mnt/dotfiles/21peropesis.min/etc.sudoers.dist      /etc/sudoers.dist
    cp -v /dat.mnt/dotfiles/21peropesis.min/etc.sudo_logsrvd.conf  /etc/sudo_logsrvd.conf
fi

