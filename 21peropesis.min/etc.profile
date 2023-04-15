#This file contains some system settings used by shell.


#Values of some environment variables.
PS1='\u@\h:\w# '
PS2='> '
export PS1 PS2


#The umask command specifies the permissions that does not to be given out to the newly created file or directory.
umask 022


#Some of the defined commands or command options (by longradix).
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -gGahlF --color'
alias la='ls -A'
alias ll='ls -alF --color=auto'


#locale and font settings.
if [ -e "/usr/lib/locale/locale-archive" ]; then
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
setfont LatArCyrHeb-14 -m 8859-1
fi

#Set NumLock on by using setleds program.
setleds -D +num
