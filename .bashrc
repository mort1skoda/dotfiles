#!/bin/bash

echo "~/.bashrc"

#green prompt for regular user
PS1="\[\033[01;32m\]\w\[\033[00m\]\n"

if [ "$EUID" -eq 0 ]; then
  PS1="\[\033[01;31m\]\w\[\033[00m\]\n"
fi


set -o vi
stty -ixon
shopt -s autocd



export TERM='xterm-256color'
export EDITOR='vim'
#OPENER is for lf
export OPENER='xdg-open'

source ~/.bash_aliases

