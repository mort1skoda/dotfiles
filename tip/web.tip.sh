#!/bin/sh

_BCL_R=$(cat $DOTFILES/tip/web.lst |shuf -n1)
if [[ $_BCL_R != "-" ]]
then
    printf "$col_cyan"
    printf "Web tip......: "
    echo $_BCL_R
    printf "$col_00"
fi

