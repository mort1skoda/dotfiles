echo "sourcing: ~/.bash_logout"
SHL=$(($SHLVL-1))
echo "You are @ SHLVL $SHL"
if [[ $SHLVL -lt 6 ]]
then
    /dat.mnt/dotfiles/scripts/update.dotfiles.git.sh
fi
