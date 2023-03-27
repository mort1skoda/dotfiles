#!/bin/sh
clear
printf "linux shell $0 \n"
printf "sourcing: $HOME/.bash_profile \n"

source ~/.bash_colors
source ~/.bash_network
source ~/.bashrc
source ~/.bash_aliases

if [[ $SHLVL -lt 6 ]]
then
    source   /dat.mnt/dotfiles/scripts/update.dotfiles.git.sh
    source  ~/.bash_command_today
fi

echo "you are @ SHLVL=$SHLVL"

