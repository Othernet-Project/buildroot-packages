################################################################################
#
# python-librarian-notifications
#
################################################################################

PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION = v1.3
PYTHON_LIBRARIAN_NOTIFICATIONS_SITE = $(call github,Outernet-Project,librarian-notifications,$(PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION))
PYTHON_LIBRARIAN_NOTIFICATIONS_LICENSE = GPLv3+
PYTHON_LIBRARIAN_NOTIFICATIONS_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_NOTIFICATIONS_SETUP_TYPE = setuptools

$(eval $(python-package))
