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


# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS += device/samsung/galaxysl/overlay

# Libs
#PRODUCT_PACKAGES += \
#	 overlay.omap3

PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    LiveWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
	librs_jni \
    ApiDemos \
    SoundRecorder

# Libs
PRODUCT_PACKAGES += \
	dspexec \
	libstagefrighthw \
	com.android.future.usb.accessory \
	bdaddr_read

PRODUCT_PACKAGES += \
	libext4_utils

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES := \
	device/samsung/galaxysl/prebuilt/etc/asound.conf:system/etc/asound.conf \
	device/samsung/galaxysl/prebuilt/etc/gps.conf:system/etc/gps.conf \
	device/samsung/galaxysl/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/galaxysl/fota.rc:root/fota.rc \
	device/samsung/galaxysl/init.rc:root/init.rc \
	device/samsung/galaxysl/recovery.rc:recovery/root/init.rc \
	device/samsung/galaxysl/lpm.rc:root/lpm.rc \
	device/samsung/galaxysl/init.latona.rc:root/init.latona.rc \
	device/samsung/galaxysl/ueventd.latona.rc:root/ueventd.latona.rc \
	device/samsung/galaxysl/ueventd.rc:root/ueventd.rc

#PRODUCT_COPY_FILES += \
#	device/samsung/galaxysl/init.goldfish.rc:root/init.goldfish.rc \
#	device/samsung/galaxysl/ueventd.goldfish.rc:root/ueventd.goldfish.rc \

PRODUCT_COPY_FILES += \
	device/samsung/galaxysl/prebuilt/xbin/ipcdump:system/xbin/ipcdump \
	device/samsung/galaxysl/prebuilt/xbin/ipctool:system/xbin/ipctool \
	device/samsung/galaxysl/prebuilt/xbin/smc_pa_ctrl:system/xbin/smc_pa_ctrl \
	device/samsung/galaxysl/prebuilt/xbin/smoduled:system/xbin/smoduled \
	device/samsung/galaxysl/prebuilt/xbin/start_smc.sh:system/xbin/start_smc.sh

# Configuration files for audio
PRODUCT_COPY_FILES += \
	device/samsung/galaxysl/prebuilt/etc/audio/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/LVVEFS_Rx_Configuration.txt:system/etc/audio/LVVEFS_Rx_Configuration.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/LVVEFS_Tx_Configuration.txt:system/etc/audio/LVVEFS_Tx_Configuration.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_EARPIECE_WIDEBAND.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_SPEAKER_WIDEBAND.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Rx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/situation.txt:system/etc/audio/situation.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/srstunning.txt:system/etc/audio/srstunning.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_EARPIECE_WIDEBAND.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_SPEAKER_WIDEBAND.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADPHONE_WIDEBAND.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt:system/etc/audio/Tx_ControlParams_WIRED_HEADSET_WIDEBAND.txt \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/FMRadioEar.ini:system/etc/audio/codec/FMRadioEar.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/FMRadioSpk.ini:system/etc/audio/codec/FMRadioSpk.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/MusicEar.ini:system/etc/audio/codec/MusicEar.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/MusicEarAmp.ini:system/etc/audio/codec/MusicEarAmp.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/MusicSpk.ini:system/etc/audio/codec/MusicSpk.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/MusicSpkAmp.ini:system/etc/audio/codec/MusicSpkAmp.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/RecHeadSetMic.ini:system/etc/audio/codec/RecHeadSetMic.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/RecMainMic.ini:system/etc/audio/codec/RecMainMic.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/RecSubMic.ini:system/etc/audio/codec/RecSubMic.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/RingtoneEar.ini:system/etc/audio/codec/RingtoneEar.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/RingtoneSpk.ini:system/etc/audio/codec/RingtoneSpk.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VCall3pEar.ini:system/etc/audio/codec/VCall3pEar.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VCall4pEar.ini:system/etc/audio/codec/VCall4pEar.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VoiceCall3pEar.ini:system/etc/audio/codec/VoiceCall3pEar.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VoiceCall4pEar.ini:system/etc/audio/codec/VoiceCall4pEar.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VoiceCallBT.ini:system/etc/audio/codec/VoiceCallBT.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VoiceCallEarAmp.ini:system/etc/audio/codec/VoiceCallEarAmp.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VoiceCallRcv.ini:system/etc/audio/codec/VoiceCallRcv.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VoiceCallSpk.ini:system/etc/audio/codec/VoiceCallSpk.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VoiceCallSpkAmp.ini:system/etc/audio/codec/VoiceCallSpkAmp.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VoiceRecHeadSetMic.ini:system/etc/audio/codec/VoiceRecHeadSetMic.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VoiceRecMainMic.ini:system/etc/audio/codec/VoiceRecMainMic.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VtCallBT.ini:system/etc/audio/codec/VtCallBT.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VtCallEarAmp.ini:system/etc/audio/codec/VtCallEarAmp.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VtCallRcv.ini:system/etc/audio/codec/VtCallRcv.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VtCallSpk.ini:system/etc/audio/codec/VtCallSpk.ini \
	device/samsung/galaxysl/prebuilt/etc/audio/codec/VtCallSpkAmp.ini:system/etc/audio/codec/VtCallSpkAmp.ini

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
	device/samsung/galaxysl/prebuilt/usr/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
	device/samsung/galaxysl/prebuilt/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
	device/samsung/galaxysl/prebuilt/usr/keylayout/sec_power_key.kl:system/usr/keylayout/sec_power_key.kl \
	device/samsung/galaxysl/prebuilt/usr/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl

