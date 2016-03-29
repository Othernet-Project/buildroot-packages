################################################################################
#
# python-zippie
#
################################################################################

PYTHON_ZIPPIE_VERSION = f041f8de0428e230471762f39dedaa0b199c3fcb
PYTHON_ZIPPIE_SITE = $(call github,integricho,zippie,$(PYTHON_ZIPPIE_VERSION))
PYTHON_ZIPPIE_LICENSE = PROPRIETARY
PYTHON_ZIPPIE_SETUP_TYPE = distutils

$(eval $(python-package))
