################################################################################
#
# python-pyhostapdconf
#
################################################################################

PYTHON_PYHOSTAPDCONF_VERSION = v1.0
PYTHON_PYHOSTAPDCONF_SITE = $(call github,Othernet-Project,pyhostapdconf,$(PYTHON_PYHOSTAPDCONF_VERSION))
PYTHON_PYHOSTAPDCONF_LICENSE = GPLv3+
PYTHON_PYHOSTAPDCONF_LICENSE_FILES = COPYING
PYTHON_PYHOSTAPDCONF_SETUP_TYPE = setuptools

$(eval $(python-package))
