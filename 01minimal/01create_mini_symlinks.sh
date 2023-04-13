
ln -svf /dat.mnt/dotfiles/01minimal/.bash_profile  /home/m/.bash_profile
ln -svf /dat.mnt/dotfiles/01minimal/.bashrc        /home/m/.bashrc
#exit
rm -vrf ~/.config
ln -svf /dat.mnt/dotfiles/01minimal/.config        /home/m/.config
#exit
rm -vrf ~/.vimrc
ln -svf /dat.mnt/dotfiles/01minimal/.vimrc         /home/m/.vimrc
#exit
rm -vrf ~/.vim
ln -svf /dat.mnt/dotfiles/01minimal/.vim           /home/m/.vim
#exit
ln -svf /dat.mnt/dotfiles/01minimal/.tmux.conf     /home/m/.tmux.conf

ls -al --color /home/m

./02copy_files.sh

