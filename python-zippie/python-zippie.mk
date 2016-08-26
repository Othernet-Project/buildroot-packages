################################################################################
#
# python-zippie
#
################################################################################

PYTHON_ZIPPIE_VERSION = v0.1.dev1
PYTHON_ZIPPIE_SITE = $(call github,integricho,zippie,$(PYTHON_ZIPPIE_VERSION))
PYTHON_ZIPPIE_LICENSE = PROPRIETARY
PYTHON_ZIPPIE_SETUP_TYPE = distutils

$(eval $(python-package))
