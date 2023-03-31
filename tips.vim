#!/bin/sh

_BCL_R=$(cat $DOTFILES/lists/list.vim |shuf -n1)
if [[ $_BCL_R != "-" ]]
then
    printf "$col_blue"
    printf "Check out this webpage: "
    echo $_BCL_R
    printf "$col_00"
fi


