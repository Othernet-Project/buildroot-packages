################################################################################
#
# rtl8192cu-apsta
#
################################################################################

RTL8192CU_APSTA_VERSION = d4f9f2fde682b95eb83d28c82ce11ff40c04e39c
RTL8192CU_APSTA_SITE = $(call github,pvaret,rtl8192cu-fixes,$(RTL8192CU_APSTA_VERSION))
RTL8192CU_APSTA_LICENSE = GPLv2+
RTL8192CU_APSTA_DEPENDENCIES = linux
RTL8192CU_APSTA_KVER = $(LINUX_VERSION_PROBED)


define RTL8192CU_APSTA_BUILD_CMDS
	$(MAKE) -C $(@D) ARCH=$(ARCH) CROSS_COMPILE=$(TARGET_CROSS) KSRC=$(LINUX_DIR)
endef

define RTL8192CU_APSTA_INSTALL_TARGET_CMDS
    $(INSTALL) -Dm644 $(@D)/8192cu.ko $(TARGET_DIR)/lib/modules/$(RTL8192CU_APSTA_KVER)/kernel/drivers/net/wireless
	$(HOST_DIR)/sbin/depmod -a -b $(TARGET_DIR) $(RTL8192CU_APSTA_KVER)
endef

$(eval $(generic-package))
