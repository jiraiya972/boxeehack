#!/bin/sh

# turn the logo red to indicate we're installing
dtool 6 1 0 100
dtool 6 2 0 0

# remove all traces of the install
rm /data/.boxee/UserData/advancedsettings.xml
/bin/busybox sed -i "s/;sh \/media\/BOXEE\/uninstall.sh//g" /data/etc/boxeehal.conf 
/bin/busybox sed -i "s/; sh \/media\/BOXEE\/uninstall.sh//g" /data/etc/boxeehal.conf
/bin/busybox sed -i "s/;sh \/data\/hack\/boot.sh//g" /data/etc/boxeehal.conf 
/bin/busybox sed -i "s/; sh \/data\/hack\/boot.sh//g" /data/etc/boxeehal.conf 
rm -Rf /data/hack

# reboot the box to active finalize the uninstall
reboot
