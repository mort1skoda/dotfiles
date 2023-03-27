#!/bin/sh
echo "sourcing: /dat.mnt/dotfiles/scripts/update.dotfiles.git.sh"

# This shell script can also be run with the
# alias ud [update dotfiles]
if [ "$EUID" -eq 0 ]
then
   exit
fi 

_user_email="mort1skoda@gmail.com"
ORIGIN='main'
#echo $ORIGIN
#exit

cd /dat.mnt/dotfiles

git config --global user.email $_user_email
git config --global user.name  "mort1skoda"

#git status
git pull 

git remote -v | grep --color -i -m1 dotfiles
git add --all
git status --short
#DATE=$(date +"[%Y-%m-%d %H:%M:%S]")
#git commit -m "$DATE"
#git push -u origin $ORIGIN

#cd /dat.mnt/dotfiles

