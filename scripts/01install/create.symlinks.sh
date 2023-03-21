#!/bin/sh

# to run:
# /dat.mnt/dotfiles/scripts/01install/create.symlinks.sh
# do NOT run as root, run as a regular user!

ln -svf /dat.mnt/dotfiles/.aliases       ~

##ln -svf /dat.mnt/dotfiles/.config        ~
##ln -svf /dat.mnt/dotfiles/install.readme ~
##ln -svf /dat.mnt/dotfiles/scripts        ~
#ln -svf /dat.mnt/dotfiles/.vifm          ~
#ln -svf /dat.mnt/dotfiles/.vim           ~
#ln -svf /dat.mnt/dotfiles/scripts/dmenu  ~
#ln -svf /dat.mnt/dotfiles/.bash_logout   ~
#ln -svf /dat.mnt/dotfiles/.bash_profile  ~
#ln -svf /dat.mnt/dotfiles/.bashrc        ~
#ln -svf /dat.mnt/dotfiles/.gitconfig     ~
#ln -svf /dat.mnt/dotfiles/.lynxrc        ~
#ln -svf /dat.mnt/dotfiles/.tmux.conf     ~
#ln -svf /dat.mnt/dotfiles/.vimrc         ~
#ln -svf /dat.mnt/dotfiles/.xinitrc       ~
##ln -svf /dat.mnt/dotfiles/.zlogout       ~
##ln -svf /dat.mnt/dotfiles/.zprofile      ~
##ln -svf /dat.mnt/dotfiles/.zshrc         ~
#ln -svf /dat.mnt/dotfiles/dotf.update.sh ~

#ln -svf /dat.mnt/Pictures             ~
#ln -svf /dat.mnt/Downloads            ~
#ln -svf /dat.mnt/Documents            ~

#sudo #ln -svf /dat.mnt/dotfiles/etc.vconsole.conf   /etc/vconsole.conf
#sudo #ln -svf /dat.mnt/dotfiles/etc.pacman.conf   /etc/pacman.conf

ls -la --color ~ | grep --color dotfiles
ls -la --color /etc | grep --color dotfiles

# fonts
#sudo mkdir -p /usr/share/fonts
#sudo cp -vr /dat.mnt/dotfiles/adobe-source-code-pro /usr/share/fonts/adobe-source-code-pro
#ls -lah --color /usr/share/fonts

# comment next line if you want to copy to home of user root.
exit

#sudo #ln -svf /dat.mnt/dotfiles/.config        /root
#sudo #ln -svf /dat.mnt/dotfiles/.vifm          /root
#sudo #ln -svf /dat.mnt/dotfiles/.vim           /root
#sudo #ln -svf /dat.mnt/dotfiles/.aliases  /root
#sudo #ln -svf /dat.mnt/dotfiles/.bash_logout   /root
#sudo #ln -svf /dat.mnt/dotfiles/.bash_profile  /root
#sudo #ln -svf /dat.mnt/dotfiles/.bashrc        /root
#sudo #ln -svf /dat.mnt/dotfiles/.lynxrc        /root
#sudo #ln -svf /dat.mnt/dotfiles/.tmux.conf     /root
#sudo #ln -svf /dat.mnt/dotfiles/.vimrc         /root

echo $0

