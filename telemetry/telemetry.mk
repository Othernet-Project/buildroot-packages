################################################################################
#
# telemetry
#
################################################################################

TELEMETRY_VERSION = v1.1
TELEMETRY_SITE = $(call github,Othernet-Project,telemetry_client,$(TELEMETRY_VERSION))
TELEMETRY_SETUP_TYPE = setuptools

define TELEMETRY_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(call epkgdir,telemetry)/S91telemetry \
		$(TARGET_DIR)/etc/init.d/S91telemetry
endef

$(eval $(python-package))
