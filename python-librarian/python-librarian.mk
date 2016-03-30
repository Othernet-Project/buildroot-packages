################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = bc13cf0353f1c561bc24174d984370098ac4492d
PYTHON_LIBRARIAN_SITE = $(call github,Outernet-Project,librarian,$(PYTHON_LIBRARIAN_VERSION))
PYTHON_LIBRARIAN_LICENSE = GPL
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

$(eval $(python-package))
