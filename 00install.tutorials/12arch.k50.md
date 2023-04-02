## Arch linux install tutorial

#### OS..........: Arch linux x86_64
#### Machine.....: Asus K50
#### Bios........: Legacy
#### Init system.: Systemd
#### Network.....: Wifi wlan0 / wlp2s0


#### create bootable usb

    curl --output arch.iso https://mirrors.dotsrc.org/archlinux/iso/2023.03.01/archlinux-2023.03.01-x86_64.iso
    cp arch.iso /dev/sdb



#### boot the iso

    spam esc



#### init<!--{{{-->

    bash 
    loadkeys no
    set -o vi
    setfont gr737b-8x11
    shopt -s autocd

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
    wpa_passphrase "103B 2.4"  "sdbyorguf...." >> wlan0.conf
    wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant/wlan0.conf

    /etc/wpa*
    wpa_passphrase "NETGEAR87" "roundsqua....." > wlan0.conf
    wpa_supplicant -B -i wlan0 -c wlan0.conf



#### mount

    mount --mkdir /dev/sda7   /mnt/dat.mnt
    mount         /dev/sda4   /mnt
    swapon        /dev/sda2



#### pacstrap

    pacstrap -iK /mnt base linux linux-firmware intel-ucode sudo vim bat htop git github-cli



    genfstab -U /mnt >> /mnt/etc/fstab

    arch-chroot /mnt
    set -o vi
    alias l='ls -lah --color --group-directories-first'
    shopt -s autocd

    hwclock --systohc

    echo "en_US.UTF-8 UTF-8"  >   /etc/locale.gen
    echo "#en_US ISO-8859-1"  >>  /etc/locale.gen
    cat /etc/locale.gen
    locale-gen
    
    pacman -S grub
    grub-install --target=i386-pc /dev/sda
    grub-mkconfig -o /boot/grub/grub.cfg

    passwd root
   
    pacman -S wpa_supplicant dhcpcd
     
    ctrl + d
    umount -l /mnt
    reboot

    login as root   

    loadkeys no
    shopt -s autocd
    set -o vi
    useradd -mG wheel m
    passwd m

    
    
    /etc/wpa*
    wpa_passphrase "NETGEAR87" "roundsqua....." > wlp2s0.conf
    wpa_supplicant -B -i wlp2s0 -c wlp2s0.conf
    ip -color a
    ping -c4 -D archlinux.org
 
    EDITOR=/usr/bin/vim visudo
        Defaults editor /usr/bin/vim
            uncomment %wheel

    cd /dat.mnt/dotfiles/scripts
    ./create.symlinks.sh
 
