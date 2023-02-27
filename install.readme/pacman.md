# pacman
## info from man 8 pacman

<pre>
sudo pacman (operation) [options] [targets] 
</pre>

### operations
#### S  --sync

    update system:
    sudo pacman -Syyu


#### R  --remove

    remove package:
    s pacman -R _pkg_mame_  (s  = my alias for: sudo)


#### Q  --query

    list all files owned by a given pkg.
    pm -Ql                  (pm = my alias for: sudo pacman)

    display pkgs that are members of a named group: 
    pm -Qg

#### T  --deptest

    --deptest


#### F  --files

---

### [options]

    -v  --verbose




---


#### paccache

    remove all pacman cache, except the 3 most recent
    s paccache -r

---


#### pactree

    view dependency tree of a package:
    pactree <pkg_name>
    e.g.
    pactree librewolf


---


#### logs

    bat /var/log/pacman.log
    vim /var/log/pacman.log
   

---


#### conf

    sudo vim /etc/pacman.conf 


