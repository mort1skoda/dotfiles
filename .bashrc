#!/bin/bash
echo "$HOME/.bashrc"

set -o vi
shopt -s autocd
shopt -s expand_aliases

# set prompt for regular user
IS_TTY=$(echo $(tty) | grep tty)

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

export       BAT_THEME='gruvbox-dark'
export          EDITOR='vim'
export          OPENER='xdg-open'
export           PAGER='less'
export            TERM='xterm-256color'
export XDG_CONFIG_HOME='/home/m/.config'

source ~/.aliases

