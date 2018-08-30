################################################################################
#
# python-disentangler
#
################################################################################

PYTHON_DISENTANGLER_VERSION = v1.0
PYTHON_DISENTANGLER_SITE = $(call github,Othernet-Project,disentangler,$(PYTHON_DISENTANGLER_VERSION))
PYTHON_DISENTANGLER_LICENSE = GPLv3+
PYTHON_DISENTANGLER_LICENSE_FILES = COPYING
PYTHON_DISENTANGLER_SETUP_TYPE = setuptools

$(eval $(python-package))
