################################################################################
#
# python-librarian-simplified
#
################################################################################

PYTHON_LIBRARIAN_SIMPLIFIED_VERSION = fed0e8e003d4dae8697de42297c292c12b2fb0dd
PYTHON_LIBRARIAN_SIMPLIFIED_SITE = $(call github,Outernet-Project,librarian-simplified,$(PYTHON_LIBRARIAN_SIMPLIFIED_VERSION))
PYTHON_LIBRARIAN_SIMPLIFIED_LICENSE = GPLv3+
PYTHON_LIBRARIAN_SIMPLIFIED_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_SIMPLIFIED_SETUP_TYPE = setuptools

$(eval $(python-package))
