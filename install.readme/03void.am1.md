## Void linux install tutorial

#### OS..........: Void linux x86_64
#### Machine.....: Gigabyte AM1H
#### Bios........: UEFI
#### Init system.: runit
#### Network.....: Ethernet eth0
---

#### create live usb

    .dl
    curl https://repo-default.voidlinux.org/live/current/void-live-x86_64-musl-20221001-base.iso --output void-musl-live.iso
    cp void-musl-live.iso /dev/sdb

#### boot

    spam 
    
#### login

    user...: root
    passwd.: voidlinux


#### install

    void-installer

