#!/bin/sh
clear
echo "sourcing: $HOME/.bash_profile"

export _bool_dbg=false
#export _GUI=false
#echo "_bool_dbg=$_bool_dbg"

# if "_bool_dbg" is equal to "true" echo linux shell:
[ "$_bool_dbg" == "true" ] && echo "linux shell $0"

source ~/.bash_colors
source ~/.bash_network 
source ~/.bashrc
source ~/.bash_aliases

if [ "$SHLVL" -lt 7 ]
then
    source $DOTFILES/update.dotfiles.git.sh
    source $DOTFILES/today_bash
fi

echo "SHLVL     = $SHLVL"
uptime


