printf "    sourcing=$HOME/.bashrc -> "

# {{{
set -o vi
shopt -s autocd
shopt -s expand_aliases
# }}}

# prompt {{{
# regular user
IS_TTY=$(echo $(tty) | grep tty)
if [ $IS_TTY ] || [ $TMUX ]
then
    PS1="\[\033[32m\]\w\[\033[00m\]\n"
else
    PS1="\[\033[34m\]\w\[\033[00m\]\n"
fi

# root
if [ "$EUID" -eq 0 ]
    then PS1="#- \[\033[05;41m\]\w\[\033[00m\] -#\n"
fi
# }}}

# export {{{
export            PATH='/usr/bin:/usr/local/sbin:/usr/local/bin:usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl'
export            TERM='xterm-256color'
export           PAGER='less'
export          EDITOR='vim'
export          OPENER='xdg-open'
export       BAT_THEME='gruvbox-dark'
export XDG_CONFIG_HOME='/home/m/.config'
# }}}

source ~/.aliases

echo

