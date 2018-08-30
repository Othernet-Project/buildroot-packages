################################################################################
#
# incron
#
################################################################################

INCRON_VERSION = master
INCRON_SITE = $(call github,Othernet-Project,incron,$(INCRON_VERSION))
INCRON_LICENSE = GPLv2
INCRON_LICENSE_FILES = COPYING

INCRON_SED_CMDS += s|%CONFDIR%|$(call qstrip,$(BR2_INCRON_CONFDIR))|;

define INCRON_BUILD_CMDS
    $(TARGET_MAKE_ENV) \
    CFLAGS="$(TARGET_CFLAGS) -Wno-unused-function" \
    LDFLAGS="$(TARGET_LDFLAGS)" \
    CXX="$(TARGET_CXX)" \
    $(MAKE) -C $(@D) clean incrond
endef

# note!!! conf dir different from /etc/incrond.conf currently will not work!
# this is due to the fact that we are actually not yet installing a config that can set the confdir
# so leave it the default. its only there so that the config var is available in other packages

define INCRON_INSTALL_TARGET_CMDS
    $(INSTALL) -Dm755 $(@D)/incrond $(TARGET_DIR)/sbin/incrond
    $(INSTALL) -m755 -d $(TARGET_DIR)$(call qstrip,$(BR2_INCRON_CONFDIR))
endef

$(eval $(generic-package))
