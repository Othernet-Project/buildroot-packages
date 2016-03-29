################################################################################
#
# python-disentangler
#
################################################################################

PYTHON_DISENTANGLER_VERSION = 7c7d6b0d27fd6b42f59b8a43420a00ecc5a5e97d
PYTHON_DISENTANGLER_SITE = $(call github,Outernet-Project,disentangler,$(PYTHON_DISENTANGLER_VERSION))
PYTHON_DISENTANGLER_LICENSE = GPL
PYTHON_DISENTANGLER_LICENSE_FILES = COPYING
PYTHON_DISENTANGLER_SETUP_TYPE = setuptools

$(eval $(python-package))
