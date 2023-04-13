
ln -svf /dat.mnt/dotfiles/01minimal/.bash_profile  ~/.bash_profile
ln -svf /dat.mnt/dotfiles/01minimal/.bashrc        ~/.bashrc
#exit
rm -vrf ~/.config
ln -svf /dat.mnt/dotfiles/01minimal/.config        ~/.config
#exit
rm -vrf ~/.vimrc
ln -svf /dat.mnt/dotfiles/01minimal/.vimrc         ~/.vimrc
#exit
rm -vrf ~/.vim
ln -svf /dat.mnt/dotfiles/01minimal/.vim           ~/.vim
#exit
ln -svf /dat.mnt/dotfiles/01minimal/.tmux.conf     ~/.tmux.conf

ls -al --color ~

./02copy_files.sh

