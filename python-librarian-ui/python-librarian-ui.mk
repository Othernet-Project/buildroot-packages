################################################################################
#
# python-librarian-ui
#
################################################################################

PYTHON_LIBRARIAN_UI_VERSION = cb34ad07cfe5d6989a7b5761972c59338afa24b4
PYTHON_LIBRARIAN_UI_SITE = $(call github,Outernet-Project,librarian-ui,$(PYTHON_LIBRARIAN_UI_VERSION))
PYTHON_LIBRARIAN_UI_LICENSE = GPL
PYTHON_LIBRARIAN_UI_SETUP_TYPE = setuptools

$(eval $(python-package))
