
ln -svf /dat.mnt/dotfiles/11arch.min/.bash_profile  ~/.bash_profile
#exit

ln -svf /dat.mnt/dotfiles/11arch.min/.bashrc        ~/.bashrc
#exit

rm -vrf ~/.config
ln -svf /dat.mnt/dotfiles/11arch.min/.config        ~/.config
#exit

rm -vrf ~/.vimrc
ln -svf /dat.mnt/dotfiles/11arch.min/.vimrc         ~/.vimrc
#exit

rm -vrf ~/.vim
ln -svf /dat.mnt/dotfiles/11arch.min/.vim           ~/.vim
#exit

ln -svf /dat.mnt/dotfiles/11arch.min/.tmux.conf     ~/.tmux.conf

ls -al --color ~

#./02copy_files.sh

