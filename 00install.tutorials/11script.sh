#!/bin/sh
echo
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
ls -gGahl --color /etc | grep --color locale.gen	
bat /etc/locale.gen
locale-gen

echo
echo "LANG=en_US.UTF-8" > /etc/locale.conf
ls -gGahl --color /etc | grep --color locale.conf
bat /etc/locale.conf

echo
echo "KEYMAP=no" > /etc/vconsole.conf
ls -gGahl --color /etc | grep --color vconsole.conf
bat /etc/vconsole.conf

echo
echo "noarp" >> /etc/dhcpcd.conf
ls -gGahl --color /etc | grep --color dhcpcd.conf
bat /etc/dhcpcd.conf

echo
systemctl enable dhcpcd


