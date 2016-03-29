################################################################################
#
# python-hwd
#
################################################################################

PYTHON_HWD_VERSION = 7554a190edef1db8bea172d7a424f0453e215f31
PYTHON_HWD_SITE = $(call github,Outernet-Project,hwd,$(PYTHON_HWD_VERSION))
PYTHON_HWD_LICENSE = GPL
PYTHON_HWD_LICENSE_FILE = COPYING
PYTHON_HWD_SETUP_TYPE = setuptools

$(eval $(python-package))
