# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES := \
	device/samsung/galaxysl/etc/asound.conf:system/etc/asound.conf \
	device/samsung/galaxysl/etc/gps.conf:system/etc/gps.conf \
	device/samsung/galaxysl/etc/nvram_net.txt:system/etc/nvram_net.txt \
	device/samsung/galaxysl/etc/vold.fstab:system/etc/vold.fstab \
	device/samsung/galaxysl/egl.cfg:system/lib/egl/egl.cfg

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/galaxysl/init.rc:recovery/root/init.rc \
	device/samsung/galaxysl/init.latona.rc:recovery/root/init.latona.rc \
	device/samsung/galaxysl/lpm.rc:recovery/root/lpm.rc \
	device/samsung/galaxysl/ueventd.rc:recovery/root/ueventd.rc
	device/samsung/galaxysl/ueventd.latona.rc:recovery/root/ueventd.latona.rc

# Configuration files for audio
PRODUCT_COPY_FILES += \
	device/samsung/galaxysl/etc/audio/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
	device/samsung/galaxysl/etc/audio/LVVEFS_Rx_Configuration.txt:system/etc/audio/LVVEFS_Rx_Configuration.txt \
	device/samsung/galaxysl/etc/audio/LVVEFS_Tx_Configuration.txt:system/etc/audio/LVVEFS_Tx_Configuration.txt \
	device/samsung/galaxysl/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt \
	device/samsung/galaxysl/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt \
	device/samsung/galaxysl/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
	device/samsung/galaxysl/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
	device/samsung/galaxysl/etc/audio/situation.txt:system/etc/audio/situation.txt \
	device/samsung/galaxysl/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
	device/samsung/galaxysl/etc/audio/srstunning.txt:system/etc/audio/srstunning.txt \
	device/samsung/galaxysl/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
	device/samsung/galaxysl/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
	device/samsung/galaxysl/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
	device/samsung/galaxysl/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt \
	device/samsung/galaxysl/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt \
	device/samsung/galaxysl/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
	device/samsung/galaxysl/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
	device/samsung/galaxysl/etc/audio/codec/FMRadioEar.ini:system/etc/audio/codec/FMRadioEar.ini \
	device/samsung/galaxysl/etc/audio/codec/FMRadioSpk.ini:system/etc/audio/codec/FMRadioSpk.ini \
	device/samsung/galaxysl/etc/audio/codec/MusicEar.ini:system/etc/audio/codec/MusicEar.ini \
	device/samsung/galaxysl/etc/audio/codec/MusicEarAmp.ini:system/etc/audio/codec/MusicEarAmp.ini \
	device/samsung/galaxysl/etc/audio/codec/MusicSpk.ini:system/etc/audio/codec/MusicSpk.ini \
	device/samsung/galaxysl/etc/audio/codec/MusicSpkAmp.ini:system/etc/audio/codec/MusicSpkAmp.ini \
	device/samsung/galaxysl/etc/audio/codec/RecHeadSetMic.ini:system/etc/audio/codec/RecHeadSetMic.ini \
	device/samsung/galaxysl/etc/audio/codec/RecMainMic.ini:system/etc/audio/codec/RecMainMic.ini \
	device/samsung/galaxysl/etc/audio/codec/RecSubMic.ini:system/etc/audio/codec/RecSubMic.ini \
	device/samsung/galaxysl/etc/audio/codec/RingtoneEar.ini:system/etc/audio/codec/RingtoneEar.ini \
	device/samsung/galaxysl/etc/audio/codec/RingtoneSpk.ini:system/etc/audio/codec/RingtoneSpk.ini \
	device/samsung/galaxysl/etc/audio/codec/VCall3pEar.ini:system/etc/audio/codec/VCall3pEar.ini \
	device/samsung/galaxysl/etc/audio/codec/VCall4pEar.ini:system/etc/audio/codec/VCall4pEar.ini \
	device/samsung/galaxysl/etc/audio/codec/VoiceCall3pEar.ini:system/etc/audio/codec/VoiceCall3pEar.ini \
	device/samsung/galaxysl/etc/audio/codec/VoiceCall4pEar.ini:system/etc/audio/codec/VoiceCall4pEar.ini \
	device/samsung/galaxysl/etc/audio/codec/VoiceCallBT.ini:system/etc/audio/codec/VoiceCallBT.ini \
	device/samsung/galaxysl/etc/audio/codec/VoiceCallEarAmp.ini:system/etc/audio/codec/VoiceCallEarAmp.ini \
	device/samsung/galaxysl/etc/audio/codec/VoiceCallRcv.ini:system/etc/audio/codec/VoiceCallRcv.ini \
	device/samsung/galaxysl/etc/audio/codec/VoiceCallSpk.ini:system/etc/audio/codec/VoiceCallSpk.ini \
	device/samsung/galaxysl/etc/audio/codec/VoiceCallSpkAmp.ini:system/etc/audio/codec/VoiceCallSpkAmp.ini \
	device/samsung/galaxysl/etc/audio/codec/VoiceRecHeadSetMic.ini:system/etc/audio/codec/VoiceRecHeadSetMic.ini \
	device/samsung/galaxysl/etc/audio/codec/VoiceRecMainMic.ini:system/etc/audio/codec/VoiceRecMainMic.ini \
	device/samsung/galaxysl/etc/audio/codec/VtCallBT.ini:system/etc/audio/codec/VtCallBT.ini \
	device/samsung/galaxysl/etc/audio/codec/VtCallEarAmp.ini:system/etc/audio/codec/VtCallEarAmp.ini \
	device/samsung/galaxysl/etc/audio/codec/VtCallRcv.ini:system/etc/audio/codec/VtCallRcv.ini \
	device/samsung/galaxysl/etc/audio/codec/VtCallSpk.ini:system/etc/audio/codec/VtCallSpk.ini \
	device/samsung/galaxysl/etc/audio/codec/VtCallSpkAmp.ini:system/etc/audio/codec/VtCallSpkAmp.ini

