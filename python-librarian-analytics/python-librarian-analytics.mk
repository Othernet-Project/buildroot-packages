################################################################################
#
# python-librarian-analytics
#
################################################################################

PYTHON_LIBRARIAN_ANALYTICS_VERSION = v1.5
PYTHON_LIBRARIAN_ANALYTICS_SITE = $(call github,Outernet-Project,librarian-analytics,$(PYTHON_LIBRARIAN_ANALYTICS_VERSION))
PYTHON_LIBRARIAN_ANALYTICS_LICENSE = GPLv3+
PYTHON_LIBRARIAN_ANALYTICS_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_ANALYTICS_SETUP_TYPE = setuptools

$(eval $(python-package))
