echo "~/.bashrc"
sudo rm -vrf ~/.bash_history
sudo rm -vrf ~/.lesshst
set -o vi
shopt -s autocd

alias ht='htop '
alias l='ls -al --color '
alias nf='clear; neofetch '
alias rb='sudo reboot '
alias sd='sudo shutdown -h now '
alias v='vim '
alias ,='vim '
alias .df='cd /dat.mnt/dotfiles '
alias .dm='cd /dat.mnt '

export     DOTFILES="/dat.mnt/dotfiles"
export   DATA_MOUNT="/dat.mnt"
export   XAUTHORITY=/home/m/.config/X11/.Xauthority
export LESSHISTFILE=-

./dat.mnt/dotfiles/tip/shell.tip.sh
