################################################################################
#
# python-hwd
#
################################################################################

PYTHON_HWD_VERSION = 07c4507b6618502452e6743d9dae31931d4c5e93
PYTHON_HWD_SITE = $(call github,Outernet-Project,hwd,$(PYTHON_HWD_VERSION))
PYTHON_HWD_LICENSE = GPLv3+
PYTHON_HWD_LICENSE_FILES = COPYING
PYTHON_HWD_SETUP_TYPE = setuptools

$(eval $(python-package))
