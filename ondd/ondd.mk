################################################################################
#
# ondd
#
################################################################################

ONDD_VERSION = 2.9.0
ONDD_LICENSE = OFL
ONDD_LICENSE_FILE = LICENSE

ONDD_SED_CMDS += s|%CACHEDIR%|$(call qstrip,$(BR2_ONDD_CACHEDIR))|;
ONDD_SED_CMDS += s|%CONFIGFILE%|$(call qstrip,$(BR2_ONDD_CONFIGFILE))|;
ONDD_SED_CMDS += s|%GROUP%|$(call qstrip,$(BR2_ONDD_GROUP))|;

ifeq ($(BR2_ONDD_INSTALL_BUILD),y)
ONDD_SITE = $(call qstrip,$(BR2_ONDD_SRCDIR))
ONDD_SITE_METHOD = local
ONDD_PATCH += $(wildcard $(call epkgdir,ondd)/srcpatch/*.patch)
ONDD_DEPENDENCIES = openssl

ifeq ($(BR2_ONDD_LED_CONTROL),y)
ONDD_MAKE_FLAGS = LED_CONTROL=on
endif

define ONDD_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) $(ONDD_MAKE_FLAGS) INSTALL_PREFIX=$(TARGET_DIR) \
		CC=$(TARGET_CC) STRIP=$(TARGET_STRIP) clean debug release install
	$(ONDD_INSTALL_CONF)
endef

else

ifeq ($(BR2_ONDD_INSTALL_LOCAL),y)

ONDD_SITE = $(BR2_EXTERNAL)/package/ondd/src
ONDD_SITE_METHOD = local
define ONDD_INSTALL_TARGET_CMDS
	$(INSTALL) -Dm644 $(@D)/LICENSE $(TARGET_DIR)/opt/licenses/ondd/LICENSE
endef

else

ONDD_SOURCE = ondd-arm-$(ONDD_VERSION).tar.gz
ONDD_SITE = https://archive.outernet.is/sources
define ONDD_INSTALL_TARGET_CMDS
	$(INSTALL) -Dm644 $(@D)/LICENSE $(TARGET_DIR)/opt/licenses/ondd/LICENSE
	$(INSTALL) -Dm755 $(@D)/ondd $(TARGET_DIR)/usr/sbin/ondd
endef

endif # BR2_ONDD_INSTALL_LOCAL
endif # BR2_ONDD_INSTALL_BUILD

define ONDD_INSTALL_INIT_SYSV
	$(INSTALL) -Dm644 $(call epkgdir,ondd)/ondd.conf \
		$(TARGET_DIR)/etc/conf.d/ondd
	$(INSTALL) -Dm0755 $(call epkgdir,ondd)/S90ondd \
		$(TARGET_DIR)/etc/init.d/S90ondd
	$(SED) '$(ONDD_SED_CMDS)' $(TARGET_DIR)/etc/init.d/S90ondd
	$(INSTALL) -Dm644 $(call epkgdir,ondd)/ca.crt $(TARGET_DIR)/etc/outernet/ca.crt
endef

$(eval $(generic-package))
