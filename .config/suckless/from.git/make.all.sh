#!/bin/sh

echo "sudo make clean install all the suckless utils"
echo

source ~/.aliases
shopt -s expand_aliases

cd dw*
,mci
cd ..

cd dm*
,mci
cd ..

cd dwm*
,mci
cd ..

cd dwm*
,mci
cd ..

cd dwm*
,mci
cd ..


