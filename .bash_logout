echo "sourcing: ~/.bash_logout"
SHL=$(($SHLVL-1))

if [[ $SHLVL -lt 6 ]]
then
    /dat.mnt/dotfiles/scripts/update.dotfiles.git.sh
fi

echo "You are @ SHLVL $SHL"
