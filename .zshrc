echo "~/.zshrc"

stty -ixon

autoload -U colors && colors

#--- wifi -----------------------------{{{
sudo rfkill unblock wifi
#sudo systemctl start dhcpcd
#sudo wpa_supplicant -s -B -iwlan0 -c/etc/wpa_supplicant/wpa_supplicant-wlan0.conf
sudo wpa_supplicant -s -B -iwlp2s0 -c/etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf
#sudo ip link set wlan0 up
#sudo ip link set wlp2s0 up
sudo ip link set enp3s0 down
#--------------------------------------}}}

#--- Lines configured by zsh-newuser-install{{{
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# }}}

#--- The following lines were added by compinstall{{{
zstyle :compinstall filename '/home/m/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# }}}

#--- promtp {{{
PS1="$fg[yellow]%}%~ %{$reset_color%}%"$'\n\n'""

#red prompt for root
if [ "$EUID" -eq 0 ]
    then PS1="$fg[red]%}%~ %{$reset_color%}% "
fi
# }}}

#--- exports ---{{{
export TERM='xterm-256color'
export EDITOR='vim'
export OPENER='xdg-open'
export BAT_THEME="gruvbox-dark"
# }}}

#--- source ---{{{
source ~/.bash_aliases
source /dat.mnt/dotfiles/gruvbox.zsh
# }}}


