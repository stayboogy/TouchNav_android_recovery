$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/moto/wingray/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	device/moto/wingray/usbconfig:recovery/root/sbin/usbconfig

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := wingray
PRODUCT_DEVICE := wingray
PRODUCT_BRAND := Moto
PRODUCT_MODEL := Xoom
