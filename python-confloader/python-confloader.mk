################################################################################
#
# python-confloader
#
################################################################################

PYTHON_CONFLOADER_VERSION = v1.1
PYTHON_CONFLOADER_SITE = $(call github,Outernet-Project,confloader,$(PYTHON_CONFLOADER_VERSION))
PYTHON_CONFLOADER_LICENSE = BSD
PYTHON_CONFLOADER_LICENSE_FILES = LICENSE
PYTHON_CONFLOADER_SETUP_TYPE = setuptools

$(eval $(python-package))
