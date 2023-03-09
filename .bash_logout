echo "~/.bash_logout"

SHL=$(($SHLVL-1))

echo "Shell level: $SHL"
cd ~
./dotf.update.sh


