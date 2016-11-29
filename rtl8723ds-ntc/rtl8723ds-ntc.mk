################################################################################
#
# rtl8723ds-ntc
#
################################################################################

RTL8723DS_NTC_VERSION = cc60fc2e659d422a33d93d32f8d5b72202074a93
RTL8723DS_NTC_SITE = $(call github,NextThingCo,RTL8723DS,$(RTL8723DS_NTC_VERSION))
RTL8723DS_NTC_LICENSE = GPLv2+
RTL8723DS_NTC_DEPENDENCIES = linux

RTL8723DS_NTC_SED_CMDS = s|__DATE__, __TIME__|"2016-01-01", "00:00:00"|g;
RTL8723DS_NTC_SED_CMDS += s|CONFIG_RTL8723B = n|CONFIG_RTL8723B = y|g;

define RTL8723DS_NTC_BUILD_CMDS
    $(SED) '$(RTL8723DS_NTC_SED_CMDS)' $(@D)/core/rtw_debug.c
    $(SED) '$(RTL8723DS_NTC_SED_CMDS)' $(@D)/Makefile
	$(MAKE) -C $(@D) $(LINUX_MAKE_FLAGS) KSRC=$(LINUX_DIR) KVER=$(LINUX_VERSION_PROBED) modules
endef


define RTL8723DS_NTC_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) $(LINUX_MAKE_FLAGS) KSRC=$(LINUX_DIR) KVER=$(LINUX_VERSION_PROBED)\
		MODDESTDIR=$(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/kernel/drivers/net/wireless/ strip
    $(INSTALL) -p -m 644 $(@D)/8723ds.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/kernel/drivers/net/wireless/
    depmod -b $(TARGET_DIR) $(LINUX_VERSION_PROBED) 
endef

$(eval $(generic-package))
