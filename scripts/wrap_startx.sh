#!/bin/sh
# wrapper for startx so that we can execute some commands
# when we quit X

startx

clear
#source ~/.bashrc
#source ~/.bash_aliases
#neofetch
echo "back on tty"
echo "_GUI = $_GUI"
echo "_bool_dbg = $_bool_dbg"

