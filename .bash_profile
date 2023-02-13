echo "~/.bash_profile"



#unalias -a



#stty -ixon
#set -o vi



source ~/.bashrc



#--- wifi -----------------------------{{{
sudo rfkill unblock wifi
sudo dhcpcd
sudo wpa_supplicant -s -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf
#
#sudo ip link set wlan0 up
#
#--------------------------------------}}}



clear
fastfetch
echo "Shell Level: $SHLVL"
ip a | g wlan0



