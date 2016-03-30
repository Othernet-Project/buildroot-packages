################################################################################
#
# python-librarian-filemanager
#
################################################################################

PYTHON_LIBRARIAN_FILEMANAGER_VERSION = 2ae40b04d790f9dedb320e854c70d02b65f6025d
PYTHON_LIBRARIAN_FILEMANAGER_SITE = $(call github,Outernet-Project,librarian-filemanager,$(PYTHON_LIBRARIAN_FILEMANAGER_VERSION))
PYTHON_LIBRARIAN_FILEMANAGER_LICENSE = GPL
PYTHON_LIBRARIAN_FILEMANAGER_SETUP_TYPE = setuptools

$(eval $(python-package))
