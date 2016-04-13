################################################################################
#
# python-librarian-notifications
#
################################################################################

PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION = 96bf7d74ed549f7f29cecc504794616e0dd9f11e
PYTHON_LIBRARIAN_NOTIFICATIONS_SITE = $(call github,Outernet-Project,librarian-notifications,$(PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION))
PYTHON_LIBRARIAN_NOTIFICATIONS_LICENSE = GPL
PYTHON_LIBRARIAN_NOTIFICATIONS_SETUP_TYPE = setuptools

$(eval $(python-package))
