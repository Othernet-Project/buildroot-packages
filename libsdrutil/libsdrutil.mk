################################################################################
#
# ondd
#
################################################################################

LIBSDRUTIL_VERSION = 54f072aa46e5eb51d1b197784d03af894a407420
LIBSDRUTIL_SITE = $(call github,Outernet-Project,libsdrutil,$(LIBSDRUTIL_VERSION))
LIBSDRUTIL_LICENSE = LGPLv3+ GPLv3+
LIBSDRUTIL_LICENSE_FILE = COPYING.lesser COPYING

define LIBSDRUTIL_INSTALL_TARGET_CMDS
	$(MAKE) -C $(@D) INSTALL_PREFIX=$(TARGET_DIR) \
		CC=$(TARGET_CC) clean install
endef

$(eval $(generic-package))
