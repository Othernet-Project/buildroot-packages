################################################################################
#
# python-librarian-notifications
#
################################################################################

PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION = 0f01fc9aed07c12334ea79a2ab61f1031a8a5094
PYTHON_LIBRARIAN_NOTIFICATIONS_SITE = $(call github,Outernet-Project,librarian-notifications,$(PYTHON_LIBRARIAN_NOTIFICATIONS_VERSION))
PYTHON_LIBRARIAN_NOTIFICATIONS_LICENSE = GPL
PYTHON_LIBRARIAN_NOTIFICATIONS_SETUP_TYPE = setuptools

$(eval $(python-package))
