#!/bin/sh
clear
echo "sourcing: $HOME/.bash_profile"

# for verbosity set _bool_dgb to true
export _bool_dbg=true

# if "_bool_dbg" is equal to "true" echo linux shell:
[ "$_bool_dbg" == "true" ] && echo "linux shell $0"

source ~/.bash_colors
source ~/.bash_network
source ~/.bashrc
#### .bashrc sources .bash_aliases ####
#### .bashrc sources tip ####

# when we are at shell levels below 7 i.e less than 7 (1 through 6)
# DO update git repos and show linux shell bash tip of the day!
if [ "$SHLVL" -lt 7 ]
then
    source $DOTFILES/02update_git_repos.sh
fi


echo "SHLVL     = $SHLVL"
uptime -p

