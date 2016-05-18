################################################################################
#
# ondd
#
################################################################################

ONDD_VERSION = 2.1.0
ONDD_SITE = $(BR2_EXTERNAL)/package/ondd/src
ONDD_SITE_METHOD = local
ONDD_LICENSE = PROPRIETARY

ifeq ($(BR2_PACKAGE_ONDD_BUILD),y)
ONDD_DEPENDENCIES = openssl

define ONDD_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) INSTALL_PREFIX=$(TARGET_DIR) \
		CFLAGS=-fpermissive \
		CC=$(TARGET_CC) clean debug release install
endef
endif

define ONDD_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(BR2_EXTERNAL)/package/ondd/S90ondd \
		$(TARGET_DIR)/etc/init.d/S90ondd
endef

$(eval $(generic-package))
