echo "~/.bash_profile"


setfont drdos8x14


#--- wifi -----------------------------{{
#sudo rfkill unblock wifi
#sudo dhcpcd
#sudo wpa_supplicant -s -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf
sudo wpa_supplicant -s -B -iwlp2s0 -c/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf
#sudo ip link set wlan0 up
#sudo ip link set wlp2s0 up
#--------------------------------------}}}


source ~/.bashrc


#clear
#fastfetch
echo "Shell Level: $SHLVL"
ip a | g wlan0 | g inet
ip a | g wlp2s0 | g inet


