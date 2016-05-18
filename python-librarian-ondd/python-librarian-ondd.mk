################################################################################
#
# python-librarian-ondd
#
################################################################################

PYTHON_LIBRARIAN_ONDD_VERSION = 128ee79b5e1bdab488662502991efea7b5fae758
PYTHON_LIBRARIAN_ONDD_SITE = $(call github,Outernet-Project,librarian-ondd,$(PYTHON_LIBRARIAN_ONDD_VERSION))
PYTHON_LIBRARIAN_ONDD_LICENSE = GPLv3+
PYTHON_LIBRARIAN_ONDD_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_ONDD_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_ONDD),y)
LIBRARIAN_COMPONENTS += librarian_ondd
endif

$(eval $(python-package))
