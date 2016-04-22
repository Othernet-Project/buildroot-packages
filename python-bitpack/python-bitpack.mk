################################################################################
#
# python-bitpack
#
################################################################################

PYTHON_BITPACK_VERSION = v1.0
PYTHON_BITPACK_SITE = $(call github,Outernet-Project,bitpack,$(PYTHON_BITPACK_VERSION))
PYTHON_BITPACK_LICENSE = BSD
PYTHON_BITPACK_LICENSE_FILES = LICENSE
PYTHON_BITPACK_SETUP_TYPE = setuptools

$(eval $(python-package))
