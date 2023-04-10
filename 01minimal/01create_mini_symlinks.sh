#ln -svf /dat.mnt/dotfiles/.gitconfig               /home/m/.gitconfig
ln -svf /dat.mnt/dotfiles/01minimal/.bash_profile  /home/m/.bash_profile
ln -svf /dat.mnt/dotfiles/01minimal/.bashrc        /home/m/.bashrc
rm -vrf ~/.config
ln -svf /dat.mnt/dotfiles/01minimal/.config        /home/m/.config
ln -svf /dat.mnt/dotfiles/01minimal/.vimrc         /home/m/.vimrc
ln -svf /dat.mnt/dotfiles/01minimal/.tmux.conf     /home/m/.tmux.conf
ls -al --color /home/m
