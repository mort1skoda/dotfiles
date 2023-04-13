echo "Copy system files from here"
sudo rm -v /etc/pacman.conf
sudo cp -v /dat.mnt/dotfiles/01minimal/etc.pacman.conf /etc/pacman.conf

# vconsolefonts: /usr/share/kbd/consolefonts
sudo rm -v /etc/vconsole.conf
sudo cp -v /dat.mnt/dotfiles/01minimal/etc.vconsole.conf /etc/vconsole.conf

