################################################################################
#
# python-bitpack
#
################################################################################

PYTHON_BITPACK_VERSION = 0.2
PYTHON_BITPACK_SITE = $(call github,Outernet-Project,bitpack,v$(PYTHON_BITPACK_VERSION))
PYTHON_BITPACK_LICENSE = BSD
PYTHON_BITPACK_LICENSE_FILES = LICENSE
PYTHON_BITPACK_SETUP_TYPE = setuptools

$(eval $(python-package))
