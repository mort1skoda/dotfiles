#!/bin/sh

mkdir -pv ~/.vim/{autoload,backup,colors,pack,plugged}
ls -la ~/.vim/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# open .vimrc and type: ,ss  then :PlugInstall
