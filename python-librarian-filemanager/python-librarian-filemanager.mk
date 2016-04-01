################################################################################
#
# python-librarian-filemanager
#
################################################################################

PYTHON_LIBRARIAN_FILEMANAGER_VERSION = c3bae823f344041388422ee139f4c12a1318d286
PYTHON_LIBRARIAN_FILEMANAGER_SITE = $(call github,Outernet-Project,librarian-filemanager,$(PYTHON_LIBRARIAN_FILEMANAGER_VERSION))
PYTHON_LIBRARIAN_FILEMANAGER_LICENSE = GPL
PYTHON_LIBRARIAN_FILEMANAGER_SETUP_TYPE = setuptools

$(eval $(python-package))
