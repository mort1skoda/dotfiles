## gui.md

### tested with:
    
    archlinux legacy bios boot systemd  asus.k50
    archlinux uefi boot systemd         giga.am1

    artix legacy bios boot runit        asus.k50



#### -- following archlinux wiki

    [wiki](https://wiki.archlinux.org/title/General_recommendations)



#### -- install xorg

    lspci | g vga
    pm -S xorg-server xorg-xinit xf86-video-amdgpu/xf86-video-intel



#### -- install suckless

    ## DWM ###
    git clone https://git.suckless.org/dwm
    mv dwm dwm_git
    pm -S libxft  xorg-xset    make   pkg-config 
    cd dwm_git
    ,mci     (or: sudo make clean install)
     
    curl --output dwm.git dl.suckless.org/dwm/dwm-6.4.tar.gz
    tar -xvf dwm-6.4.tar.gz
    pm -S make
    cd dwm-6.4
    sudo make clean install

    wget dl.suckless.org/st/st-0.9.tar.gz
    tar -xvf st-0.9.tar.gz
    pm -S pkg-config
    cd st-0.9
    s make clean install

    wget dl.suckless.org/tools/dmenu-5.2.tar.gz
    tar -xvf dmenu-5.2.tar.gz
    cd dmenu-5.2
    s make clean install



#### -- install yay

    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    sudo pacman yay



#### -- librewolf

    yay librewolf


