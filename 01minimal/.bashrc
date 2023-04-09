echo "~/.bashrc"
sudo rm -vrf ~/.bash_history
set -o vi
shopt -s autocd

alias l='ls -a --color '
alias v='vim '
alias rb='sudo reboot '
alias ht='htop '
alias nf='clear; neofetch '
alias sd='sudo shutdown -h now '

export     DOTFILES="$DATA_MOUNT/dotfiles"
export   DATA_MOUNT="/dat.mnt"
export   XAUTHORITY=/home/m/.config/X11/.Xauthority
export LESSHISTFILE=-