# wifi configuration files
PRODUCT_COPY_FILES += \
  device/samsung/galaxysl/etc/wifi/firmware.bin:system/etc/wifi/firmware.bin \
  device/samsung/galaxysl/etc/wifi/tiwlan_plt.ini:system/etc/wifi/tiwlan_plt.ini \
  device/samsung/galaxysl/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \
  device/samsung/galaxysl/etc/wifi/softap/ap_firmware.bin:system/etc/wifi/softap/ap_firmware.bin \
  device/samsung/galaxysl/etc/wifi/softap/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
  device/samsung/galaxysl/etc/wifi/softap/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \
  device/samsung/galaxysl/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini

# configuration files
PRODUCT_COPY_FILES += \
	device/samsung/galaxysl/etc/media_profiles.xml:system/etc/media_profiles.xml

# apns config file
PRODUCT_COPY_FILES += \
        vendor/cyanogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/galaxysl/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
	device/samsung/galaxysl/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
	device/samsung/galaxysl/keylayout/sec_power_key.kl:system/usr/keylayout/sec_power_key.kl \
	device/samsung/galaxysl/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Packages
PRODUCT_PACKAGES := \
	com.android.future.usb.accessory \
    bdaddr_read

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES := \
    ro.opengles.version=131072

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=tiwlan0 \
       wifi.supplicant_scan_interval=180 \
       ro.telephony.ril_class=samsung \
       ro.telephony.sends_barcount=1 \
       mobiledata.interfaces=pdp0,eth0,gprs,ppp0 \
       dalvik.vm.heapsize=64m \
       persist.service.usb.setting=0 \
       dev.sfbootcomplete=0

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Screen density is actually considered a locale (since it is taken into account
# the the build-time selection of resources). The product definitions including
# this file must pay attention to the fact that the first entry in the final
# PRODUCT_LOCALES expansion must not be a density.
PRODUCT_LOCALES := hdpi

# kernel modules for ramdisk
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/samsung/galaxysl/modules/ramdisk,recovery/root/lib/modules)

# other kernel modules not in ramdisk
PRODUCT_COPY_FILES += $(foreach module,\
	$(filter-out $(RAMDISK_MODULES),$(wildcard device/samsung/galaxysl/modules/*.ko)),\
	$(module):system/lib/modules/$(notdir $(module)))

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/samsung/galaxysl/kernel
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/galaxysl/galaxysl-vendor.mk)
