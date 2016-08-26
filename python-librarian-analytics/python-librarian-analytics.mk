################################################################################
#
# python-librarian-analytics
#
################################################################################

PYTHON_LIBRARIAN_ANALYTICS_VERSION = v2.0
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
TARGET_FINALIZE_HOOKS += PYTHON_LIBRARIAN_ANALYTICS_INSTALL_CONF
endif

$(eval $(python-package))
