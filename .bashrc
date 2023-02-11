echo "~/.bashrc"

set -o vi

#--- prompt ----------------------------{{{
#
## green prompt for regular user
PS1="\[\033[01;32m\]\w\[\033[00m\]\n"

# red prompt for root
if [ "$EUID" -eq 0 ]
    then PS1="\[\033[01;31m\]\w\[\033[00m\]\n"
fi
#---------------------------------------}}}


#--- wifi -----------------------------{{{
sudo rfkill unblock wifi
sudo ip link set wlan0 up
ip -color a
sudo wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf
sudo dhcpcd
#
#
#
#--------------------------------------}}}



source ~/.bash_aliases



#--- export --------------------{{{
export TERM='xterm-256color'
export EDITOR='vim'
export OPENER='xdg-open'
#-------------------------------}}}



