printf "    sourcing: ~/.aliases \n"
unalias -a

#--- /home/m/.aliases directories navigate ---{{{
alias ...='cd ../.. && ls -lah --color --group-directories-first'
alias ..='cd .. && ls -lah --color --group-directories-first'
alias .df='cd /dat.mnt/dotfiles && ls -lah --color --group-directories-first'
alias .dl='cd /dat.mnt/Downloads && ls -lah --color --group-directories-first'
alias .dm='cd /dat.mnt/ && ls -lah --color --group-directories-first'
alias .h='cd ~ && ls -lah --color --group-directories-first'
alias .dwm='cd /dat.mnt/dotfiles/.config/suckless/from.git/dwm_git && l' 
alias .st='cd /dat.mnt/dotfiles/.config/suckless/from.git/st_git && l' 
alias .lf='cd ~/.config/lf && l'
alias .pi='cd /dat.mnt/Pictures && ls -lah --color --group-directories-first'
alias .r='cd / && ls -lah --color --group-directories-first'
alias .rr='cd /root && ls -lah --color --group-directories-first'
alias .sl='cd /dat.mnt/dotfiles/.config/suckless/from.git && l'
alias .ss='cd /dat.mnt/Screenshots && l'
alias .wp='cd /dat.mnt/Wallpapers && l'
# }}}

#--- .aliases directories list ---{{{
alias  .='ls'
alias  l='ls -lah --color --group-directories-first'
alias ll='ls -lh  --color --group-directories-first'
alias la='ls -ah  --color --group-directories-first'
alias ls='ls      --color --group-directories-first'
# }}}

#--- .aliases directories watch ---{{{
alias wl='watch --color ls -lah --color --group-directories-first'
# }}}

#--- .aliases directories make remove ---{{{
alias md='sudo mkdir -pv '
alias rd='rmdir -pv '
# }}}







#--- files edit ------------------------------------------------{{{
alias ,='vim'
alias e='vim'
alias ea='echo && vim ~/.bash_aliases && source ~/.bash_aliases'
alias eb='vim ~/.bashrc && source ~/.bashrc'
alias ebc='echo && vim ~/.bash_colors && source ~/.bash_colors'
alias ebl='vim ~/.bash_logout && source ~/.bash_profile'
alias ebp='vim ~/.bash_profile && sbp'
alias ecdh='vim config.def.h'
alias elf='vim ~/.config/lf/lfrc'
alias enf='vim ~/.config/neofetch/config.conf'
alias et='vim ~/.tmux.conf'
alias ev='vim ~/.vimrc'
alias evf='vim ~/.vifm/vifmrc.vim'
alias ex='vim ~/.xinitrc'
alias v='vim'
alias vi='vim'
#---------------------------------------------------------------}}}

#--- files source ------------------------{{{ 
alias s1='sbp'
alias s2='sb'
alias s3='sa'
alias s4='sbl'
alias sa='source ~/.aliases'
alias sb='source ~/.bashrc'
alias sbc='source ~/.bash_colors'
alias sbl='source ~/.bash_logout'
alias sbp='source ~/.bash_profile'
# ---------------------------------------}}}






#--- audio ------------------------------------------------{{{
alias vol='pavucontrol &'
#----------------------------------------------------------}}}

#--- shell --------------------------------------------------{{{
alias bl='bash --login'
alias zl='zsh --login'
alias sl='echo "Shell level = $SHLVL"'
#alias su='su root zsh'
#---------------------------------------------------------}}}

#--- cat/bat then grep <token> ---{{{
alias ag='alias | grep -i --color '
alias cag='source ~/.aliases && cat ~/.aliases | grep -i --color '
alias lg='ls -lah --color --group-directories-first | grep -i --color '
alias bag='source ~/.aliases && b ~/.aliases | grep -i --color '
alias hg='cat ~/.bash_history | grep -i '
# }}}

#--- shortcuts ---{{{
alias b='~/.config/lf/batc.sh '
alias c='cat '
alias e="echo "
alias g='grep -i --color=auto '
alias os='cat /etc/os-release'
alias wa='whoami'
alias wai='whoami'
# }}}

#--- package managers ---{{{
# debian:
alias sai='sudo apt install '
alias sau='sudo apt update -y && sudo apt upgrade -y && autoremove'
# arch:
alias u='sudo pacman --noconfirm -Syyu'
alias ur='echo -e "$col_red    #### REBOOTING ####    $col_00" && ud && sudo pacman --noconfirm -Syyu && sleep 1 && reboot'
alias i='sudo pacman -Syyu '
alias pm='sudo pacman '
#
alias reflector='sudo reflector --verbose --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist && bat /etc/pacman.d/mirrorlist'
#
# }}}

