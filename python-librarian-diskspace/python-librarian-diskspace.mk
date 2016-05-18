################################################################################
#
# python-librarian-diskspace
#
################################################################################

PYTHON_LIBRARIAN_DISKSPACE_VERSION = 185c1ed573d1cc1c8aa99ff760c2b9f03ad1bc40
PYTHON_LIBRARIAN_DISKSPACE_SITE = $(call github,Outernet-Project,librarian-diskspace,$(PYTHON_LIBRARIAN_DISKSPACE_VERSION))
PYTHON_LIBRARIAN_DISKSPACE_LICENSE = GPLv3+
PYTHON_LIBRARIAN_DISKSPACE_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_DISKSPACE_SETUP_TYPE = setuptools

$(eval $(python-package))
