#!/bin/bash
echo "~/.bashrc"

set -o vi
shopt -s autocd
shopt -s expand_aliases

# set prompt for regular user
TTY=$(tty)
#echo "TTY = $TTY"
IS_TTY=$(echo $TTY | grep tty)
#echo "IS_TTY = $IS_TTY"

if [ $IS_TTY ] || [ $TMUX ]
then
    PS1="\[\033[32m\]\w\[\033[00m\]\n"
else
    PS1="\[\033[34m\]\w\[\033[00m\]\n"
fi

# set prompt for # ROOT #
if [ "$EUID" -eq 0 ]
    then PS1="#- \[\033[05;41m\]\w\[\033[00m\] -#\n"
fi

export TERM='xterm-256color'
export EDITOR='vim'
#OPENER is for lf
export OPENER='xdg-open'
export BAT_THEME='gruvbox-dark'
export PAGER='less'
export XDG_CONFIG_HOME='/home/m/.config'

#source ~/gruvbox.bash
#stty -ixon

source ~/.aliases

