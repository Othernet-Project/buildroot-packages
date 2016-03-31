################################################################################
#
# python-librarian-diskspace
#
################################################################################

PYTHON_LIBRARIAN_DISKSPACE_VERSION = 3163970a7334aa815e1ea002f7f6453073c9313a
PYTHON_LIBRARIAN_DISKSPACE_SITE = $(call github,Outernet-Project,librarian-diskspace,$(PYTHON_LIBRARIAN_DISKSPACE_VERSION))
PYTHON_LIBRARIAN_DISKSPACE_LICENSE = GPL
PYTHON_LIBRARIAN_DISKSPACE_SETUP_TYPE = setuptools

$(eval $(python-package))
