################################################################################
#
# mt7601apsta
#
################################################################################

MT7601APSTA_VERSION = 86d78053b835ad9a0757ff0b01abc7a72e0c358f
MT7601APSTA_SITE = $(call github,Othernet-Project,mt7601u,$(MT7601APSTA_VERSION))
MT7601APSTA_LICENSE = GPLv2+
MT7601APSTA_DEPENDENCIES = linux
MT7601APSTA_KVER = $(LINUX_VERSION_PROBED)


define MT7601APSTA_BUILD_CMDS
	$(MAKE) -C $(@D) ARCH=$(ARCH) CROSS_COMPILE=$(TARGET_CROSS) LINUX_SRC=$(LINUX_DIR)
endef

define MT7601APSTA_INSTALL_TARGET_CMDS
    $(INSTALL) -Dm644 $(@D)/src/os/linux/rtutil7601Uapsta.ko $(TARGET_DIR)/lib/modules/$(MT7601APSTA_KVER)/kernel/drivers/net/wireless
    $(INSTALL) -Dm644 $(@D)/src/os/linux/rtnet7601Uapsta.ko $(TARGET_DIR)/lib/modules/$(MT7601APSTA_KVER)/kernel/drivers/net/wireless
    $(INSTALL) -Dm644 $(@D)/src/os/linux/rt7601Uapsta.ko $(TARGET_DIR)/lib/modules/$(MT7601APSTA_KVER)/kernel/drivers/net/wireless
	$(HOST_DIR)/sbin/depmod -a -b $(TARGET_DIR) $(MT7601APSTA_KVER)
	$(INSTALL) -Dm644 $(@D)/src/mcu/bin/*.bin \
		$(TARGET_DIR)/lib/firmware/
endef

$(eval $(generic-package))
