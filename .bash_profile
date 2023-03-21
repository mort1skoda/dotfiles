echo "~/.bash_profile"

#--- wifi -----------------------------{{
#sudo rfkill unblock wifi
#sudo dhcpcd
#sudo wpa_supplicant -s -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf

IP_LINK=$(ip link | grep -i wlp)
echo $IP_LINK

if [ "$IP_LINK" ]; then
    echo "Starting wpa_supplicant from ~/.bash_profile"
    sudo wpa_supplicant -s -B -iwlp2s0 -c/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf
fi

#sudo ip link set wlan0 up
#sudo ip link set wlp2s0 up
#sudo ip link set enp3s0 down
#--------------------------------------}}}

source ~/.bashrc

echo "Shell Level: $SHLVL"
sleep 2
ip a | g inet


