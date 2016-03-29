################################################################################
#
# wptdm
#
################################################################################

WPTDM_VERSION = 1.0.0
WPTDM_SOURCE = wptdm-$(WPTDM_VERSION).tar.gz
WPTDM_SITE = https://outernet.is
WPTDM_DEPENDENCIES = openssl libcurl
WPTDM_LICENSE = PROPRIETARY

define WPTDM_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) INSTALL_PREFIX=$(TARGET_DIR) \
		CFLAGS=-fpermissive \
		CC=$(TARGET_CC) clean debug release install
endef

$(eval $(generic-package))
