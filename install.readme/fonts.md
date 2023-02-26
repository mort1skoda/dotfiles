## fonts
### X11 

#### find info

   [arch fonts](https://wiki.archlinux.org/title/fonts) 
 
   [blfs consolefonts](https://www.linuxfromscratch.org/blfs/view/stable/postlfs/console-fonts.html)

   [blfs fontconfig](https://www.linuxfromscratch.org/blfs/view/stable/general/fontconfig.html)
<pre>
fc-cache        is used to create font information caches
fc-cat          is used to read font information caches
fc-conflist     shows the ruleset files information on the system
fc-list         is used to create font lists
fc-match        is used to match available fonts, or find fonts that match a given pattern
fc-pattern      is used to parse pattern (empty by deafult) and show the parsed result
fc-query        qeury fonts files and print resulting patterns
fc-scan         scan font files and directories, and print resulting patterns
fc-validate     is used to validate font files

(libfontconfig.so)
contains functions used by fontconfig programs and also by other programs
to configure or customize font access
</pre> 

   [blfs xorg fonts](https://www.linuxfromscrtach.org/blfs/view/stable/x/x7font.html


   [asdf](google.com)

   [wikipedia fontconfig](https://en.wikipedia.org/wiki/Fontconfig)



#### info commands

    ls /usr/bin |g 'fc-' |b

    fc-cache -v     (sudo pacman -S fontconfig)
    fc-cat
    fc-conflist
    fc-list
    fc-match
    fc-pattern
    fc-query
    fc-scan

    xset q | bat    (i xorg-xset)
    xset q|b
    xdf             (i xorg-xdf)
    font-manager  -> ali: fm
  

#### display fonts

    xdf



#### install fonts

    font-config




