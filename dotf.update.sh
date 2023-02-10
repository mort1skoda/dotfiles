#!/bin/bash

cd /rep/dotfiles
git status --short
git remote -v | grep --color -i -m1 dotfiles
git add --all
DATE=$(date +"[%Y-%m-%d %H:%M:%S]")
git commit -m "$DATE"
git push -u origin main


