
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/zte/roamer/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
        $(LOCAL_KERNEL):kernel \
	device/zte/roamer/usbconfig:/root/sbin/usbconfig \
	device/zte/roamer/format-system.zip:recovery/root/tmp/format-system.zip \
	device/zte/roamer/format-data.zip:recovery/root/tmp/format-data.zip \
	device/zte/roamer/format-cache.zip:recovery/root/tmp/format-cache.zip \
	device/zte/roamer/ftm.sh:recovery/root/sbin/ftm.sh \
	device/zte/roamer/icon_zte_ftm.png:recovery/root/res/icon_zte_ftm.png \
	device/zte/roamer/icon_zte_ftm_729b.png:recovery/root/res/icon_zte_ftm_729b.png

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := roamer
PRODUCT_DEVICE := roamer
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := Roamer
