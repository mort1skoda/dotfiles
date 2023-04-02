echo "~/.bashrc"
sudo rm -vrf ~/.bash_history
set -o vi
shopt -s autocd

alias l='ls -ah --group-directories-first '

export   DATA_MOUNT="/dat.mnt"
export     DOTFILES="$DATA_MOUNT/dotfiles"
export LESSHISTFILE=-
