# archlinux install
## Gigabyte AM1M-S2H ver1
### Desktop

#### bootable usb

    curl --output arch.iso https://mirrors.dotsrc.org/archlinux/iso/2023.03.01/archlinux-2023.03.01-x86_64.iso

    sudo cp arch.iso /dev/sdb



#### -- initial settings -----------------------{{{

    loadkeys no
    setfont drdos8x14
    chsh -s /bin/zsh
    set -o vi
    /
    mkdir /dat.mnt
    mount /dev/sda7 /dat.mnt
    cd /dat.mnt/dotfiles
    ./create.symlinks.sh
    tm
    alt+v
    ins*
    v arc*leg*sys
#### -- ------- -------- -----------------------}}}

#### -- connect to wifi --------------------{{{

    in tmux:
    one pane for: 
    wip             = watch ip

    Option1 ---> using iwctl: 
    iwctl
    [iwd]# device list
    [iwd]# station wlan0 get-networks
    [iwd]# station wlan0 connect '103B 2.4'
    Passphrase: ********
    [iwd]# ctrl-d
    ip a
    ping -c4 archlinux.org

    Option2 ---> using wpa_supplicant:
    /etc/wpa*
    wpa_passphrase "103B 2.4" "sdbyorguf...." >> wlan0.conf
    wpa_supplicant -B -iwlan0 -c/etc/wpa_supplicant/wlan0.conf
    ip a
    ping -c4 archlinux.org

    Option3 ???? can we use networkmanager here? 

    i htop
    htop
    i git  
#### -- ------- -- -------- --------------------}}}

#### -- work on the host -----------------------{{{

    Switch between tty1-6: Alt+arrow
    You can use lynx to read instructions.
    lynx archlinux.org
    o=option to set vi keys
    Or use tmux and read this document. 
#### -- ---- -- --- ---- -----------------------}}}

#### -- work via ssh client --------------------{{{

    rm .ssh
    ssh root@10.0.0.90
    set -o vi
    alias l='ls -la --color --group-directories-first'
#### -- ---- --- --- ------ --------------------}}}

#### -- partiton ----------------------------{{{

    fdisk -l
    lsblk
    blkid

    fdisk /dev/<the_disk_to_be_partitioned>

<pre>
Note:
At this point I went into Windows 10 and run MiniTool Partition Wizard
To make a swap partition and 3 linux installation partitons.
</pre>
#### -- -------- ----------------------------}}}

#### -- format ------------------------------{{{

    lsblk
    mkswap /dev/sda5
    mkfs.ext4 /dev/sda6
    lsblk    

---

Provide an image here to see the layout of the ssd on asus.k50

---

#### -- ------- -----------------------------}}}

#### -- mount the file system ----------------{{{

    lsblk
    swapon /dev/sda5
    mount /dev/sda6 /mnt
    lslbk
    l /mnt
#### -- ----- --- ---- ------ ----------------}}}

#### -- pacstrap -------------------------------{{{

    watch -n10 ls -la /mnt
    lscpu |g Vendor
    pacstrap -iK /mnt intel-ucode
    pacstrap -iK /mnt base base-devel
    pacstrap -iK /mnt linux linux-firware
    pacstrap -iK /mnt wpa_supplicant dhcpcd
    pacstrap -iK /mnt vim sudo zsh bat htop git github-cli

    pacstrap -iK /mnt openssh 
    
    #pacstrap -K /mnt networkmanager
#### -- -------- ------------------------------}}} 

#### -- fstab --------------------------------{{{

    cat /mnt/etc/fstab
    genfstab -U /mnt >> /mnt/etc/fstab
    cat /mnt/etc/fstab

    add dat.mnt:
    blkid /dev/sda7
    blkid /dev/sda7 >> /mnt/etc/fstab
    manually edit fstab...    
#### -- ----- --------------------------------}}}

#### -- chroot ---------------------------------{{{

    arch-chroot /mnt
    set -o vi
    alias l='ls -la --color --group-directories-first'

    cd /
    mkdir /dat.mnt
    pacman -S zsh
    mount /dev/sda7 /dat.mnt
    lsblk
    cd /dat*/dot*
    ./create.symlinks.sh    
    zsh
