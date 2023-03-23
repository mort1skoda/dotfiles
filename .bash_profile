#!/bin/sh
#set -e

_black="\033[30m"
_red="\033[31m"
#_purple="\033[32m"
#_purple="\033[33m"
#_purple="\033[34m"
_purple="\033[35m"



#clear
    printf "linux shell=$0\n"
    printf "    sourcing=$HOME/.bash_profile\n"

#--- wifi check -----------------------------{{{
#sudo rfkill unblock wifi
#sudo dhcpcd
#sudo wpa_supplicant -s -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf

#HAS_WIFI=1 
_HAS_WIFI=$(ip link | grep -i wlp)
#printf 'HAS_WIFI= %s\n' "$HAS_WIFI"
#sleep 1

if [ "$_HAS_WIFI" ]; then
    printf "    Starting wpa_supplicant from ~/.bash_profile\n"
    sudo wpa_supplicant -s -B -iwlp2s0 -c/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf
else
    printf "    No wifi, using ethernet\n"
fi

#sudo ip link set wlan0 up
#sudo ip link set wlp2s0 up
#sudo ip link set enp3s0 down
#--------------------------------------}}}

# ip check {{{
# -z return true if bash variable is unset
#while [ -z "$GOT_IP_ADDRESS" ]
_IP_TOKEN="noprefixroute enp"
_GOT_IP_ADDRESS=$(ip a |grep -E "$_IP_TOKEN" )
while [ -z "$_GOT_IP_ADDRESS" ]
do
    printf "    Waiting for ip address... \n"
    sleep 1
    _GOT_IP_ADDRESS=$(ip a |grep -E "$_IP_TOKEN" )
done
_IP_ADDRESS=$(echo $_GOT_IP_ADDRESS | awk '{print $2}')
    printf "    Local ip: $_purple $_IP_ADDRESS $_red \n"
# }}}

#ip a | grep -i --color inet 
#echo "Shell Level: $SHLVL"





printf "\n"
source ~/.bashrc


#echo "--- Oh My! bash shell command of today: curl wttr.in/Helgeroa ---"
