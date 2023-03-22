#!/bin/sh
clear
sudo ln -sf /dat.mnt/dotfiles/.aliases        /home/m
sudo ln -sf /dat.mnt/dotfiles/.aliases        /root
sudo ln -sf /dat.mnt/dotfiles/.bash_profile   /home/m
sudo ln -sf /dat.mnt/dotfiles/.bash_profile   /root
sudo ln -sf /dat.mnt/dotfiles/.bashrc         /home/m
sudo ln -sf /dat.mnt/dotfiles/.bashrc         /root
sudo ln -sf /dat.mnt/dotfiles/.vim            /home/m
sudo ln -sf /dat.mnt/dotfiles/.vimrc          /home/m
sudo ln -sf /dat.mnt/dotfiles/.xinitrc        /home/m
sudo ln -sf /usr/bin/firefox                  /usr/local/bin/www-browser
sudo ls -la --color  /etc             | grep --color dotfiles
sudo ls -la --color  /home/m          | grep --color dotfiles
sudo ls -la --color  /root            | grep --color dotfiles
sudo ls -la --color  /usr/local/bin   | grep --color www-browser
