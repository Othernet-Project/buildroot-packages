################################################################################
#
# python-bottle-utils
#
################################################################################

PYTHON_BOTTLE_UTILS_VERSION = v2.0.post2
PYTHON_BOTTLE_UTILS_SITE = $(call github,Outernet-Project,bottle-utils,$(PYTHON_BOTTLE_UTILS_VERSION))
PYTHON_BOTTLE_UTILS_LICENSE = BSD
PYTHON_BOTTLE_UTILS_LICENSE_FILES = LICENSE
PYTHON_BOTTLE_UTILS_SETUP_TYPE = setuptools

$(eval $(python-package))
