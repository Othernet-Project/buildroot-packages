################################################################################
#
# python-bottle-streamline
#
################################################################################

PYTHON_BOTTLE_STREAMLINE_VERSION = a5bd4e4a8ad254b549e41e91ed445f184576b845
PYTHON_BOTTLE_STREAMLINE_SITE = $(call github,Outernet-Project,bottle-streamline,$(PYTHON_BOTTLE_STREAMLINE_VERSION))
PYTHON_BOTTLE_STREAMLINE_LICENSE = BSD
PYTHON_BOTTLE_STREAMLINE_LICENSE_FILES = LICENSE
PYTHON_BOTTLE_STREAMLINE_SETUP_TYPE = setuptools

$(eval $(python-package))
