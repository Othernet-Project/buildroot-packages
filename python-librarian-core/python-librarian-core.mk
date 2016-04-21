################################################################################
#
# python-librarian-core
#
################################################################################

PYTHON_LIBRARIAN_CORE_VERSION = v1.2
PYTHON_LIBRARIAN_CORE_SITE = $(call github,Outernet-Project,librarian-core,$(PYTHON_LIBRARIAN_CORE_VERSION))
PYTHON_LIBRARIAN_CORE_LICENSE = GPL
PYTHON_LIBRARIAN_CORE_SETUP_TYPE = setuptools

$(eval $(python-package))
