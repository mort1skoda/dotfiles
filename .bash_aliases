echo "~/.bash_aliases"


#--- header ------------------------------------------------{{{
# Author: Morty Hawk
# Email.: <mort1skoda@gmail.com>

# This file is source by .bashrc

# ff or za to toggle folds.
# ag to grep for aliases.
# cag to grep for everything in this file. 
# Example:
# ag vim    will list all aliases that contains 'vim'
# cag vim   will list all accourences of 'vim' in this file.

unalias -a
#-----------------------------------------------------------}}}


#--- audio ------------------------------------------------{{{
alias vol='pavucontrol &'
#----------------------------------------------------------}}}


#--- shell --------------------------------------------------{{{
alias bl='bash --login'
alias zl='zsh --login'
alias sl='echo "Shell level = $SHLVL"'

# change directory:
alias .='ls'
alias ..='cd .. && ls -la --color --group-directories-first'
alias ...='cd ../.. && ls -la --color --group-directories-first'
alias .r='cd / && ls -la --color --group-directories-first'
alias .rr='cd /root && ls -la --color --group-directories-first'
alias .h='cd ~ && ls -la --color --group-directories-first'
alias .d='cd /dat.mnt/ && ls -la --color --group-directories-first'
alias .dd='cd /dat.mnt/dotfiles && l'

# windows C:\ and D:\
alias .wc='cd /mnt/c && ls -la --color --group-directories-first'
alias .wd='cd /mnt/d && ls -la --color --group-directories-first'

# list directories:
alias l='ls -lah --color --group-directories-first'
alias ll='ls -l --color --group-directories-first'
alias la='ls -a --color --group-directories-first'
alias ls='ls --color --group-directories-first'
alias lg='ls -la --color --group-directories-first | grep -i --color '
alias md='mkdir -p'
alias rd='rmdir -p'
alias wl='watch --color ls -la --color --group-directories-first'

# cat aliases then grep for <token>
alias ag='alias | grep -i --color '
alias cag='source ~/.bash_aliases && cat ~/.bash_aliases | grep -i --color '

# su  =  su root  by default in bash. 

# shortcuts:
alias c='/home/m/.config/lf/batc.sh'
alias e="echo "
alias g='grep -i --color=auto'
alias hg='cat .bash_history | grep -i '
alias os='cat /etc/os-release'
alias wa='whoami'

#
# package managers:
alias sai='sudo apt install '
alias sau='sudo apt update -y && sudo apt upgrade -y && autoremove'
#--- update and install
alias pu='sudo pacman --noconfirm -Syyu'
alias pi='sudo pacman --noconfirm -S '

alias rb='sudo reboot'
alias sd="sudo shutdown -h now"


# quit or exit shell.  same as quiting vim (whitout save)
alias q='exit'
#---------------------------------------------------------}}}


#--- filesystem --------------------{{{
alias blkid='sudo blkid'
alias lbl="lsblk -o NAME,MODEL,PARTTYPENAME,LABEL,FSTYPE,SIZE,FSUSED,MOUNTPOINTS,SERIAL"
alias lsblk='lsblk'
alias cp="cp -iv"
alias mv='mv -iv '
alias rm='rm -vrf '
#... .......... ....................}}}


#--- edit files ------------------------------------------------{{{
alias v='vim'
alias vi='vim'
alias ea='vim ~/.bash_aliases && source ~/.bash_aliases'
alias eb='vim ~/.bashrc && source ~/.bashrc'
alias ez='vim ~/.zshrc && source ~/.zshrc'
alias ebp='vim ~/.bash_profile && source ~/.bash_profile'
alias ev='vim ~/.vimrc'
alias evf='vim ~/.vifm/vifmrc.vim'
alias ex='vim ~/.xinitrc'
alias edw='.dd && cd suckless/dwm-6*/ && vim config.h'
alias elf='vim ~/.config/lf/lfrc'
alias et='vim ~/.tmux.conf'
#---------------------------------------------------------------}}}


#--- source files ------------------------{{{ 
alias sbp='source ~/.bash_profile'
alias sb='source ~/.bashrc'
alias sa='source ~/.bash_aliases'
alias sz='source ~/.zshrc'
# ---------------------------------------}}}


#--- start programs -------------------------------------------------{{{
alias ht="htop"
alias vf='vifm /home/m /dat.mnt/'
alias x='startx'
alias a='alias' #list all aliases
alias s='sudo'
alias gv='gvim '
# clear screen:
alias cs='clear'
alias nf="clear && neofetch && sl"
alias wnf="watch --color neofetch"

alias st='st'
alias lf='lf'
alias vf='vifm'
alias ff='firefox &'
alias lw='librewolf &'
alias sf='surf https://suckless.org &'
alias siv='nsxiv'
#--------------------------------------------------------------------}}}#


#--- git ---------------------------------------------------{{{
DATE=$(date +"[%Y-%m-%d %H:%M:%S]")
#echo $DATE  
alias gss="git status --short"
alias gs="git branch && git status && git remote -v | grep --color -m1 origin"
alias gsv="git status --verbose"
alias gpl="git pull"
alias gr='git remote -v'
alias gc='source ~/.bash_aliases && git commit -m "$DATE"'
alias gco='git checkout '
#TODO: make gc a function so it updates the date correctly
alias ga='git add'
alias gaa='git add --all && git status --short'
alias gp='git push'
#
alias gb='git branch'
alias grc='git rm -r --cached '
alias grl='git reflog '
alias gcl='git clone'
alias gacp='git add --all && gc && gp'
# mapleader = , here , is vim 
alias egi='vim .gitignore'
alias egc='vim ~/.gitconfig'
alias du='/dat.mnt/dotfiles/dotf.update.sh'

#---------------------------------------------------------}}}


#--- tmux --------------------------------------------------{{{
# tm = tmux, start a new tmux session
alias tm="cd ~/ && tmux"
# tl = tmux list
alias tl='tmux ls'
# ta=tmux attach -t [enter session-name from tl]
alias ta='cd ~/ && tmux a -t '
# et = edit .tmux.conf
alias et='vim ~/.tmux.conf'
#-----------------------------------------------------------}}}


#--- openbox -----------------------------------------{{{
alias or='openbox --reconfigure'
#-----------------------------------------------------}}}


#--- network -----------------------------------------------{{{
alias ip="ip -color=auto"
alias wip='watch --color -n1 ip -color a'
#-----------------------------------------------------------}}}


#--- make --------------------------------------------------{{{
alias ,mh='make help'
alias ,mv='make vars'
alias ,mc='make clean && l'
alias ,mci='sudo make clean install && make clean && l'
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
alias nodep="pacman -Qdtq"
alias qdtq='sudo pacman -R "$(pacman -Qdtq)" '

#----------------------------------------------------------}}}


#-- systemd -----------------------------------------------{{{
alias ss='sudo systemctl status '
#.........................................................}}}


#--- footer ------------------------------------------------{{{
#shopt -s expand_aliases
#source .bash_aliases
#echo    "                Sourced:" $ALIASES 
#echo -e "---|---|....end.." $ALIASES "....|---|---"
#-----------------------------------------------------------}}}



