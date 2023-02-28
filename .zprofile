echo "~/.zprofile"

#--- wifi -----------------------------{{
#sudo rfkill unblock wifi
#sudo systemctl start dhcpcd
#sudo wpa_supplicant -s -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf
#sudo wpa_supplicant -s -B -iwlp2s0 -c/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf
#sudo ip link set wlan0 up
#sudo ip link set wlp2s0 up
sudo ip link set enp3s0 down
#--------------------------------------}}}


VAR=$(ps s -A |grep 'wpa_supplicant -s -B' | grep -v 'grep wpa_supplicant')
#echo $VAR

if [[ -z $VAR ]];then
    echo "no wpa_supplicant running, I will start it"
    sudo wpa_supplicant -s -B -iwlp2s0 -c/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf
else
    echo "wpa_supplicant running. OK!"
fi

