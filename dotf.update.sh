#!/bin/zsh

cd /dat.mnt/dotfiles

git status
git pull 

git remote -v | grep --color -i -m1 dotfiles
git add --all
git status --short
DATE=$(date +"[%Y-%m-%d %H:%M:%S]")
git commit -m "$DATE"
git push -u origin main


