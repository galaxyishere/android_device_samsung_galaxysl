USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/galaxysl/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := omap3
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := galaxysl

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
#BOARD_PAGE_SIZE := 4096
BOARD_PAGE_SIZE := 1000

TARGET_OTA_ASSERT_DEVICE := galaxysl

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 339738624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2013200384
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_BOOT_DEVICE := /dev/block/bml7
BOARD_DATA_DEVICE := /dev/block/mmcblk0p3
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/stl9
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/stl11
BOARD_CACHE_FILESYSTEM := ext4
#BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_DEVICE := /dev/block/bml7
BOARD_BML_BOOT := /dev/block/bml7
BOARD_BML_RECOVERY := /dev/block/bml7

TARGET_PREBUILT_KERNEL := device/samsung/galaxysl/kernel
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/galaxysl/recovery.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/galaxysl/recovery/recovery_ui.c

BOARD_HAS_DOWNLOAD_MODE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BT_ALT_STACK := true
BRCM_BT_USE_BTL_IF := true
BRCM_BTL_INCLUDE_A2DP := true

# Audio
BOARD_USES_ALSA_AUDIO := true

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

