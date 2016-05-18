################################################################################
#
# python-librarian-ui
#
################################################################################

PYTHON_LIBRARIAN_UI_VERSION = a4d4e9ceae7ad87e2ffa49c7ceabc23846d5c8b4
PYTHON_LIBRARIAN_UI_SITE = $(call github,Outernet-Project,librarian-ui,$(PYTHON_LIBRARIAN_UI_VERSION))
PYTHON_LIBRARIAN_UI_LICENSE = GPLv3+
PYTHON_LIBRARIAN_UI_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_UI_SETUP_TYPE = setuptools

$(eval $(python-package))
