################################################################################
#
# ondd
#
################################################################################

ONDD_VERSION = 2.1.0
ONDD_SITE = $(BR2_EXTERNAL)/package/ondd/src
ONDD_SITE_METHOD = local
ONDD_LICENSE = OFL
ONDD_LICENSE_FILE = LICENSE

ONDD_SED_CMDS += s|%CACHEDIR%|$(call qstrip,$(BR2_ONDD_CACHEDIR))|;
ONDD_SED_CMDS += s|%INTERNALDIR%|$(call qstrip,$(BR2_STORAGE_PRIMARY))|;
ONDD_SED_CMDS += s|%EXTERNALDIR%|$(call qstrip,$(BR2_STORAGE_SECONDARY))|;
ONDD_SED_CMDS += s|%GROUP%|$(call qstrip,$(BR2_ONDD_GROUP))|;

ifeq ($(BR2_PACKAGE_ONDD_BUILD),y)
ONDD_DEPENDENCIES = openssl

define ONDD_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) INSTALL_PREFIX=$(TARGET_DIR) \
		CFLAGS=-fpermissive \
		CC=$(TARGET_CC) clean debug release install
endef

else

define ONDD_INSTALL_TARGET_CMDS
	$(INSTALL) -Dm0644 $(@D)/LICENSE $(TARGET_DIR)/opt/licenses/ondd/LICENSE
endef

endif

define ONDD_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(BR2_EXTERNAL)/package/ondd/S90ondd \
		$(TARGET_DIR)/etc/init.d/S90ondd
	sed -i '$(ONDD_SED_CMDS)' $(TARGET_DIR)/etc/init.d/S90ondd
endef

$(eval $(generic-package))
