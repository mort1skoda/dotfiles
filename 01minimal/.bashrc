echo "~/.bashrc"
sudo rm -vrf ~/.bash_history
sudo rm -vrf ~/.lesshst
stty -ixon
set -o vi
shopt -s autocd

alias ,='vim '
alias ,ebr='vim ~/.bashrc '
alias .df='cd /dat.mnt/dotfiles '
alias .dm='cd /dat.mnt '
alias ht='htop '
alias l='ls -al --color '
alias nf='clear; neofetch '
alias rb='sudo reboot '
alias sd='sudo shutdown -h now '
alias v='vim '
alias pm='sudo pacman '

export     DOTFILES="/dat.mnt/dotfiles"
export   DATA_MOUNT="/dat.mnt"
export   XAUTHORITY=/home/m/.config/X11/.Xauthority
export LESSHISTFILE=-

/dat.mnt/dotfiles/tip/shell.tip.sh
