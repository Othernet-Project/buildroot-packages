################################################################################
#
# python-librarian-analytics
#
################################################################################

PYTHON_LIBRARIAN_ANALYTICS_VERSION = f7709a343f1d18e14f7791f88d46f37bb0f2e3bd
PYTHON_LIBRARIAN_ANALYTICS_SITE = $(call github,Outernet-Project,librarian-analytics,$(PYTHON_LIBRARIAN_ANALYTICS_VERSION))
PYTHON_LIBRARIAN_ANALYTICS_LICENSE = GPLv3+
PYTHON_LIBRARIAN_ANALYTICS_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_ANALYTICS_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_ANALYTICS),y)
LIBRARIAN_COMPONENTS += librarian_analytics
endif

$(eval $(python-package))
