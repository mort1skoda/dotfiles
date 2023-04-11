echo "~/.bashrc"


sudo rm -vrf ~/.bash_history
sudo rm -vrf ~/.lesshst

set -o vi
shopt -s autocd
stty -ixon

alias ,='vim '
alias cs='clear '
alias ,ebr='vim ~/.bashrc '
alias .df='cd /dat.mnt/dotfiles '
alias .dm='cd /dat.mnt '
alias g='grep -i --color '
alias gaa='git add -A '
alias gc='git commit -m "upd" '
alias gp='git push '
alias gs='git status '
alias ht='htop '
alias l='ls -gahl --color '
alias nf='clear; neofetch '
alias ip='ip -color '
alias pm='sudo pacman '
alias rb='sudo reboot '
alias sd='sudo shutdown -h now '
alias v='vim '
alias vf='vifm '

export     DOTFILES="/dat.mnt/dotfiles"
export   DATA_MOUNT="/dat.mnt"
export   XAUTHORITY=/home/m/.config/X11/.Xauthority
export LESSHISTFILE=-

loadkeys $DOTFILES/01minimal/.caps_to_esc

/$DOTFILES/tip/shell.tip.sh
