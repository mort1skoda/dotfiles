## Arch linux install tutorial

#### OS..........: Arch linux x86_64
#### Machine.....: Asus K50
#### Bios........: Legacy
#### Init system.: Systemd
#### Network.....: Wifi wlan0 / wlp2s0
---

#### create bootable usb

    cp arch.iso /dev/sdb


#### boot the iso

    spam esc


#### init<!--{{{-->

    loadkeys no
    setfont drdos8x14
    chsh -s /bin/zsh
    set -o vi
    /
    mkdir /dat.mnt
    mount -o ro,noload /dev/sda7 /dat.mnt
    /dat*/dot*
    ./create.symlinks.sh
    tm
    alt-v
    ins*
    v 01*       or   v arc*leg*sys
<!--}}}-->


#### wifi

    /etc/wpa*
    wpa_passphrase "103B 2.4" "sdbyorguf...." >> wlan0.conf
    wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant/wlan0.conf

