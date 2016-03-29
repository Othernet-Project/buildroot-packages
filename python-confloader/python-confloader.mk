################################################################################
#
# python-confloader
#
################################################################################

PYTHON_CONFLOADER_VERSION = 38a29507b6213b573ed9121cf7965122f5e69fe1
PYTHON_CONFLOADER_SITE = $(call github,Outernet-Project,confloader,$(PYTHON_CONFLOADER_VERSION))
PYTHON_CONFLOADER_LICENSE = GPL
PYTHON_BEAUTIFULSOUP4_LICENSE_FILES = LICENSE
PYTHON_CONFLOADER_SETUP_TYPE = setuptools

$(eval $(python-package))
