################################################################################
#
# python-bottle-streamline
#
################################################################################

PYTHON_BOTTLE_STREAMLINE_VERSION = v1.0.post3
PYTHON_BOTTLE_STREAMLINE_SITE = $(call github,Othernet-Project,bottle-streamline,$(PYTHON_BOTTLE_STREAMLINE_VERSION))
PYTHON_BOTTLE_STREAMLINE_LICENSE = BSD
PYTHON_BOTTLE_STREAMLINE_LICENSE_FILES = LICENSE
PYTHON_BOTTLE_STREAMLINE_SETUP_TYPE = setuptools

$(eval $(python-package))
