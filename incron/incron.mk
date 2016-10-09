################################################################################
#
# incron
#
################################################################################

INCRON_VERSION = master
INCRON_SITE = $(call github,Outernet-Project,incron,$(INCRON_VERSION))
INCRON_LICENSE = GPLv2
INCRON_LICENSE_FILES = COPYING


define INCRON_BUILD_CMDS
    $(TARGET_MAKE_ENV) \
    CFLAGS="$(TARGET_CFLAGS) \
    LDFLAGS="$(TARGET_LDFLAGS)" \
    CXX="$(TARGET_CC)" \
    $(MAKE) -C $(@D) clean incrond
endef

define INCRON_INSTALL_TARGET_CMDS
	$(INSTALL) -Dm755 $(@D)/incrond $(TARGET_DIR)/sbin/incrond
endef

$(eval $(generic-package))
