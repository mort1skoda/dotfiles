echo "~/.bashrc -> $DOTFILES/11arch.min/.bashrc"

export     DOTFILES="/dat.mnt/dotfiles"
export   DATA_MOUNT="/dat.mnt"
export   XAUTHORITY=/home/m/.config/X11/.Xauthority
export LESSHISTFILE=-

source $DOTFILES/.bash_colors
uname -a

sudo rm -vrf ~/.bash_history
sudo rm -vrf ~/.lesshst

set -o vi
shopt -s autocd
stty -ixon

# prompt {{{
# regular user
IS_TTY=$(echo $(tty) | grep tty)
if [ $IS_TTY ] || [ $TMUX ]
then
    PS1="\[$col_green\w\[\033[00m\]\n"
    #PS1="\[$SHLVL \[$col_green\w\[\033[00m\]\n"
else
    PS1=" \[$SHLVL \[$col_green\w\[\033[00m\]\n"
fi
# root
if [ "$EUID" -eq 0 ]
    then PS1="#- \[$col_red\w\[\033[00m\] -#\n"
fi
# }}}

alias ,='vim '
alias ,ebr='vim ~/.bashrc '
alias ,evr='vim ~/.vimrc '
alias .df='cd /dat.mnt/dotfiles '
alias .dm='cd /dat.mnt '
alias cal='cal -3m '
alias cs='clear '
alias dbgvim='vim -V20 2>&1 | tee vim.log.vim'
alias g='grep -i --color '
alias gaa='git add -A '
alias gc='git commit -m "upd" '
alias gp='git push '
alias gs='git status '
alias ht='htop '
alias ip='ip -color '
alias l='ls -gahl --color '
alias nf='clear; neofetch '
alias pm='sudo pacman '
alias rb='sudo reboot '
alias sd='sudo shutdown -h now '
alias v='vim '
alias vf='vifm '
alias watch='watch -d --color '


echo "loadkeys .swap.esc.caps"
sudo loadkeys $DOTFILES/.swap.esc.caps

$DOTFILES/tips/shell.tip.sh

#export PATH=/dat.mnt/mybins/bin:/sbin:/bin:/usr/sbin:/usr/bin
