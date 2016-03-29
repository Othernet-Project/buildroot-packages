################################################################################
#
# python-librarian-core
#
################################################################################

PYTHON_LIBRARIAN_CORE_VERSION = ee1d68319a27585fa1dbd5e3107aef3ac2684c5e
PYTHON_LIBRARIAN_CORE_SITE = $(call github,Outernet-Project,librarian-core,$(PYTHON_LIBRARIAN_CORE_VERSION))
PYTHON_LIBRARIAN_CORE_LICENSE = GPL
PYTHON_LIBRARIAN_CORE_SETUP_TYPE = setuptools

$(eval $(python-package))
