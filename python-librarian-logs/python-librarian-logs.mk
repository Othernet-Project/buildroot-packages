################################################################################
#
# python-librarian-logs
#
################################################################################

PYTHON_LIBRARIAN_LOGS_VERSION = v1.1
PYTHON_LIBRARIAN_LOGS_SITE = $(call github,Outernet-Project,librarian-logs,$(PYTHON_LIBRARIAN_LOGS_VERSION))
PYTHON_LIBRARIAN_LOGS_LICENSE = GPL
PYTHON_LIBRARIAN_LOGS_SETUP_TYPE = setuptools

$(eval $(python-package))
