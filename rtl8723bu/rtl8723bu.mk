################################################################################
#
# rtl8723bu
#
################################################################################

RTL8723BU_VERSION = db024b4c130283a0372d2f89a015a3a5c36f9419
RTL8723BU_SITE = $(call github,lwfinger,rtl8723bu,$(RTL8723BU_VERSION))
RTL8723BU_LICENSE = GPLv2+
RTL8723BU_DEPENDENCIES = linux

define RTL8723BU_BUILD_CMDS
	$(MAKE) -C $(@D) $(LINUX_MAKE_FLAGS) KSRC=$(LINUX_DIR) modules
endef

define RTL8723BU_INSTALL_TARGET_CMDS
	echo $(LINUX_VERSION_PROBED)
	$(MAKE) -C $(@D) $(LINUX_MAKE_FLAGS) KSRC=$(LINUX_DIR) \
		PREFIX=$(TARGET_DIR) KVER=$(LINUX_VERSION_PROBED) install
endef

$(eval $(generic-package))

