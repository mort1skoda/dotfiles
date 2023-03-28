#!/bin/sh
clear

echo "/home/m ->"
ln -sf /dat.mnt/dotfiles/.bash_aliases        /home/m
ln -sf /dat.mnt/dotfiles/.bash_command_today  /home/m
ln -sf /dat.mnt/dotfiles/.bash_colors         /home/m
ln -sf /dat.mnt/dotfiles/.bash_logout         /home/m
ln -sf /dat.mnt/dotfiles/.bash_network        /home/m
ln -sf /dat.mnt/dotfiles/.bash_profile        /home/m
ln -sf /dat.mnt/dotfiles/.bashrc              /home/m
ln -sf /dat.mnt/dotfiles/.config              /home/m
ln -sf /dat.mnt/dotfiles/.tmux.conf           /home/m
ln -sf /dat.mnt/dotfiles/.vim                 /home/m
ln -sf /dat.mnt/dotfiles/.vimrc               /home/m
ln -sf /dat.mnt/dotfiles/.xinitrc             /home/m
ls -lah --color                      /home/m            |grep --color dotfiles
echo

echo "/root ->"
sudo ln -sf /dat.mnt/dotfiles/.bash_aliases        /root
sudo ln -sf /dat.mnt/dotfiles/.bash_profile   /root
sudo ln -sf /dat.mnt/dotfiles/.bashrc         /root
sudo rm -vrf /root/.config
sudo ln -sf /dat.mnt/dotfiles/.config         /root
sudo ln -sf /dat.mnt/dotfiles/.vim            /root
sudo ln -sf /dat.mnt/dotfiles/.vimrc          /root
sudo ls -lah --color                 /root              |grep --color dotfiles
echo



echo "/etc/localtime ->"
sudo ln -sf     /usr/share/zoneinfo/Europe/Oslo          /etc/localtime
ls -lah --color                                         /etc             |grep localtime
echo


echo "/etc/locale.conf ->"
sudo ln -sf     /dat.mnt/dotfiles/etc.locale.conf       /etc/locale.conf
ls -lah --color                                         /etc             |grep locale.conf
echo




echo "/etc/dhcpcd.conf ->"
sudo ln -sf      /dat.mnt/dotfiles/etc.dhcpcd.conf      /etc/dhcpcd.conf
ls -lah --color                                         /etc             |grep dhcpcd.conf
echo






echo "/etc/default/grub ->"
sudo ln -sf     /dat.mnt/dotfiles/etc.default.grub      /etc/default/grub
ls -lah --color                                         /etc/default     |grep grub
echo

echo "/etc/pacman.conf ->"
sudo ln -sf     /dat.mnt/dotfiles/etc.pacman.conf       /etc/pacman.conf
ls -lah --color                                         /etc             |grep pacman.conf
echo


echo "/usr/share/fonts ->"
sudo ln -sf     /dat.mnt/Fonts/font-ubuntu-mono-nerd   /usr/share/fonts/font-ubuntu-mono-nerd
ls -lah --color                                           /usr/share/fonts
echo

echo "/usr/local/bin ->"
sudo ln -sf     /usr/bin/firefox                        /usr/local/bin/www_browser
ls -lah --color                                          /usr/local/bin   |grep --color www_browser 
echo



echo "more home links ->"
ln -sf /dat.mnt/Documents                     /home/m
ln -sf /dat.mnt/Downloads                     /home/m
ln -sf /dat.mnt/Pictures                      /home/m
ls -lah --color                      /home/m            |grep --color Documents
ls -lah --color                      /home/m            |grep --color Downloads
ls -lah --color                      /home/m            |grep --color Pictures
echo




echo
echo
echo "Needed early by os, and therefore should not be symlinked."
sudo cp -vf     /dat.mnt/dotfiles/etc.vconsole.conf     /etc/vconsole.conf
ls -lah --color                                         /etc             |grep vconsole.conf
echo

