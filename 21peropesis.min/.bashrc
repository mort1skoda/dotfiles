export     DOTFILES="/dat.mnt/dotfiles"
echo "~/.bashrc -> $DOTFILES/21peropesi.min/.bashrc"

export       EDITOR="/bin/vim"
export   DATA_MOUNT="/dat.mnt"
export   XAUTHORITY=~/.config/X11/.Xauthority
export LESSHISTFILE=-

source $DOTFILES/.bash_colors
uname -a

rm -vrf ~/.bash_history
rm -vrf ~/.lesshst

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
    then PS1="#-{ \[$col_red\w\[\033[00m\] }-#\n"
fi
# }}}

alias ,='vim '
alias ,ebr='vim ~/.bashrc '
alias ,evr='vim ~/.vimrc '
alias .df='cd /dat.mnt/dotfiles/ ; l '
alias .dm='cd /dat.mnt && ls -gGahlF --color'
alias .h='cd ~ && ls -gGahlF --color'
alias cal='cal -3m '
alias ag='alias |grep -i --color '
alias cs='clear '
alias cp='cp -vr '
alias dbgvim='vim -V20 2>&1 | tee vim.log.vim'
alias g='grep -i --color '
alias gaa='git add -A '
alias gc='git commit -m "$(date)" '
alias gp='git push '
alias gs='git status '
alias ht='htop '
alias ip='ip -color '
alias l='ls -gGahlF --color '
alias mkdir='mkdir -pv '
alias nf='clear; neofetch '
alias rb='reboot '
alias sd='shutdown -h now '
alias v='vim '
alias vf='vifm '
#alias watch='watch -d --color '
alias wget='wget --no-hsts '

echo "loadkeys .swap.esc.caps"
loadkeys $DOTFILES/.swap.esc.caps

$DOTFILES/tips/shell.tip.sh

echo $PATH
export PATH=/dat.mnt/mybins/bin:/dat.mnt/mybins/sbin:$PATH
echo $PATH

