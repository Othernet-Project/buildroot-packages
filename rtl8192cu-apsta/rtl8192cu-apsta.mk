################################################################################
#
# rtl8192cu-apsta
#
################################################################################

RTL8192CU_APSTA_VERSION = fe5a5b4070b975fc0a216cbea44a4f707eb6d153
RTL8192CU_APSTA_SITE = $(call github,Othernet-Project,rtl8192cu-fixes,$(RTL8192CU_APSTA_VERSION))
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
