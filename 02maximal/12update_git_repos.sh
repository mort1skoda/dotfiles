#!/bin/sh
echo "running.: $DOTFILES/02update_git_repos.sh"

# This shell script can be run with the alias:
# ud [update dotfiles]
# or edit this script with the alias:
# eud [edit update dotfiles]

# if user is equal to 0 i.e. the user is root: we exit
[ "$EUID" -eq 0 ] && exit


# init:
cd $DOTFILES
DATE=$(date +"[%Y-%m-%d %H:%M:%S]")
my_user_name="mort1skoda"
my_user_email="mort1skoda@gmail.com"
ORIGIN='main'
DEFAULT_BRANCH="main"
git config --global user.name  $my_user_name
git config --global user.email $my_user_email
#git config --global init.$DEFAULT_BRANCH $ORIGIN
#git status





# here we take care of dotfiles repo:
echo;echo " $DATA_MOUNT/dotfiles :"
cd $DATA_MOUNT/dotfiles
 #git remote -v | grep --color -i -m1 dotfiles
 git pull 
 git add --all
 git status --short
 git commit -m "$DATE"
 git push -u origin $ORIGIN
cd $DOTFILES





# here we take care of devel_C repo:
echo;echo " $DATA_MOUNT/devel_c:"
cd $DATA_MOUNT/devel_c
 git pull
 git add --all
 git status --short
 git commit -m "$DATE"
 git push -u origin $ORIGIN
cd $DOTFILES

