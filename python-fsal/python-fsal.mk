################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 2eebe7b0ebd73701f06d39e6c83c174c57afd59d
PYTHON_FSAL_SITE = $(call github,Outernet-Project,fsal,$(PYTHON_FSAL_VERSION))
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
