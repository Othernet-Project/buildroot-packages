################################################################################
#
# python-bottle-fdsend
#
################################################################################

PYTHON_BOTTLE_FDSEND_VERSION = 0.1.1
PYTHON_BOTTLE_FDSEND_SOURCE = bottle-fdsend-$(PYTHON_BOTTLE_FDSEND_VERSION).tar.gz
PYTHON_BOTTLE_FDSEND_SITE = http://pypi.python.org/packages/source/b/bottle-fdsend
PYTHON_BOTTLE_FDSEND_LICENSE = GPLv3+
PYTHON_BOTTLE_FDSEND_LICENSE_FILES = COPYING
PYTHON_BOTTLE_FDSEND_SETUP_TYPE = setuptools

$(eval $(python-package))
