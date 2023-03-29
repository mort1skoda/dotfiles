# archlinux install
## Gigabyte AM1M-S2H ver1
### Desktop

#### quick guide

    curl --output arch.iso https://mirrors.dotsrc.org/archlinux/iso/2023.03.01/archlinux-2023.03.01-x86_64.iso
    sudo cp arch.iso /dev/sdb

    bash
    loadkeys no             (/usr/share/kbd/keymaps/**.*.map.gz)
    set -o vi
    shopt -s autocd
    alias l='ls -lah --color --group-directoires-first'
    setfont dr*8x14       (/usr/share/kbd/consolefonts) setfont gr737b-8x11
    tmux
    ctrl+b %      (vert split)
    ctrl+b arrow  (navigate to pane)
    Tip: set alt-v   ctrl+b : bind -n M-v split-window -h

    lynx wiki.archlinux.org/title/installation_guide

    ls /sys/firmware/efi/efivars

    ip -color a
    ping -c4 -D archlinux.org       (-D shows epoc time with high resolution 1.000.000/s)
        tip: regarding random numbers:   ping -D    | awk '{print $1}'
    timedatectl Europe/Oslo
    timedatectl
    cfdisk
        example 870 EVO 250GB
        sda1          1G  efi
        sda2          8G  swap
        sda3,4,5,6   30G  OS (/ for different OS installations)
        sda7        100G  data
    lsblk

    mkfs.fat -F 32  /dev/sda1
    mkswap          /dev/sda2
    mkfs.ext4       /dev/sda3   upto  sda7
    lsblk /dev/sda -o NAME,SIZE,MOUNTPOINT,FSTYPE

    mount --mkdir  /dev/sda1 /mnt/boot
    swapon         /dev/sda2
    mount          /dev/sda3 /mnt

    cd /mnt
    mkdir /mnt/dat.mnt
    mount /dev/sda7 /mnt/dat.mnt

    pacstrap -iK /mnt base linux linux-firmware amd-ucode
    pacstrap -iK /mnt sudo vim bat htop git github-cli grub efibootmgr  (dosfstools mtools)
    pacstrap -IK /mnt dhcpcd

    genfstab -U /mnt >> /mnt/etc/fstab

    arch-chroot /mnt
    stty -ixon
    set -o vi
    shopt -s autocd
    alias l='ls -lah --color --group-directories-first'

    ln -svf /usr/share/zoneinfo/Europe/Oslo /etc/localtime
    hwclock --systohc
    vim /etc/locale.gen
    locale-gen

    vim /etc/locale.conf        LANG=en_US.UTF-8
    vim /etc/vconsole.conf      KEYMAP=no       FONT=gr737b-8x11

    pacman -S dhcpcd
    systemctl enable dhcpcd
    vim /etc/dhcpcd.conf        [add noarp]

    pacman -S grub efibootmgr     dosfstools mtools
    mkdir /boot/EFI
    mount /dev/sda1 /boot/EFI
    grub-install --target=x86_64-efi --efi-directory=/boot/EFI --bootloader-id=GRUB
    grub-mkconfig -o /boot/grub/grub.cfg

    passwd root

    ctrl-d
    umount -R /mnt
    reboot



    login as root
    stty -ixon
    set -o vi
    shopt -s autocd
    alias l='ls -lah --color --group-directories-first'

    ip -color a
    ping -c4 -D archlinux.org

    useradd -mG wheel m
    passwd m


    EDITOR=/bin/vim visudo
        [add at top: Defaults editor=/bin/vim]
        [uncomment %wheel]

    exit to logout
    login as m

