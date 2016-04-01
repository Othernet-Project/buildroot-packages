################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 1a61a3a1f6771c6355f4f69e6331da5161a0e75c
PYTHON_FSAL_SITE = $(call github,Outernet-Project,fsal,$(PYTHON_FSAL_VERSION))
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
