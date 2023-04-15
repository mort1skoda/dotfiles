
cd ~
mv .mailrc mailrc
rm -rf ~/.*
mv mailrc .mailrc
ls -alhF --color ~
#exit

cd /dat.mnt/dotfiles/21peropesis.min/

ln -svf $PWD/.profile       ~/.profile
#exit

ln -svf $PWD/.bashrc        ~/.bashrc
#exit

ln -svf $PWD/.vimrc         ~/.vimrc
#exit

ln -svf $PWD/.tmux.conf     ~/.tmux.conf
#exit

ln -svf $PWD/.config        ~/.config
#exit

ln -svf $PWD/.vim           ~/.vim
#exit

ls -alhF --color ~

#./02copy_files.sh

