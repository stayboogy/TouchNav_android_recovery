#!/sbin/sh
#

echo "enable" >> /sys/devices/platform/android_usb/functions/ftm_mode

#touch /tmp/.ignorebootmessage
#kill $(ps | grep /sbin/adbd)
#kill $(ps | grep /sbin/recovery)

/sbin/killrecovery.sh
