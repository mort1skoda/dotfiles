echo "~/.bash_logout"
SHL=$(($SHLVL-1))
echo "Shell level: $SHL"
/dat.mnt/dotfiles/scripts/dotfiles.update.git.sh
#sleep 1
