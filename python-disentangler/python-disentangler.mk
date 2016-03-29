################################################################################
#
# python-disentangler
#
################################################################################

PYTHON_DISENTANGLER_VERSION = f805777e7b05d6e65fd61b7453ed121b7291b967
PYTHON_DISENTANGLER_SITE = $(call github,Outernet-Project,disentangler,$(PYTHON_DISENTANGLER_VERSION))
PYTHON_DISENTANGLER_LICENSE = GPL
PYTHON_DISENTANGLER_LICENSE_FILES = COPYING
PYTHON_DISENTANGLER_SETUP_TYPE = setuptools

$(eval $(python-package))
