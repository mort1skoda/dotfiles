printf "sourcing: $HOME/.bashrc \n"


# ----- set & shopt -----{{
sudo loadkeys no
set -o vi
shopt -s autocd
shopt -s expand_aliases
# }}}


# prompt {{{
# regular user
IS_TTY=$(echo $(tty) | grep tty)
if [ $IS_TTY ] || [ $TMUX ]
then
    PS1="\[$SHLVL \[$col_green\w\[\033[00m\]\n"
else
    PS1=" \[$SHLVL \[$col_green\w\[\033[00m\]\n"
fi

# root
if [ "$EUID" -eq 0 ]
    then PS1="#- \[\033[05;41m\]\w\[\033[00m\] -#\n"
fi
# }}}


# export{{
export            PATH='/usr/bin:/usr/local/bin:/usr/local/sbin:usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl'
#export            TERM='xterm-256color'
export           PAGER='less'
export          EDITOR='vim'
export          OPENER='xdg-open'
export       BAT_THEME='gruvbox-dark'
export XDG_CONFIG_HOME='/home/m/.config'

export LF_ICONS=""

# }}}


if [[ $TMUX ]]
then
    source ~/.bash_aliases
fi


if [[ $_GUI ]]
then
    source ~/.bash_aliases
    xset r rate 300 50 &
    xset q |grep --color rate
    xset q |grep --color -G "DPMS is Disabled"
    setxkbmap no &
fi
