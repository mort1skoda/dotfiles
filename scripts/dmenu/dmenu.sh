#!/bin/bash
set -e

# Usage:
# ./dmenu.sh <filname>
# e.g.: ./dmenu.sh dm.disk
#
# Here we pipe the 1.st argument, a plain text file with options, into dmenu
RES=$(cat $1 | dmenu -l 20)

source ~/.bash_aliases

# spesial case: I want to use one of my aliases.
if [ "$RES" = "lbl" ]; then
    echo "LBL"
    lbl
else
sudo $RES
fi

