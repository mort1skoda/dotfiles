#!/bin/sh

echo "sudo make clean install all the suckless utils"
echo

source ~/.aliases
shopt -s expand_aliases

cd dwm*
,mci
cd ..

cd dmenu*
,mci
cd ..

cd st*
,mci
cd ..

