################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = 4d3698ecad193fbed0b4cfd2aead55ae87aee67f
MONITORING_SITE = $(call github,Outernet-Project,monitoring,$(MONITORING_VERSION))
MONITORING_LICENSE = GPLv3+
MONITORING_LICENSE_FILES = COPYING
MONITORING_SETUP_TYPE = setuptools

define MONITORING_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(BR2_EXTERNAL)/package/monitoring/S91monitoring \
		$(TARGET_DIR)/etc/init.d/S91monitoring
endef


$(eval $(python-package))