#--- filesystem --------------------{{{
#alias blkid='sudo blkid'
alias lbl="lsblk -o NAME,MODEL,PARTTYPENAME,LABEL,FSTYPE,SIZE,FSUSED,MOUNTPOINTS,SERIAL"
alias lsblk='lsblk'
alias cp="cp -iv"
alias mv='mv -iv '
alias rm='sudo rm -ivrf '
alias co='sudo chown -vR m:m'
alias cm='sudo chmod +x'
alias mount='sudo mount --mkdir '
#... .......... ....................}}}


#--- start programs -------------------------------------------------{{{
alias ht="htop"
alias vf='vifm /home/m /dat.mnt/'
alias x='/dat.mnt/dotfiles/scripts/wrap_startx.sh'
alias a='alias && alias | wc -l && echo "Total aliases" ' #list all aliases
alias s='sudo'
alias gv='gvim '
# clear screen:
alias cs='clear'
alias nf='clear && neofetch && echo "Shell level = $SHLVL" && clear -V && e $PATH'
alias wnf="watch --color -n5 neofetch --backend off"

alias st='st'
alias lf='lf'
alias vf='vifm'
alias ff='firefox &'
alias lw='librewolf &'
alias sf='surf https://suckless.org &'
alias sx='sxiv'
alias cal='cal -3m'
alias wtr='curl wttr.in/Porsgrunn'
alias lx='lxterminal &'
alias rx='urxvt &'
#--------------------------------------------------------------------}}}#

#--- git ---------------------------------------------------{{{
DATE=$(date +"[%Y-%m-%d %H:%M:%S]")
#echo $DATE  
alias date='source .bash_aliases && echo $DATE  sunrise:  sunset: '
alias gss="git status --short"
alias gs="git branch && git status && git remote -v | grep --color -m1 origin"
alias gsv="git status --verbose"
alias gpl="git pull"
alias gr='git remote -v'
alias gc='source ~/.aliases && git commit -m "$DATE"'
alias gco='git checkout '
#TODO: make gc a function so it updates the date correctly
alias ga='git add'
alias gaa='git add --all && git status --short'
alias gp='git push'

alias gb='git branch'
alias grc='git rm -r --cached '
alias grl='git reflog '
alias gcl='git clone'
alias gacp='git add --all && gc && gp'
# mapleader = , here , is vim 
alias egi='vim .gitignore'
alias egc='vim ~/.gitconfig'
alias ud='/dat.mnt/dotfiles/scripts/update.dotfiles.git.sh'

#---------------------------------------------------------}}}

#--- tmux --------------------------------------------------{{{
# tm = tmux, start a new tmux session
alias tm="/dat.mnt/dotfiles/scripts/wrap_tmux.sh"
# tl = tmux list
alias tl='tmux ls'
# ta=tmux attach -t [enter session-name from tl]
alias ta='cd ~/ && tmux a -t '
# et = edit .tmux.conf
alias et='vim ~/.tmux.conf'
#-----------------------------------------------------------}}}

#--- kernel ---{{{
alias un='uname -a'
alias dm='sudo dmesg'
#--------------}}}

#--- network -----------------------------------------------{{{
alias ip="ip -color=auto"
alias wip='watch --color -n15 ip -color a'
alias trm='transmission-remote'
#-----------------------------------------------------------}}}

#--- make --------------------------------------------------{{{
alias ,mh='make help'
alias ,mv='make vars'
alias ,mc='make clean && l'
alias ,mci='sudo rm -vf config.h && sudo make clean install && make clean && rm config.h && l'
alias ,ma='make all && l'
alias ,mm='make all'
alias ,mr='make run'
alias ,md='make dbg'
#-----------------------------------------------------------}}}

#--- debug ------------------------------------------------{{{
alias keycodes="sed -n l"
alias dbgvim='vim -V20 2>&1 | tee vim.log.vim'

# remove all packages that don't depend on other packages
# you may have to do this over several times.
alias Qdt="pacman -Qdt"
alias Qdtq='sudo pacman -R "$(pacman -Qdtq)"'
alias kill='sudo kill '
#----------------------------------------------------------}}}

#--- systemd -----------------------------------------------{{{
alias stat='sudo systemctl status '
alias enab='sudo systemctl enable '
alias star='sudo systemctl start '
alias stop='sudo systemctl stop '
alias disa='sudo systemctl disable '
#.........................................................}}}

#--- X11 ---{{{
alias sw='st swarp 1900 1200'
#---}}}

#--- BOOT GRUB QUIT REBOOT SHUTDOWN ---{{{
alias q='exit'
alias rb='ur'
alias sd="ud && sudo shutdown -h now"
alias grub='sudo vim /dat.mnt/dotfiles/etc.default.grub'
# }}}

#--- footer ------------------------------------------------{{{
shopt -s expand_aliases
#-----------------------------------------------------------}}}


