#!/bin/bash

# to run:
# /dat.mnt/dotfiles/create.symlinks.sh
# do NOT run as root, run as a regular user!

ln -svf /dat.mnt/dotfiles/.config        ~
ln -svf /dat.mnt/dotfiles/install.readme ~
ln -svf /dat.mnt/dotfiles/.vifm          ~
ln -svf /dat.mnt/dotfiles/.vim           ~
ln -svf /dat.mnt/dotfiles/.bash_aliases  ~
ln -svf /dat.mnt/dotfiles/.bash_logout   ~
ln -svf /dat.mnt/dotfiles/.bash_profile  ~
ln -svf /dat.mnt/dotfiles/.bashrc        ~
ln -svf /dat.mnt/dotfiles/.lynxrc        ~
ln -svf /dat.mnt/dotfiles/.tmux.conf     ~
ln -svf /dat.mnt/dotfiles/.vimrc         ~
ln -svf /dat.mnt/dotfiles/.xinitrc       ~
ln -svf /dat.mnt/dotfiles/.zlogout       ~
ln -svf /dat.mnt/dotfiles/.zprofile      ~
ln -svf /dat.mnt/dotfiles/.zshrc         ~
ln -svf /dat.mnt/dotfiles/dotf.update.sh ~
sudo ln -svf /dat.mnt/dotfiles/etc.vconsole.conf /etc/vconsole.conf


# comment next line if you want to copy to home of user root.
exit

sudo ln -svf /dat.mnt/dotfiles/.config        /root
sudo ln -svf /dat.mnt/dotfiles/.vifm          /root
sudo ln -svf /dat.mnt/dotfiles/.vim           /root
sudo ln -svf /dat.mnt/dotfiles/.bash_aliases  /root
sudo ln -svf /dat.mnt/dotfiles/.bash_logout   /root
sudo ln -svf /dat.mnt/dotfiles/.bash_profile  /root
sudo ln -svf /dat.mnt/dotfiles/.bashrc        /root
sudo ln -svf /dat.mnt/dotfiles/.lynxrc        /root
sudo ln -svf /dat.mnt/dotfiles/.tmux.conf     /root
sudo ln -svf /dat.mnt/dotfiles/.vimrc         /root
sudo ln -svf /dat.mnt/dotfiles/.zshrc         /root


