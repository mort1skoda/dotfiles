#!/bin/sh
#set -e
clear
    printf "linux shell=$0\n"
    printf "    sourcing=$HOME/.bash_profile\n"

#--- wifi check -----------------------------{{{
#sudo rfkill unblock wifi
#sudo dhcpcd
#sudo wpa_supplicant -s -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf

HAS_WIFI=1 
#HAS_WIFI=$(ip link | grep -i wlp)
printf 'HAS_WIFI= %s\n' "$HAS_WIFI"
sleep 1



if [ "$HAS_WIFI" ]; then
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
GOT_IP_ADDRESS=$(ip a |grep -E "noprefixroute enp" )
while [ -z "$GOT_IP_ADDRESS" ]
do
    printf "    Waiting for ip address... \n"
    sleep 1
    GOT_IP_ADDRESS=$(ip a |grep -E "noprefixroute enp" )
done
IP_ADDRESS=$(echo $GOT_IP_ADDRESS | awk '{print $2}')
    printf "    Local ip: $IP_ADDRESS \n"
# }}}

#ip a | grep -i --color inet 
#echo "Shell Level: $SHLVL"





printf "\n"
source ~/.bashrc


#echo "--- Oh My! bash shell command of today: curl wttr.in/Helgeroa ---"
