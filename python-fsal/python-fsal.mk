################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 85dd3f07cfcf93ebfcf18c6a35bbf9fcc1e9791a
PYTHON_FSAL_SITE = $(call github,Outernet-Project,fsal,$(PYTHON_FSAL_VERSION))
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
