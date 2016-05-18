################################################################################
#
# python-librarian-menu
#
################################################################################

PYTHON_LIBRARIAN_MENU_VERSION = 071e880c89d57f058b41fde8a25628f3d6e6296d
PYTHON_LIBRARIAN_MENU_SITE = $(call github,Outernet-Project,librarian-menu,$(PYTHON_LIBRARIAN_MENU_VERSION))
PYTHON_LIBRARIAN_MENU_LICENSE = GPLv3
PYTHON_LIBRARIAN_MENU_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_MENU_SETUP_TYPE = setuptools

$(eval $(python-package))
