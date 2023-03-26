#!/bin/sh
# wrapper for startx so that we can execute some commands
# when we quit X

startx

clear
source ~/.bashrc
neofetch
echo "back on tty"


