## artix linux
### artix linux runit legacy bios



#### wget iso

    wget http://ftp.ludd.ltu.se/artix/iso/artix-base-runit-20220713-x86_64.iso



#### wget sig

    wget http://ftp.ludd.ltu.se/artix/iso/artix-base-runit-20220713-x86_64.iso



#### pgp

    pgp --auto-key-retrieve --verify artix-base-runit-20220713-x86_64.iso.sig artix-base-runit-20220713-x86_64.iso



#### dd

    s dd bs=4M if=artix-base-runit-20220713-x86_64.iso of=/dev/sdb conv=fsync oflag=direct status=progress



#### boot live medium

    asus k50ij: spam ESC



#### loadkeys

    ls -R /usr/share/kbd/keymaps
    loadkeys no



#### mount

    swapon /dev/sda5
    mount /dev/sda7 /mnt



#### wpa_supplicant

<pre>------------------------{{{
Introduction
WPA Supplicant = Wi-Fi Protected Access client.


 harware asus k50ij:

 sudo lspci -vvv | g -A10 network
 02:00.0 Network controller: Qualcomm Atheros AR9285 Wireless Network Adapter (PCI-Express) (rev 01)
        Subsystem: AzureWave AW-NE785 / AW-NE785H 802.11bgn Wireless Full or Half-size Mini PCIe Card
        Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
        Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
         Latency: 0, Cache Line Size: 32 bytes
         Interrupt: pin A routed to IRQ 17
         Region 0: Memory at feaf0000 (64-bit, non-prefetchable) [size=64K]
         Capabilities: [40] Power Management version 3
                 Flags: PMEClk- DSI- D1+ D2- AuxCurrent=375mA PME(D0+,D1+,D2-,D3hot+,D3cold+)
                 Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
         Capabilities: [50] MSI: Enable- Count=1/1 Maskable- 64bit-

 Show kernel driver:
 lspci -k | g Network -A3 | g Kernel
         Kernel driver in use: ath9k
         Kernel modules: ath9k


sudo dmesg from arch systemd on asus k50ij:

s dmesg | grep AR9285 -A11
[    7.012654] ieee80211 phy0: Atheros AR9285 Rev:2 mem=0xffffc20e80990000, irq=17
[    7.026197] ath9k 0000:02:00.0 wlp2s0: renamed from wlan0
[    8.534409] wlp2s0: authenticate with 74:3a:ef:80:68:d8
[    8.534453] wlp2s0: 80 MHz not supported, disabling VHT
[    8.547889] wlp2s0: send auth to 74:3a:ef:80:68:d8 (try 1/3)
[    8.549691] wlp2s0: authenticated
[    8.551766] wlp2s0: associate with 74:3a:ef:80:68:d8 (try 1/3)
[    8.564091] wlp2s0: RX AssocResp from 74:3a:ef:80:68:d8 (capab=0x11 status=0 aid=5)
[    8.564222] wlp2s0: associated
[    8.681848] wlp2s0: Limiting TX power to 20 (20 - 0) dBm as advertised by 74:3a:ef:80:68:d8
[    8.681939] IPv6: ADDRCONF(NETDEV_CHANGE): wlp2s0: link becomes ready


</pre>-----------------------}}}

    lspci -k    if usb dongle: lsusb -v
    dmesg | grep -i AR9285 -A10 
    ip link
    ip a
    ip link set wlan0 up
    rfkill
    rfkill unblock wifi
    sudo dmesg | grep firmware
    sudo dmesg | grep -i microcode


    vi /etc/wpa_supplicant/wpa_supplicant.conf
    ctrl_interface=/run/wpa_supplicant
    update_config=1

    wpa_supplicant -B wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf
    wpa_cli

    >scan
    >scan_results
    >add_network
    >set_network 0 ssid "103B 2.4"
    >set_network 0 psk "sdbyorgufjuad"
    >enable_network 0
    >save_config
    >quit

    or
    wpa_passphrase "103B 2.4" "sdbyorgufjuad"
    wpa_supplicant -B wlan0 -c (wpa_passphrase "103B 2.4" "sdbyorgufjuad" 

    Note: Because of the process substitution,
    you cannot run this command with sudo
    and must use a root shell

    dhcpcd ???

    ip a
    ping -c4 artixlinux.org



#### clock

    sv up ntpd



#### base system

    basestrap /mnt base base-devel runit elogind-runit



#### kernel

    basestrap /mnt linux linux-firmware



#### ucode

    basestrap /mnt intel-ucode



#### openssh vim

    basestrap /mnt openssh vim





