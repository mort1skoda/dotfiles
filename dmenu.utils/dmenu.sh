#!/bin/bash
set -e

# Here we pipe the 1.st argument, a plain text file with options, into dmenu
RES=$(cat $1 | dmenu)

source ~/.bash_aliases

# spesial case: I want to use one of my aliases.
if [ "$RES" = "lbl" ]; then
    echo "LBL"
    lbl
else
sudo $RES
fi

