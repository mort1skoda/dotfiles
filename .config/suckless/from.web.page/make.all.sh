#!/bin/bash

cd ~/.config/suckless

cd dmenu*
sudo make clean install
sudo make clean
echo 
cd ..

cd dwm*
sudo make clean install
sudo make clean
echo
cd ..

cd st*
sudo make clean install
sudo make clean
echo
cd ..

cd swarp*
sudo make clean install
sudo make clean
echo
cd ..


