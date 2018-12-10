################################################################################
#
# rtl8723au_bt
#
################################################################################

RTL8723AU_BT_VERSION = fa5d39274e2a84a09fc43fb9c0b9e1ab6be874ab
RTL8723AU_BT_SITE = $(call github,Othernet-Project,rtl8723au_bt,$(RTL8723AU_BT_VERSION))
RTL8723AU_BT_LICENSE = GPLv2+
RTL8723AU_BT_DEPENDENCIES = linux

define RTL8723AU_BT_BUILD_CMDS
	$(MAKE) -C $(LINUX_DIR) $(LINUX_MAKE_FLAGS) M=$(@D)  modules
endef

define RTL8723AU_BT_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/lib/firmware/rtl_bt/
	cp -f $(@D)/rtl8723b_fw.bin $(TARGET_DIR)/lib/firmware/rtl_bt/.
	cp -f $(@D)/*.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/kernel/drivers/bluetooth/.
endef

$(eval $(generic-package))

