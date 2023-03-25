#!/bin/sh
clear

echo "/home/m ->"
ln -sf /dat.mnt/dotfiles/.aliases             /home/m
ln -sf /dat.mnt/dotfiles/.bash_logout         /home/m
ln -sf /dat.mnt/dotfiles/.bash_profile        /home/m
ln -sf /dat.mnt/dotfiles/.bashrc              /home/m
ln -sf /dat.mnt/dotfiles/.config              /home/m
ln -sf /dat.mnt/dotfiles/.tmux.conf           /home/m
ln -sf /dat.mnt/dotfiles/.vim                 /home/m
ln -sf /dat.mnt/dotfiles/.vimrc               /home/m
ln -sf /dat.mnt/dotfiles/.xinitrc             /home/m
ls -la --color                                /home/m               | grep --color lrw
echo

echo "/root ->"
sudo ln -sf /dat.mnt/dotfiles/.aliases        /root
sudo ln -sf /dat.mnt/dotfiles/.bash_profile   /root
sudo ln -sf /dat.mnt/dotfiles/.bashrc         /root
sudo ln -sf /dat.mnt/dotfiles/.config         /root
sudo ln -sf /dat.mnt/dotfiles/.vim            /root
sudo ln -sf /dat.mnt/dotfiles/.vimrc          /root
sudo ls -la --color                           /root                 | grep --color lrw
echo


echo "/etc/default/grub ->"
sudo ln -sf     /dat.mnt/dotfiles/etc.default.grub   /etc/default/grub
ls -lah --color                                      /etc/default   |grep grub
echo

echo "/etc/pacman.conf ->"
sudo ln -sf     /dat.mnt/dotfiles/etc.pacman.conf    /etc/pacman.conf
ls -lah --color                                      /etc           |grep pacman.conf
echo

echo "/etc/vconsole.conf ->"
sudo ln -sf     /dat.mnt/dotfiles/etc.vconsole.conf  /etc/vconsole.conf
ls -lah --color                                      /etc           |grep vconsole.conf
echo


echo "/usr/share/fonts ->"
sudo ln -sf     /dat.mnt/dotfiles/font-ubuntu-mono-nerd /usr/share/fonts
ls -lah --color                                         /usr/share/fonts |grep font    
echo


echo "/usr/bin/firefox ->"
sudo ln -sf     /usr/bin/firefox                        /usr/local/bin/www_browser
ls -lh --color                                          /usr/local/bin |grep --color rwx 
echo

