$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/galaxyxsl/galaxysl-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/galaxysl/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/galaxysl/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#$(call inherit-product, device/samsung/galaxysl/galaxysl.mk)
$(call inherit-product, build/target/product/full.mk)

# Galaxy SL uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
# Discard inherited values and use our own instead.
PRODUCT_NAME := full_galaxysl
PRODUCT_DEVICE := galaxysl
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9003
