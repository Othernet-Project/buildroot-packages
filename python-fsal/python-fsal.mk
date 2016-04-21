################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = ef6237f8a3def290822394c5f96306030ab96048
PYTHON_FSAL_SITE = $(call github,Outernet-Project,fsal,$(PYTHON_FSAL_VERSION))
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
