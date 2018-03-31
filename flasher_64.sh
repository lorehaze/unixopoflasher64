#!/bin/bash
echo "###Oneplus One Flasher By MayurVirkar###"
echo "###V2 edit by lorehaze###"
echo "now it erases the existing partitions"
echo "before flashing the newest"	
echo "Make sure you run it as superuser"

fastboot devices
read -p "If you can see device connected then we are good to go!. Press any key to continue"

echo "Erasing modem"
fastboot erase modem
echo "Flashing Modem"
fastboot flash modem NON-HLOS.bin
sleep 2

echo "Erasing sbl1"
fastboot erase sbl1
echo "Flashing sbl1"
fastboot flash sbl1 sbl1.mbn
sleep 2

echo "Erasing dbi"
fastboot erase dbi
echo "Flashing dbi"
fastboot flash dbi sdi.mbn
sleep 2

echo "Erasing aboot"
fastboot erase aboot
echo "Flashing aboot"
fastboot flash aboot emmc_appsboot.mbn
sleep 2

echo "Erasing rpm"
fastboot erase rpm
echo "Flashing rpr"
fastboot flash rpm rpm.mbn
sleep 2

echo "Erasing tz"
fastboot erase tz
echo "Flashing tz"
fastboot flash tz tz.mbn
sleep 2

echo "Erasing LOGO"
fastboot erase LOGO
echo "Flashing LOGO"
fastboot flash LOGO logo.bin
sleep 2

echo "Erasing oppostanvbk"
fastboot erase oppostanvbk
echo "Flashing oppostanvbk"
fastboot flash oppostanvbk static_nvbk.bin
sleep 2

echo "Erasing system"
fastboot erase system
echo "Flashing system"
fastboot flash system system.img
sleep 2

echo "Erasing userdata"
fastboot erase userdata
echo "Flashing userdata"
fastboot flash userdata userdata_64G.img
sleep 2

echo "Erasing boot"
fastboot erase boot
echo "Flashing boot"
fastboot flash boot boot.img
sleep 2

echo "Erasing recovery"
fastboot erase recovery
echo "Flashing recovery"
fastboot flash recovery recovery.img
sleep 2

echo "Erasing cache"
fastboot erase cache
echo "Flashing cache"
fastboot flash cache cache.img
sleep 2

read -p "Done. Press any key to reboot cellphone"
fastboot reboot
