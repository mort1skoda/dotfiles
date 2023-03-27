#!/bin/sh
# wrapper for startx so that we can execute some commands
# when we quit X

cd ~
source ~/.bash_aliases
startx

clear
source ~/.bashrc
source ~/.bash_aliases
neofetch
echo "back on tty"


