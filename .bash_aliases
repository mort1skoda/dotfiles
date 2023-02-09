echo "~/.bash_aliases"

unalias -a

#--- header ------------------------------------------------{{{
#
#----------------------------------------------------------
#---      ~/.bash_aliases      ----
#----------------------------------


# Author: Morten Håkestad
#
# This script file is source by .bashrc
#
# Use ff or za to toggle folds.
# Use ag to grep for aliases.
# Use cag to grep for everything in this file. 
# Example:
# ag vim    will list all aliases that contains 'vim'
# cag vim   will list all accourences of 'vim' in this file.

#echo -e "---|---|....start" $ALIASES "....|---|---"
#-----------------------------------------------------------}}}


#--- bash --------------------------------------------------{{{
alias bl='bash --login'

# change directory:
alias ..='cd .. && ls -la --color --group-directories-first'
alias ...='cd ../.. && ls -la --color --group-directories-first'
alias .r='cd / && ls -la --color --group-directories-first'
alias .h='cd ~ && ls -la --color --group-directories-first && gb && gs'
alias .d='cd /home/sda4data && ls -la --color --group-directories-first'

# windows C:\ and D:\
alias .wc='cd /mnt/c && ls -la --color --group-directories-first'
alias .wd='cd /mnt/d && ls -la --color --group-directories-first'

# list directories:
alias l='ls -la --color --group-directories-first && git branch && git status && git remote -v | grep -m1 github'
alias ll='ls -l --color --group-directories-first'
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
alias c='cat'
alias e="echo "
alias g='grep --color=auto'
alias hg='cat .bash_history | grep -i '
alias os='cat /etc/os-release'
alias wa='whoami'

# source profile, bashrc, aliases 
alias sbp='source ~/.bash_profile'
alias sb='source ~/.bashrc'
alias sa='source ~/.bash_aliases'

# package managers:
alias sai='sudo apt install '
alias sau='sudo apt update -y && sudo apt upgrade -y && autoremove'
alias pu='sudo pacman -Syyu'
alias pi='sudo pacman --noconfirm -S '

alias rb='sudo reboot'
alias sd="sudo shutdown -h now"

# filesystem:
alias lbl="lsblk -o NAME,MODEL,PARTTYPENAME,FSTYPE,SIZE,MOUNTPOINTS,SERIAL"
alias lsblk='lsblk -o NAME,MODEL,PARTTYPENAME,FSTYPE,SIZE,MOUNTPOINTS,SERIAL'
alias cp="cp -iv"
alias mv='mv -iv '
alias rm='rm -vrf '

# quit or exit shell.  same as quiting vim (whitout save)
alias q='exit'
#---------------------------------------------------------}}}


#--- edit files ------------------------------------------------{{{
alias v='vim'
alias vi='vim'
alias ea='vim ~/.bash_aliases && . ~/.bash_aliases'
alias eb='vim ~/.bashrc && . ~/.bashrc'
alias ebp='vim ~/.bash_profile && source ~/.bash_profile'
alias ev='vim ~/.vimrc'
alias evf='vim ~/.vifm/vifmrc.vim'
alias ex='vim ~/.xinitrc'
#---------------------------------------------------------------}}}


#--- start programs -------------------------------------------------{{{
alias bt="bashtop"
alias vf='vifm /home/m /rep/'
alias x='startx'
alias a='alias' #list all aliases
alias s='sudo'
alias gv='gvim '
# clear screen:
alias cs='clear'
alias nf="clear && neofetch"


alias lf='lf'
alias vf='vifm'
alias ff='firefox &'
#--------------------------------------------------------------------}}}#

#
#--- git ---------------------------------------------------{{{
DATE=$(date +"[%Y-%m-%d %H:%M:%S]")
#echo $DATE  
alias gss="git status --short"
alias gs="git status"
alias gsv="git status --verbose"
alias gpl="git pull"
alias gr='git remote -v'
alias gc='git commit -m "$DATE"'
alias gco='git checkout '
alias ga='git add'
alias gaa='git add --all && gs'
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
#-----------------------------------------------------------}}}


#--- make --------------------------------------------------{{{
alias ,mh='make help'
alias ,mv='make vars'
alias ,mc='make clean'
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


#--- footer ------------------------------------------------{{{
shopt -s expand_aliases
#source .bash_aliases
#echo    "                Sourced:" $ALIASES 
#echo -e "---|---|....end.." $ALIASES "....|---|---"
#-----------------------------------------------------------}}}



