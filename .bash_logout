echo "sourcing: ~/.bash_logout"
SHL=$(($SHLVL-1))
echo "You are @ SHLVL $SHL"
/dat.mnt/dotfiles/scripts/update.dotfiles.git.sh
sleep 1
