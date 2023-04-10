# archlinux install
## VirtualBox: arch bios msdos
### --

#### quick guide

    curl --output arch.iso
       https://mirrors.dotsrc.org/archlinux/iso/2023.04.01/archlinux-2023.04.01-x86_64.iso
    sudo cp arch.iso /dev/sdb

    loadkeys no             (/usr/share/kbd/keymaps/**.*.map.gz)
    set -o vi
    shopt -s autocd
    alias l='ls -a'
    setfont drdos8x14       (cd /usr/share/kbd/consolefonts) setfont gr737b-8x11
    tmux
    ctrl+b >    choose h split

    ip a
    ping -c4 -D archlinux.org       (-D shows epoc time with high resolution 1.000.000/s)
        tip: regarding random numbers:   ping -D    | awk '{print $1}'

    timedatectl set-timezone Europe/Oslo
    timedatectl

    cfdisk
       sda1         /
       sda2         /dat.mnt
       sda3         swap
       sda4         boot
    lsblk

    mkswap          /dev/sba1
    mkfs.ext4       /dev/sda2

    lsblk /dev/sda -o NAME,SIZE,MOUNTPOINTS,FSTYPE,SERIAL

    swapon         /dev/sda1
    mount          /dev/sda2 /mnt
    mount --mkdir  /dev/sda4 /mnt/dat.mnt       (So genfstab includes our data disk/partition)

    pacstrap -iKG /mnt base linux linux-firmware amd-ucode
    pacstrap -iKG /mnt sudo vim bat htop dhcpcd git github-cli grub neofetch tmux

    genfstab -L /mnt > /mnt/etc/fstab
    vim /mnt/etc/fstab

    arch-chroot /mnt
    stty -ixon
    set -o vi
    shopt -s autocd
    alias l='ls -gGahl --color --group-directories-first'

    ln -svf /usr/share/zoneinfo/Europe/Oslo /etc/localtime
    hwclock --systohc

    vim /etc/locale.gen     or echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
    locale-gen

    vim /etc/locale.conf        LANG=en_US.UTF-8  or echo
    vim /etc/vconsole.conf      KEYMAP=no       FONT=gr737b-8x11

    vim /etc/dhcpcd.conf        [add noarp]   or  echo "noarp" >> /etc/dhcpcd.conf
    systemctl enable dhcpcd

    pacman -S grub 
     BIOS:
      grub-install --target=i386-pc /dev/sda
      grub-mkconfig -o /boot/grub/grub.cfg

    passwd root
    
    useradd -mG wheel m
    passwd m

    ctrl-d
    umount -R /mnt
    reboot



    login as root
    loadkeys no
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

