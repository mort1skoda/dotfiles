#!/bin/sh
clear
echo "sourcing: $HOME/.bash_profile"

export _bool_dbg=true
export _GUI=false
#echo "_bool_dbg=$_bool_dbg"

# if "_bool_dbg" is equal to "true" echo linux shell:
[ "$_bool_dbg" == "true" ] && echo "linux shell $0"

source ~/.bash_colors
source ~/.bash_network
source ~/.bashrc
source ~/.bash_aliases

if [ "$SHLVL" -lt 6 ]
then
    source $DOTFILES/update.dotfiles.git.sh
    source $DOTFILES/bash_today
fi

echo "SHLVL     = $SHLVL"
#echo "_bool_dbg = $_bool_dbg"

