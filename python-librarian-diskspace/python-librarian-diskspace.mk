################################################################################
#
# python-librarian-diskspace
#
################################################################################

PYTHON_LIBRARIAN_DISKSPACE_VERSION = 345d9de2ee5b443791ce8c7916f14adc97452368
PYTHON_LIBRARIAN_DISKSPACE_SITE = $(call github,Outernet-Project,librarian-diskspace,$(PYTHON_LIBRARIAN_DISKSPACE_VERSION))
PYTHON_LIBRARIAN_DISKSPACE_LICENSE = GPL
PYTHON_LIBRARIAN_DISKSPACE_SETUP_TYPE = setuptools

$(eval $(python-package))
