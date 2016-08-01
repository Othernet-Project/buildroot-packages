################################################################################
#
# python-librarian-simplified
#
################################################################################

PYTHON_LIBRARIAN_SIMPLIFIED_VERSION = 369bd53502681f5d410e2bfb2454c0a754e774ad
PYTHON_LIBRARIAN_SIMPLIFIED_SITE = $(call github,Outernet-Project,librarian-simplified,$(PYTHON_LIBRARIAN_SIMPLIFIED_VERSION))
PYTHON_LIBRARIAN_SIMPLIFIED_LICENSE = GPLv3+
PYTHON_LIBRARIAN_SIMPLIFIED_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_SIMPLIFIED_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_SIMPLIFIED),y)
LIBRARIAN_COMPONENTS += librarian_simplified
endif

$(eval $(python-package))
