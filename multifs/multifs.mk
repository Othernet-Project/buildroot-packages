################################################################################
#
# multifs.mk
#
################################################################################

MULTIFS_VERSION = v0.3
MULTIFS_SITE = $(call github,Outernet-Project,multifs,$(MULTIFS_VERSION))
MULTIFS_LICENSE = GPLv3+
MULTIFS_LICENSE_FILES = COPYING



define MULTIFS_BUILD_CMDS
    $(TARGET_MAKE_ENV) \
    CFLAGS="$(TARGET_CFLAGS) -DWITHOUT_XATTR" \
    LDFLAGS="$(TARGET_LDFLAGS)" \
    CC="$(TARGET_CC)" \
    $(MAKE) -C $(@D) clean multifs
endef


define MULTIFS_INSTALL_TARGET_CMDS
	$(INSTALL) -Dm755 $(@D)/multifs $(TARGET_DIR)/usr/bin/multifs
endef

$(eval $(generic-package))
