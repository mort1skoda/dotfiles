## arch.k50

### archlinux on Asus K50IJ



#--- preparation -------------------------------------------------------------------------{{{

#### download an iso image

    https://mirror.archlinux.no/iso/2023.03.01/



#### wget

    wget https://mirror.archlinux.no/iso/2023.03.01/archlinux-x86_64.iso
    wget https://mirror.archlinux.no/iso/2023.02.01/archlinux-x86_64.iso.sig



#### verify signature

    pacman-key -v archlinux-x86_64.iso.sig



#### make bootable usb

    sudo dd bs=4M if=/home/m/Downloads/archlinux-x86_64.iso of=/dev/sdx conv=fsync oflag=direct status=progress

#-----------------------------------------------------------------------------------------}}}



#--- working on the host -----------------------------------------------------------------{{{

#### boot the live environment

    ESC to select boot device.


#### loadkeys

    loadkeys no
    set -o vi
    alias l='ls -la --color --group-directories-first'


#### connect to the internet

    passwd root

    iwctl

    [iwd]# device list
    [iwd]# station wlan0 scan
    [iwd]# station wlan0 get-networks
      [iwd]# station wlan0 connect NETGEAR87
      passphrase: roundsquash478
    ctrl+d to quit

    ip a
    ping -c4 archlinux.org


<pre>
Switch console (tty1-6), to view this guide with lynx.
Use the Alt+arrow shortcut. To edit configuration files, vim are available.
</pre>

#----------------------------------------------------------------------------------------}}}



#--- working via a ssh client ------------------------------------------------------------{{{

#### ssh

    ssh -o StrictHostKeyChecking=no "UserKnownHostsFile /dev/null" root@10.0.0.56
    ssh root@10.0.0.56
      (rm .ssh) if not first try.
    set -o vi
    alias l='ls -la --color --group-directories-first'


#### update the system clock

    timedatectl status


#### partiton and format ---------------------------------------------{{{

    fdisk -l
    lsblk
    blkid

    fdisk /dev/<the_disk_to_be_partitioned>

<pre>
At this point I went into Windows 10 and run MiniTool Partition Wizard
To make a swap partition and 3 linux installation partitons.
</pre>

#### fortmat the partitions

    lsblk
    mkfs.ext4 /dev/sda6
    mkswap /dev/sda5

---

Provide an image here to see the layout of the ssd on asus.k50

---

#### -----------------------------------------------------------------}}}


#### mount the file systems

    mount /dev/sda6 /mnt
    swapon /dev/sda5

    lsblk

<pre>
sda1    win10 ntfs
sda2    extended part
sda3    data fat32
sda5    linux swap
sda6    arch
sda7    xubuntu
sda8    lfs
</pre>


#### install essential packages

    lscpu to see if you need amd-ucode or intel ucode.    
    pacstrap -K /mnt base linux linux-firmware amd-ucode vim sudo openssh


#### fstab

    cat /mnt/etc/fstab
    genfstab -U /mnt >> /mnt/etc/fstab
    cat /mnt/etc/fstab


#### chroot

    arch-chroot /mnt
    set -o vi
    alias l='ls -la --color --group-directories-first'


#### time zone

    ln -svf /usr/share/zoneinfo/Europe/Oslo /etc/localtime
    hwclock --systohc


#### localization

    vim /etc/locale.gen         Uncomment en_US.UTF-8 UTF-8
    locale-gen

    vim /etc/locale.conf        add: LANG=en_US.UTF-8
    vim /etc/vconsole.conf      add: KEYMAP=no 


#### network configuration

    vim /etc/hostname           add: arch.k50

    install network managment software:
    pacman -S networkmanager
    systemctl enable NetworkManager
    pacman -S openssh
    systemctl enable sshd


#### root password

    passwd root


#### bootloader

    pacman -S grub os-prober
    grub-install --target=i386-pc /dev/sda
    grub-mkconfig -o /boot/grub/grub.cfg

    Probe for other os:
    vim /etc/default/grub
        and uncomment:  GRUB_DISABLE_OS_PROBER=false

    pacman -S ntfs-3g       ( if windows )
    mount /dev/sda1 /mnt/sda1
    grub-mkconfig -o /boot/grub/grub.cfg

    ctrl-d
    umount -R /mnt
    reboot


#### connect to wifi

    nmcli device wifi list
    nmcli device wifi connect '103B 2.4' password sdbyorgufjuad
    ip a


#### regular user

    useradd -m -G wheel m
    passwd m


#### visudo

    EDITOR=/usr/bin/vim visudo

       add at top: Defaults editor=/usr/bin/vim

    uncomment %wheel  ( with or without passwd )

#### git

    sudo pacman -S git
    sudo pacman -S github-cli

    sudo mkdir /rep
    sudo chown -R m:m /rep
    
    git clone https://github.com/mort1skoda/arch.k50.git



------------------------------------------------------------------------------------------}}} 



