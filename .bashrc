#!/bin/bash
echo "~/.bashrc"

set -o vi
#stty -ixon
shopt -s autocd

TTY=$(tty)
echo "TTY = $TTY"



# prompt for regular user
PS1="\[\033[34m\]\w\[\033[00m\]\n"

# prompt for # ROOT #
if [ "$EUID" -eq 0 ]
    then PS1="#- \[\033[05;41m\]\w\[\033[00m\] -#\n"
fi

source ~/.aliases

export TERM='xterm-256color'
export EDITOR='vim'
#OPENER is for lf
export OPENER='xdg-open'
export BAT_THEME='gruvbox-dark'
export PAGER='less'

#source ~/gruvbox.bash

