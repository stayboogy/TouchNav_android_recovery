#!/sbin/sh
#

echo "enable" >> /sys/devices/platform/android_usb/functions/ftm_mode

/sbin/killrecovery.sh
