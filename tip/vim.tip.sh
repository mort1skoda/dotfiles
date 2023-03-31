#!/bin/sh

_BCL_R=$(cat $DOTFILES/tip/vim.lst |shuf -n1)
if [[ $_BCL_R != "-" ]]
then
    printf "$col_blue"
    printf "Vim tip......:"
    echo $_BCL_R
    printf "$col_00"
fi


