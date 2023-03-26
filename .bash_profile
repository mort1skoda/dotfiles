#!/bin/sh
clear
    printf "linux shell $0 \n"
    printf "   sourcing: $HOME/.bash_profile \n"

source ~/.bash_colors
source ~/.bash_network
source ~/.bashrc
source ~/.bash_aliases
source /dat.mnt/dotfiles/scripts/update.dotfiles.git.sh
source ~/.bash_command_today

echo "you are @ SHLVL=$SHLVL"

