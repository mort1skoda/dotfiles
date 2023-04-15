#     To substitute new for the first old in a line type    :s/old/new
#     To substitute new for all 'old's on a line type	   :s/old/new/g
#     To substitute phrases between two line #'s type	   :#,#s/old/new/g
#     To substitute all occurrences in the file type	   :%s/old/new/g
#     To ask for confirmation each time add 'c'		   :%s/old/new/gc
#  to insert char at first column: ctrl-v, mark down lines to insert char,
#  type I (capital i), then esc, all lines will get new char at first column.


rm -vrf ~/.bash_profile  
ln -svf /dat.mnt/dotfiles/11arch.min/.bash_profile  ~/.bash_profile
#exit

rm -vrf ~/.bashrc
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

rm -vrf ~/.tmux.conf
ln -svf /dat.mnt/dotfiles/11arch.min/.tmux.conf     ~/.tmux.conf
#exit

ls -al --color ~

#./02copy_files.sh

