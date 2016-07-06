################################################################################
#
# python-librarian-analytics
#
################################################################################

PYTHON_LIBRARIAN_ANALYTICS_VERSION = 8d57d2ac67673d1ec8e54ccfd99f5a0a6580f3f4
PYTHON_LIBRARIAN_ANALYTICS_SITE = $(call github,Outernet-Project,librarian-analytics,$(PYTHON_LIBRARIAN_ANALYTICS_VERSION))
PYTHON_LIBRARIAN_ANALYTICS_LICENSE = GPLv3+
PYTHON_LIBRARIAN_ANALYTICS_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_ANALYTICS_SETUP_TYPE = setuptools

define PYTHON_LIBRARIAN_ANALYTICS_INSTALL_CONF
	$(INSTALL) -Dm644 $(call epkgdir,python-librarian-analytics)/analytics.ini \
		$(TARGET_DIR)/etc/librarian.d/analytics.ini
endef

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_ANALYTICS),y)
LIBRARIAN_COMPONENTS += librarian_analytics
LIBRARIAN_INCLUDES += /etc/librarian.d/analytics.ini
TARGET_FINALIZE_HOOKS += PYTHON_LIBRARIAN_ANALYTICS_INSTALL_CONF
endif

$(eval $(python-package))
