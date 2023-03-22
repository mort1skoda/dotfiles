Wifi arch

Before chroot:

<pre>
  iwctl 
  networkmanager     nmcli    nmtui 
  wpa_supplicant    wpa_cli


</pre>

#### -- wpa_supplicant --####--{{{

    wpa_passphrase "103B 2.4" "sdbyorguf
    wpa_supplicant -sB -iwlan0\
    -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf

#### .. .............. ..////..}}}



