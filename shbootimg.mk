LOCAL_PATH := $(call my-dir) 

MASTER_BOOTSTRAP := $(PRODUCT_OUT)/bootstrap.img
$(MASTER_BOOTSTRAP): $(INSTALLED_RAMDISK_TARGET) $(recovery_ramdisk) $(HOST_OUT)/bin/mkbootfs $(PRODUCT_OUT)/utilities/unpackbootimg $(PRODUCT_OUT)/utilities/busybox
	$(call pretty,"Bootstrap: $@")
	cp -r device/samsung/galaxysl/bootstrap $(PRODUCT_OUT)
	cp $(PRODUCT_OUT)/utilities/busybox $(PRODUCT_OUT)/bootstrap/
	cp $(INSTALLED_RAMDISK_TARGET) $(PRODUCT_OUT)/bootstrap/
	cp $(recovery_ramdisk) $(PRODUCT_OUT)/bootstrap/
	./$(HOST_OUT)/bin/mkbootfs $(PRODUCT_OUT)/bootstrap > $@

INSTALLED_BOOTIMAGE_TARGET := $(PRODUCT_OUT)/boot.img
$(INSTALLED_BOOTIMAGE_TARGET): $(TARGET_PREBUILT_KERNEL) $(MASTER_BOOTSTRAP)
	$(call pretty,"Boot image: $@")
	./$(HOST_OUT)/bin/mkbootimg --kernel $(TARGET_PREBUILT_KERNEL) --ramdisk $(MASTER_BOOTSTRAP) --cmdline "$(BOARD_KERNEL_CMDLINE)" --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --output $@

$(INSTALLED_RECOVERYIMAGE_TARGET): $(INSTALLED_BOOTIMAGE_TARGET)
	$(ACP) $(INSTALLED_BOOTIMAGE_TARGET) $@
