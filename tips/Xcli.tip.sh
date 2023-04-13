#!/bin/sh

_BCL_R=$(cat $DOTFILES/tip/Xcli.lst |shuf -n1)
if [[ $_BCL_R != "-" ]]
then
    printf "$col_yellow"
    printf "Shell tip....: "
    echo $_BCL_R

    echo "for more info try: "
    #alg '$_BCL_R'
    echo "$_BCL_R --help"  
    echo "man     $_BCL_R"  
    echo "type    $_BCL_R"  
    echo "whereis $_BCL_R"  
    echo "which   $_BCL_R"  
    echo "check for alias with: ag $_BCL_R"
    printf "$col_00"
fi


