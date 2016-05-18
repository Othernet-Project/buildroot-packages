################################################################################
#
# python-librarian-dashboard
#
################################################################################

PYTHON_LIBRARIAN_DASHBOARD_VERSION = 3aab00c2a31a75919481c1616219cfeb5524828b
PYTHON_LIBRARIAN_DASHBOARD_SITE = $(call github,Outernet-Project,librarian-dashboard,$(PYTHON_LIBRARIAN_DASHBOARD_VERSION))
PYTHON_LIBRARIAN_DASHBOARD_LICENSE = GPLv3+
PYTHON_LIBRARIAN_DASHBOARD_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_DASHBOARD_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_DASHBOARD),y)
LIBRARIAN_COMPONENTS += librarian_dashboard
endif

$(eval $(python-package))
