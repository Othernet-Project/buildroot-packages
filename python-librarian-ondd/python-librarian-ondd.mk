################################################################################
#
# python-librarian-ondd
#
################################################################################

PYTHON_LIBRARIAN_ONDD_VERSION = 128ee79b5e1bdab488662502991efea7b5fae758
PYTHON_LIBRARIAN_ONDD_SITE = $(call github,Outernet-Project,librarian-ondd,$(PYTHON_LIBRARIAN_ONDD_VERSION))
PYTHON_LIBRARIAN_ONDD_LICENSE = GPL
PYTHON_LIBRARIAN_ONDD_SETUP_TYPE = setuptools

$(eval $(python-package))
