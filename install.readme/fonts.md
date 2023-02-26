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

</pre> 

<pre>
    BLFS
    Arch
    www.link
    www.link
    ....
[wikipedia fontconfig](https://en.wikipedia.org/wiki/Fontconfig)
</pre>

#### info commands

    ls /usr/bin |g 'fc-' |b

    fc-cache -v
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




#### refs

   [blfs](linuxfromscratch.org)


