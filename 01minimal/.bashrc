echo "~/.bashrc"
sudo rm -vrf ~/.bash_history
set -o vi
shopt -s autocd

alias l='ls -ah --group-directories-first '

export     DOTFILES="$DATA_MOUNT/dotfiles"
export   DATA_MOUNT="/dat.mnt"
export   XAUTHORITY=/home/m/.config/X11/.Xauthority
export LESSHISTFILE=-
