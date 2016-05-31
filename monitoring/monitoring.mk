################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = v1.0
MONITORING_SITE = $(call github,Outernet-Project,monitoring,$(MONITORING_VERSION))
MONITORING_LICENSE = GPLv3+
MONITORING_LICENSE_FILES = COPYING
MONITORING_SETUP_TYPE = setuptools

MONITORING_SED_CMDS += s|%PERSISTDIR%|$(call qstrip,$(BR2_MONITORING_PERSISTDIR))|;
MONITORING_SED_CMDS += s|%LIBRARIAN_SETTINGS_FILE%|$(call qstrip,$(BR2_LIBRARIAN_SETTINGS_FILE))|;

define MONITORING_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(BR2_EXTERNAL)/package/monitoring/S91monitoring \
		$(TARGET_DIR)/etc/init.d/S91monitoring
	sed -i '$(MONITORING_SED_CMDS)' $(TARGET_DIR)/etc/init.d/S91monitoring
endef

$(eval $(python-package))
