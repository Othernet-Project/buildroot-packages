################################################################################
#
# python-librarian-filemanager
#
################################################################################

PYTHON_LIBRARIAN_FILEMANAGER_VERSION = 66d93e3c2ebd18ced96278e058a6d1c141d48c36
PYTHON_LIBRARIAN_FILEMANAGER_SITE = $(call github,Outernet-Project,librarian-filemanager,$(PYTHON_LIBRARIAN_FILEMANAGER_VERSION))
PYTHON_LIBRARIAN_FILEMANAGER_LICENSE = GPL
PYTHON_LIBRARIAN_FILEMANAGER_SETUP_TYPE = setuptools

$(eval $(python-package))
