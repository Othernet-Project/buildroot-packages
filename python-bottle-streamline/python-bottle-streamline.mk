################################################################################
#
# python-bottle-streamline
#
################################################################################

PYTHON_BOTTLE_STREAMLINE_VERSION = 8657d80e8edb903ebbe77e9580afd7d886761ccb
PYTHON_BOTTLE_STREAMLINE_SITE = $(call github,Outernet-Project,bottle-streamline,$(PYTHON_BOTTLE_STREAMLINE_VERSION))
PYTHON_BOTTLE_STREAMLINE_LICENSE = BSD
PYTHON_BOTTLE_STREAMLINE_LICENSE_FILES = LICENSE
PYTHON_BOTTLE_STREAMLINE_SETUP_TYPE = setuptools

$(eval $(python-package))
