
ln -svf $PWD/.bash_profile  ~/.bash_profile
#exit

ln -svf $PWD/.bashrc        ~/.bashrc
#exit

rm -vrf ~/.config
ln -svf $PWD/.config        ~/.config
#exit

rm -vrf ~/.vimrc
ln -svf $PWD/.vimrc         ~/.vimrc
#exit

rm -vrf ~/.vim
ln -svf $PWD/.vim           ~/.vim
#exit

ln -svf $PWD/.tmux.conf     ~/.tmux.conf

ls -al --color ~

./02copy_files.sh

