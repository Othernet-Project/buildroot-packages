################################################################################
#
# pkgtool
#
################################################################################

PKGTOOL_VERSION = v0.5.0
PKGTOOL_SOURCE = $(PKGTOOL_VERSION).tar.gz
PKGTOOL_SITE = https://github.com/Outernet-Project/tools-pkg/archive
PKGTOOL_DEPENDENCIES = openssl
PKGTOOL_LICENSE = GPL

define PKGTOOL_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) CC="$(TARGET_CC)" LDFLAGS="$(TARGET_LDFLAGS)" \
	-C $(@D) clean pkgtool
endef

define PKGTOOL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/pkgtool $(TARGET_DIR)/usr/sbin/pkgtool
endef

define HOST_PKGTOOL_BUILD_CMDS
	# CFLAGS are not relayed because LARGEFILE flags cause mkpkg and installer
	# to fail.
	$(HOST_MAKE_ENV) $(MAKE) CFLAGS= LDFLAGS="$(HOST_LDFLAGS)" \
		CROSS_COMPILE=$(TARGET_CROSS) TARGET_LDFLAGS="$(TARGET_LDFLAGS)" \
		-C $(@D) clean mkpkg
endef

define HOST_PKGTOOL_INSTALL_CMDS
	$(INSTALL) -D -m 755 $(@D)/mkpkg $(HOST_DIR)/usr/bin/mkpkg
endef

$(eval $(generic-package))
$(eval $(host-generic-package))
