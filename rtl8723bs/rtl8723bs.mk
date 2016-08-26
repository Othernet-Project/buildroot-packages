################################################################################
#
# rtl8723bs
#
################################################################################

RTL8723BS_VERSION = 621f7f3d97400e08ff943cff2d352a174e81dd7e
RTL8723BS_SITE = $(call github,hadess,rtl8723bs,$(RTL8723BS_VERSION))
RTL8723BS_LICENSE = GPLv2+
RTL8723BS_DEPENDENCIES = linux

define RTL8723BS_BUILD_CMDS
	$(MAKE) -C $(@D) $(LINUX_MAKE_FLAGS) KSRC=$(LINUX_DIR) modules
endef

define RTL8723BS_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) $(LINUX_MAKE_FLAGS) KSRC=$(LINUX_DIR) \
		PREFIX=$(TARGET_DIR) modules_install
	$(HOST_DIR)/sbin/depmod -a -b $(TARGET_DIR) $(LINUX_VERSION_PROBED)
	$(INSTALL) -Dm644 $(@D)/rtl8723bs_nic.bin \
		$(TARGET_DIR)/lib/firmware/rtlwifi/rtl8723bs_nic.bin
	$(INSTALL) -Dm644 $(@D)/rtl8723bs_wowlan.bin \
		$(TARGET_DIR)/lib/firmware/rtlwifi/rtl8723bs_wowlan.bin
endef

$(eval $(generic-package))
