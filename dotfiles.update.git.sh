#!/bin/sh
# This shell script can also be run with the
# alias ud [update dotfiles]

cd /dat.mnt/dotfiles

git config --global user.email "mort1skoda@gmail.com"
git config --global user.name "mort1skoda"

git status
git pull 

git remote -v | grep --color -i -m1 dotfiles
git add --all
git status --short
DATE=$(date +"[%Y-%m-%d %H:%M:%S]")
git commit -m "$DATE"
git push -u origin main


