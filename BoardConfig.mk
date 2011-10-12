# inherit from the proprietary version
-include vendor/samsung/galaxysl/BoardConfigVendor.mk

# Board properties
TARGET_BOARD_PLATFORM := omap3
TARGET_BOOTLOADER_BOARD_NAME := latona
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a8
ANDROID_ARM_LINKER := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_OMAP3 := true
COMMON_GLOBAL_CFLAGS += -DTARGET_OMAP3

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_USES_COMBINED_RECOVERY := true
BOARD_PROVIDES_BOOTMODE := true
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/galaxysl/recovery.rc

# recovery
BOARD_BML_BOOT := /dev/block/bml7
BOARD_BML_RECOVERY := /dev/block/bml7
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/galaxysl/recovery/recovery_ui.c

BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 consoleblank=0
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/samsung/galaxysl/kernel

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 339738624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2013200384
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/galaxysl/releasetools/galaxysl_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/galaxysl/releasetools/galaxysl_img_from_target_files

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Egl
BOARD_EGL_CFG := device/samsung/galaxysl/egl.cfg

# Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_PREBUILT_LIBAUDIO := true
#BOARD_USES_ALSA_AUDIO := true
#BUILD_WITH_ALSA_UTILS := true
#ALSA_DEFAULT_SAMPLE_RATE := 44100

# Camera
USE_CAMERA_STUB := false
BOARD_CAMERA_LIBRARIES := libcamera
#BOARD_USE_FROYO_LIBCAMERA := true
BOARD_SECOND_CAMERA_DEVICE := true

# Video
#HARDWARE_OMX := true
ifdef HARDWARE_OMX
OMX_JPEG := true
OMX_VENDOR := ti
OMX_VENDOR_INCLUDES := \
   hardware/ti/omap3/omx/system/src/openmax_il/omx_core/inc \
   hardware/ti/omap3/omx/image/src/openmax_il/jpeg_enc/inc \
   external/libexif
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
BOARD_USES_TI_CAMERA_HAL := true
endif

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := wl1271

# Wifi related defines
USES_TI_WL1271 := true
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libCustomWifi
BOARD_WLAN_DEVICE           := wl1271
BOARD_SOFTAP_DEVICE         := wl1271
WPA_SUPPLICANT_VERSION      := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"
AP_CONFIG_DRIVER_WILINK     := true

TARGET_OTA_ASSERT_DEVICE := galaxysl,GT-I9003
