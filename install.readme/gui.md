## gui.md

### tested with:
    
    archlinux legacy bios boot systemd  asus.k50
    archlinux uefi boot systemd         giga.am1

    artix legacy bios boot runit        asus.k50



#### -- following archlinux wiki

    [wiki](https://wiki.archlinux.org/title/General_recommendations)



#### -- install xorg

    i xorg-server
    i xorg-xinit
    i xterm

    lspci | g vga
    pm -Ss xf86-video
    i xf86-video-intel



#### -- install suckless

    pi wget

    wget dl.suckless.org/dwm/dwm-6.4.tar.gz
    tar -xvf dwm-6.4.tar.gz
    cd dwm-6.4
    sudo make clean install

    wget dl.suckless.org/st/st-0.9.tar.gz
    tar -xvf st-0.9.tar.gz
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


