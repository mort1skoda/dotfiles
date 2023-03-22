#!/bin/sh
echo "shell=$0  ~/.bash_profile"

#--- wifi -----------------------------{{
#sudo rfkill unblock wifi
#sudo dhcpcd
#sudo wpa_supplicant -s -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf

IP_LINK=$(ip link | grep -i wlp)
echo $IP_LINK

if [ "$IP_LINK" ]; then
    echo "Starting wpa_supplicant from ~/.bash_profile"
    sudo wpa_supplicant -s -B -iwlp2s0 -c/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf
else
    echo "No wifi"
fi

#sudo ip link set wlan0 up
#sudo ip link set wlp2s0 up
#sudo ip link set enp3s0 down
#--------------------------------------}}}

source ~/.bashrc


# -z return true if bash variable is unset
#while [ -z "$IPA" ]
while [ -z "$(ip a | grep -i '255' )" ]
do
    echo "Waiting for ip address..."
    sleep 1
    IPA=$(ip a | grep -i '255' )
done
echo "YES! we got an ip address"

ip a | g inet
echo "Shell Level: $SHLVL"

echo "--- Oh My! bash shell command of today: curl wttr.in/Helgeroa ---"

