#!/bin/sh
clear
ln -sf /dat.mnt/dotfiles/.aliases        /home/m
ln -sf /dat.mnt/dotfiles/.bash_logout    /home/m
ln -sf /dat.mnt/dotfiles/.bash_profile   /home/m
ln -sf /dat.mnt/dotfiles/.bashrc         /home/m
ln -sf /dat.mnt/dotfiles/.config         /home/m
ln -sf /dat.mnt/dotfiles/.tmux.conf      /home/m
ln -sf /dat.mnt/dotfiles/.vim            /home/m
ln -sf /dat.mnt/dotfiles/.vimrc          /home/m
ln -sf /dat.mnt/dotfiles/.xinitrc        /home/m
ls -la --color  /etc             | grep --color dotfiles
ls -la --color  /home/m          | grep --color dotfiles
ls -la --color  /usr/local/bin   | grep --color www-browser
sudo ln -sf /dat.mnt/dotfiles/.aliases        /root
sudo ln -sf /dat.mnt/dotfiles/.bash_profile   /root
sudo ln -sf /dat.mnt/dotfiles/.bashrc         /root
sudo ln -sf /dat.mnt/dotfiles/.config         /root
sudo ln -sf /dat.mnt/dotfiles/.vim            /root
sudo ln -sf /dat.mnt/dotfiles/.vimrc          /root
sudo ln -sf /usr/bin/firefox                  /usr/local/bin/www-browser
sudo ls -la --color  /root           | grep --color dotfiles
