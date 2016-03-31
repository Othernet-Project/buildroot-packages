################################################################################
#
# python-librarian-filemanager
#
################################################################################

PYTHON_LIBRARIAN_FILEMANAGER_VERSION = 3aab3d49fb16d7aaac3ad9452e573e65c82afa7a
PYTHON_LIBRARIAN_FILEMANAGER_SITE = $(call github,Outernet-Project,librarian-filemanager,$(PYTHON_LIBRARIAN_FILEMANAGER_VERSION))
PYTHON_LIBRARIAN_FILEMANAGER_LICENSE = GPL
PYTHON_LIBRARIAN_FILEMANAGER_SETUP_TYPE = setuptools

$(eval $(python-package))