#### -- ------ ---------------------------------}}}

#### -- time zone ------------------------------{{{

    ln -svf /usr/share/zoneinfo/Europa/Oslo /etc/localtime
    hwclock --systohc
#### -- ---- ---- ------------------------------}}}

#### -- localiztion ----------------------------{{{

    vim /etc/locale.gen     [uncomment en_US.UTF-8 UTF-8]
    cat /etc/locale.gen | gdat.mnt en_US
    locale-gen

    vim /etc/locale.conf    [LANG=en_US.UTF-8]   (esc then shift zz to quit)

    this is in dotfiles - vim /etc/vconsole.conf  [KEYMAP=no]
    setfont drdos8x14

#### -- ----------- ----------------------------}}}

#### -- network confiuration -------------------{{{

    vim /etc/hostname       [arch.k50]

    pacman -S networkmanager
    systemctl enable NetworkManager.service

    or:
    pacman -S wpa_supplicant dhcpcd
    ####systemctl enable wpa_supplicant
    vim /etc/dhcpcd.conf        [add noarp]
    systemctl enable dhcpcd

    pacman -S openssh
    systemctl enable sshd
#### -- ------- ------------ -------------------}}}

#### -- root password --------------------------{{{

    passwd
#### -- ---- -------- --------------------------}}}

#### -- bootloader ----------------------------{{{

    pacman -S grub os-prober

    grub-install --target=i386-pc /dev/sda

    # vim /etc/default/grub   [uncomment: GRUB_DISABLE_OS_PROBER=false] 

    grub-mkconfig -o /boot/grub/grub.cfg


    pacman -S ntfs-3g       (if windows)

    mount /dev/sda1 /mnt/sda1
    grub-mkconfig -o /boot/grub/grub.cfg
#### -- ---------- ----------------------------}}}

#### -- reboot --------------------------------{{{

    ctrl-d
    umount -R /mnt
    reboot
#### -- ------ --------------------------------}}}

#### -- first time reboot settings ------------{{{

    login as root
    set -o vi
    alias l='ls -la --color --group-directories-first'
#### -- ----- ---- ------ -------- ------------}}}    

#### -- connect to wifi -----------------------{{{

   Using wpa_supplicant:
    wpa_passphrase "103B 2.4" "sdbyorguf...."\
        >> /etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf
    wpa_supplicant -B -iwlp2s0\
        -c/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf

    see my .zprofile or .bash_profile file

   Or using networkmanager:
    nmcli device wifi list
    nmcli device wifi connect '103B 2.4' password sdbyorguf....


    ip -color a
    ping -c4 archlinux.org
#### -- ------- -- ---- -----------------------}}}

#### -- useradd ------------------------------{{{

    useradd -mG wheel m
    passwd m
#### -- --- ---- -----------------------------}}}

#### -- visudo -------------------------------{{{

    EDITOR=/usr/bin/vim visudo
        [add at top: Defaults editor=/usr/bin/vim]
        [uncomment %wheel]
#### -- ------ -------------------------------}}}

#### -- logout login ------------------------{{{

    exit to logout
    login as m
#### -- ------ ----- ------------------------}}}

#### -- git ---------------------------------{{{

    sudo mount /dev/sda7 /dat.mnt
    sudo pacman -S git github-cli
    gh auth login

    sudo mkdir dat.mnt/
    sudo chown -R m:m /dat.mnt
    cd /dat*/dot*

    (((git clone https://github.com/mort1skoda/dotfiles.git)))
#### -- --- ---------------------------------}}} 

#### -- create symlinks ---------------------------{{{

   "Integrate your archlinux installation with your dotfiles dat.mnt"
   
   Create symlink in ~ that points to
   /dat.mnt/dotfiles/

There is a shell-script file (.sh) in /dat.mnt/dotfiles/ named:
create.symlinks.sh that creates theese symlinks.

    ./dat.mnt/dotfiles/create.symlinks.sh
#### -- ------ -------- ---------------------------}}}


