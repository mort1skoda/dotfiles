echo "~/.bashrc"


sudo rm -vrf ~/.bash_history
sudo rm -vrf ~/.lesshst

set -o vi
shopt -s autocd
stty -ixon

alias ,='vim '
alias ,ebr='vim ~/.bashrc '
alias .df='cd /dat.mnt/dotfiles '
alias .dm='cd /dat.mnt '
alias cal='cal -3m '
alias cs='clear '
alias g='grep -i --color '
alias gaa='git add -A '
alias gc='git commit -m "upd" '
alias gp='git push '
alias gs='git status '
alias ht='htop '
alias ip='ip -color '
alias l='ls -gahl --color; ls -a | wc -l '
alias nf='clear; neofetch '
alias pm='sudo pacman '
alias rb='sudo reboot '
alias sd='sudo shutdown -h now '
alias v='vim '
alias vf='vifm '

export     DOTFILES="/dat.mnt/dotfiles"
export   DATA_MOUNT="/dat.mnt"
export   XAUTHORITY=/home/m/.config/X11/.Xauthority
export LESSHISTFILE=-

sudo loadkeys $DOTFILES/01minimal/.caps_to_esc

/$DOTFILES/tip/shell.tip.sh
