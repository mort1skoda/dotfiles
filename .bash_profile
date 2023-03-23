printf "linux shell=$0    file=$HOME/.bash_profile "

#--- wifi -----------------------------{{
#sudo rfkill unblock wifi
#sudo dhcpcd
#sudo wpa_supplicant -s -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf

#HAS_WIFI=$(ip link | grep -i wlp)
HAS_WIFI=1 

if [ "$HAS_WIFI" ]; then
    printf "Starting wpa_supplicant from ~/.bash_profile"
    sudo wpa_supplicant -s -B -iwlp2s0 -c/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf
else
    printf "No wifi"
fi

#sudo ip link set wlan0 up
#sudo ip link set wlp2s0 up
#sudo ip link set enp3s0 down
#--------------------------------------}}}



# -z return true if bash variable is unset
#while [ -z "$IPA" ]
while [ -z "$(ip a | grep -i '255' )" ]
do
    printf "Waiting for ip address... "
    sleep 1
    IPA=$(ip a | grep -i '255' )
done
echo "YES! we got an ip address"


ip a |g inet 
echo "Shell Level: $SHLVL"


echo "--- Oh My! bash shell command of today: curl wttr.in/Helgeroa ---"

source ~/.bashrc
