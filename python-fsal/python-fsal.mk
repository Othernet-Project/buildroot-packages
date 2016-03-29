################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = efb8af57aee7de44075d562ee4810bd7ee3bff4d
PYTHON_FSAL_SITE = $(call github,Outernet-Project,fsal,$(PYTHON_FSAL_VERSION))
PYTHON_FSAL_LICENSE = GPL
PYTHON_FSAL_SETUP_TYPE = setuptools

$(eval $(python-package))
