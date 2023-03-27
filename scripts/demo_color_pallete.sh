#!/bin/sh

for i in {00..60}
do
    #echo -e "\e[0;${i}m-- NICE! COLOR no: $i "
    col="\e[0;${i}m"
    echo -e "${col}-- NICE! COLOR no: $i "
done

echo
echo -e "\e[0;00m --- BACK TO NORMAL ---" 



for((i=16; i<256; i++)); do
    printf "\e[48;5;${i}m%03d" $i;
    printf '\e[0m';
    [ ! $((($i - 15) % 6)) -eq 0 ] && printf ' ' || printf '\n'
done


printf '\e[38;5;196m Foreground color: red\n'
printf '\e[48;5;80m Background color: cyan\n'