PRODUCT_COPY_FILES += \
  device/samsung/galaxysl/prebuilt/usr/keychars/sec_key.kcm.bin:system/usr/keychars/sec_key.kcm.bin \
  device/samsung/galaxysl/prebuilt/usr/keychars/sec_touchscreen.kcm.bin:system/usr/keychars/sec_touchscreen.kcm.bin

PRODUCT_COPY_FILES += \
  device/samsung/galaxysl/prebuilt/usr/bluetooth/print/icon_calendar.jpg:system/usr/bluetooth/print/icon_calendar.jpg \
  device/samsung/galaxysl/prebuilt/usr/bluetooth/print/icon_contact.jpg:system/usr/bluetooth/print/icon_contact.jpg \
  device/samsung/galaxysl/prebuilt/usr/bluetooth/print/icon_email.jpg:system/usr/bluetooth/print/icon_email.jpg \
  device/samsung/galaxysl/prebuilt/usr/bluetooth/print/icon_man.jpg:system/usr/bluetooth/print/icon_man.jpg \
  device/samsung/galaxysl/prebuilt/usr/bluetooth/print/icon_mms.jpg:system/usr/bluetooth/print/icon_mms.jpg \
  device/samsung/galaxysl/prebuilt/usr/bluetooth/print/icon_sms.jpg:system/usr/bluetooth/print/icon_sms.jpg \
  device/samsung/galaxysl/prebuilt/usr/bluetooth/print/logo.jpg:system/usr/bluetooth/print/logo.jpg \
  device/samsung/galaxysl/prebuilt/usr/bluetooth/print/round.jpg:system/usr/bluetooth/print/round.jpg \
  device/samsung/galaxysl/prebuilt/usr/bluetooth/print/title.jpg:system/usr/bluetooth/print/title.jpg \
  device/samsung/galaxysl/prebuilt/usr/idc/mxt224_ts_input.idc:system/usr/idc/mxt224_ts_input.idc \
  device/samsung/galaxysl/prebuilt/etc/01_Vendor_ti_omx.cfg:system/etc/01_Vendor_ti_omx.cfg \
  device/samsung/galaxysl/prebuilt/etc/arcplayer.cfg:system/etc/arcplayer.cfg \
  device/samsung/galaxysl/prebuilt/etc/cursorwindowpackages.txt:system/etc/cursorwindowpackages.txt \
  device/samsung/galaxysl/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
  device/samsung/galaxysl/prebuilt/etc/nwk_info.xml:system/etc/nwk_info.xml \
  device/samsung/galaxysl/prebuilt/etc/purenandpackages.txt:system/etc/purenandpackages.txt \
  device/samsung/galaxysl/prebuilt/etc/purenandpackages_pref.txt:system/etc/purenandpackages_pref.txt \
  device/samsung/galaxysl/prebuilt/etc/pvplayer.cfg:system/etc/pvplayer.cfg \
  device/samsung/galaxysl/prebuilt/etc/kies/Calendar.xml:system/etc/kies/Calendar.xml \
  device/samsung/galaxysl/prebuilt/etc/kies/Contents.xml:system/etc/kies/Contents.xml \
  device/samsung/galaxysl/prebuilt/etc/kies/Device.xml:system/etc/kies/Device.xml \
  device/samsung/galaxysl/prebuilt/etc/kies/Memo.xml:system/etc/kies/Memo.xml \
  device/samsung/galaxysl/prebuilt/etc/kies/Message.xml:system/etc/kies/Message.xml \
  device/samsung/galaxysl/prebuilt/etc/kies/Phonebook.xml:system/etc/kies/Phonebook.xml \
  device/samsung/galaxysl/prebuilt/etc/kies/Phonebook_com.android.exchange.xml:system/etc/kies/Phonebook_com.android.exchange.xml \
  device/samsung/galaxysl/prebuilt/etc/kies/Phonebook_com.google.xml:system/etc/kies/Phonebook_com.google.xml \
  device/samsung/galaxysl/prebuilt/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
  device/samsung/galaxysl/prebuilt/etc/permissions/com.samsung.device.xml:system/etc/permissions/com.samsung.device.xml \
  device/samsung/galaxysl/prebuilt/etc/permissions/sec_feature.xml:system/etc/permissions/sec_feature.xml \
  device/samsung/galaxysl/prebuilt/etc/permissions/sec_hardware_library.xml:system/etc/permissions/sec_hardware_library.xml \
  device/samsung/galaxysl/prebuilt/etc/permissions/seccamera.xml:system/etc/permissions/seccamera.xml \
  device/samsung/galaxysl/prebuilt/etc/permissions/touchwiz.xml:system/etc/permissions/touchwiz.xml \
  device/samsung/galaxysl/prebuilt/etc/security/drm/bgroupcert.dat:system/etc/security/drm/bgroupcert.dat \
  device/samsung/galaxysl/prebuilt/etc/security/drm/devcerttemplate.dat:system/etc/security/drm/devcerttemplate.dat \
  device/samsung/galaxysl/prebuilt/etc/security/drm/EI9000_DevcerttemplateFile.dat:system/etc/security/drm/EI9000_DevcerttemplateFile.dat \
  device/samsung/galaxysl/prebuilt/etc/security/drm/EPriv.dat:system/etc/security/drm/EPriv.dat \
  device/samsung/galaxysl/prebuilt/etc/security/drm/priv.dat:system/etc/security/drm/priv.dat \
  device/samsung/galaxysl/prebuilt/etc/security/drm/unsignedtemplate.dat:system/etc/security/drm/unsignedtemplate.dat \
  device/samsung/galaxysl/prebuilt/etc/security/drm/zgpriv.dat:system/etc/security/drm/zgpriv.dat \
  device/samsung/galaxysl/prebuilt/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt


# wifi configuration files
PRODUCT_COPY_FILES += \
  device/samsung/galaxysl/prebuilt/etc/wifi/firmware.bin:system/etc/wifi/firmware.bin \
  device/samsung/galaxysl/prebuilt/etc/wifi/tiwlan_drv.ko:system/etc/wifi/tiwlan_drv.ko \
  device/samsung/galaxysl/prebuilt/etc/wifi/tiwlan_plt.ini:system/etc/wifi/tiwlan_plt.ini \
  device/samsung/galaxysl/prebuilt/etc/wifi/wifi.conf:system/etc/wifi/wifi.conf \
  device/samsung/galaxysl/prebuilt/etc/wifi/softap/ap_firmware.bin:system/etc/wifi/softap/ap_firmware.bin \
  device/samsung/galaxysl/prebuilt/etc/wifi/softap/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
  device/samsung/galaxysl/prebuilt/etc/wifi/softap/tiap_drv.ko:system/etc/wifi/softap/tiap_drv.ko \
  device/samsung/galaxysl/prebuilt/etc/wifi/softap/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \
  device/samsung/galaxysl/prebuilt/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
  device/samsung/galaxysl/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# configuration files
PRODUCT_COPY_FILES += \
	device/samsung/galaxysl/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

