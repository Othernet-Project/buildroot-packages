################################################################################
#
# python-librarian-simplified
#
################################################################################

PYTHON_LIBRARIAN_SIMPLIFIED_VERSION = cd407c4f0c1113434ad430fc3bb7d8395e865912
PYTHON_LIBRARIAN_SIMPLIFIED_SITE = $(call github,Outernet-Project,librarian-simplified,$(PYTHON_LIBRARIAN_SIMPLIFIED_VERSION))
PYTHON_LIBRARIAN_SIMPLIFIED_LICENSE = GPLv3+
PYTHON_LIBRARIAN_SIMPLIFIED_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_SIMPLIFIED_SETUP_TYPE = setuptools

$(eval $(python-package))
