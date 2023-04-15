#!/bin/sh
echo "Copy system files from here"
rm -v /etc/passwd
cp -v /dat.mnt/dotfiles/21peropesis.min/etc.passwd   /etc/passwd
rm -v /etc/sudoers
cp -v /dat.mnt/dotfiles/21peropesis.min/etc.sudoers  /etc/sudoers

