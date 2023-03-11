#" lfrc.vim
#

#--- options -----------------------------------------{{{
set autoquit on 
set shell sh 
# set '-eu' options for shell commands {{{
# These options are used to have safer shell commands. Option '-e' is used to
# exit on error and option '-u' is used to give error for unset variables.
# Option '-f' disables pathname expansion which can be useful when $f, $fs, and
# $fx variables contain names with '*' or '?' characters. However, this option
# is used selectively within individual commands as it can be limiting at
# times.}}}
set shellopts '-eu'
# set internal field separator (IFS) to #\n" for shell commands {{{
# This is useful to automatically split file names in $fs and $fx properly
# since default file separator used in these variables (i.e. 'filesep' option)
# is newline. You need to consider the values of these options and create your
# commands accordingly. }}}
set ifs "\n"
set hidden true
set info size:time
# leave some space at the top and the bottom of the screen
set scrolloff 10
#set previewer ~/go/bin/pistol
set previewer /home/m/.config/lf/batc.sh

#set number on
set incsearch on
set incfilter on

#.....................................................}}}


#--- git -------------------------------------------------------{{{
map gs ${{clear; git status; echo "press ENTER"; read ENTER}}
map gaa ${{git add --all; git status --short; echo "press ENTER"; read ENTER}}
#...............................................................}}}


#--- movement ---{{{
map j _down
cmd _down :{{
    down
    echo "j = down"
}}


map J :half-down :echo "hd"
map K :half-up
map e :echo "e"

#map <c-s> _source
#cmd _source :{{
#    source /home/m/.config/lf/lfrc
#    reload
#    echo 'sourced: /home/m/.config/lf/lfrc  reloaded: lf'
#}}

#map gh cd ~
map .. cd ..
map ./ cd /
map .da cd /dat.mnt
map .df cd /dat.mnt/dotfiles
map .h cd ~
map .lf cd ~/.config/lf
map .rr cd /root
map .sl cd ~/.config/suckless
map .dl cd /dat.mnt/Downloads


#cmd delete ${{
     #set -f
     #printf "$fx\n"
     #printf "delete?[y/n]"
     #read ans
     #[ "$ans" = "y" ] && rm -rf $fx
#}}


#}}}


#--- use enter for shell commands{{{
map <enter> shell-wait
#map <c-enter> !echo '!echo enter'
#map <enter> !echo '!!!! echo enter !!!!'
# }}}


# execute current file (must be executable){{{
map x $$f
map X !$f
# }}}


# dedicated keys for file opener actions{{{
#map o &mimeopen $f
map O $mimeopen --ask $f
map o :open $f
# }}}


# define a custom 'open' command{{{
# This command is called when current file is not a directory. You may want to
# use either file extensions and/or mime types here. Below uses an editor for
# text files and a file opener for the rest.
cmd open &{{
    case $(file --mime-type -Lb $f) in
        text/*) lf -remote "send $id \$$EDITOR \$fx";;
        *) for f in $fx; do $OPENER $f > /dev/null 2> /dev/null & done;;
    esac
}}
# }}}


# define a custom 'rename' command without prompt for overwrite{{{
# cmd rename %[ -e $1 ] && printf "file exists" || mv $f $1
# map r push :rename<space>
# }}}


#--- extract and compress ---{{{
# extract the current file with the right command
# (xkcd link: https://xkcd.com/1168/)
map e _extract 
cmd _extract ${{
    set -f
    case $f in
        *.tar.bz|*.tar.bz2|*.tbz|*.tbz2) tar xjvf $f;;
        *.tar.gz|*.tgz) tar xzvf $f;;
        *.tar.xz|*.txz) tar xJvf $f;;
        *.zip) unzip $f;;
        *.rar) unrar x $f;;
        *.7z) 7z x $f;;
    esac
}}

# compress current file or selected files with tar and gunzip
cmd tar ${{
    set -f
    mkdir $1
    cp -r $fx $1
    tar czf $1.tar.gz $1
    rm -rf $1
}}

# compress current file or selected files with zip
cmd zip ${{
    set -f
    mkdir $1
    cp -r $fx $1
    zip -r $1.zip $1
    rm -rf $1
}}
# }}}


#--- select yank move delete  change paste undo ------------------------{{{
map <space> _select_file
cmd _select_file :{{
    toggle
    down
    echo "space = toggle select file, y to yank, D to Delete, esc to unselect"
}}

map <c-a> _select_all
cmd _select_all :{{
    invert
    echo "c-s = v = select all / invert selection"
}}

map y _yank
cmd _yank :{{
    copy
    echo "y = yank (yellow)"
}}

map m _move
cmd _move :{{
    cut
    echo "m = d = move (red)"
}}

#cmd delete ${{
#     set -f
#     printf "$fx\n"
#     printf "delete?[y/n]"
#     read ans
#     [ "$ans" = "y" ] && rm -rf $fx
# }}

# make sure lf_ folder exists
# % = shell-pipe 
%mkdir -p ~/.lf_trash
# move current file or selected files to  folder
# (also see 'man mv' for backup/overwrite options)
map D _trash
cmd _trash %{{
    # set -f  disable the globbing. (/
    set -f
    mv $fx ~/.lf_trash
    echo "D = Delete / move to ~/.lf_trash"
}}
#----------------------------------------------------------}}}


#--- esc save source quit ---------------------------------{{{
map <esc> _escape
cmd _escape :{{
    unselect
    clear
    echo "esc = unselect & clear"
}}

#save source
map <c-s> _source_reload
cmd _source_reload :{{
    source /home/m/.config/lf/lfrc
    reload
    echo 'sourced: /home/m/.config/lf/lfrc  reloaded: lf'
}}

map <c-q> :quit
map q :quit
#.................................................}}}


#--- statusline -----------------------------------------{{{
:echo 'Welcome to lf'
#--------------------------------------------------------}}}

