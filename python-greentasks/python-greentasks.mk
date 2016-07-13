################################################################################
#
# python-greentasks
#
################################################################################

PYTHON_GREENTASKS_VERSION = v2.0.post1
PYTHON_GREENTASKS_SITE = $(call github,Outernet-Project,greentasks,$(PYTHON_GREENTASKS_VERSION))
PYTHON_GREENTASKS_LICENSE = BSD
PYTHON_GREENTASKS_LICENSE_FILE = COPYING
PYTHON_GREENTASKS_SETUP_TYPE = setuptools

$(eval $(python-package))
