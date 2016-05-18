################################################################################
#
# python-librarian-filemanager
#
################################################################################

PYTHON_LIBRARIAN_FILEMANAGER_VERSION = v1.3
PYTHON_LIBRARIAN_FILEMANAGER_SITE = $(call github,Outernet-Project,librarian-filemanager,$(PYTHON_LIBRARIAN_FILEMANAGER_VERSION))
PYTHON_LIBRARIAN_FILEMANAGER_LICENSE = GPLv3+
PYTHON_LIBRARIAN_FILEMANAGER_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_FILEMANAGER_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_FILEMANAGER),y)
LIBRARIAN_COMPONENTS += librarian_filemanager
LIBRARIAN_MENU += files
endif

$(eval $(python-package))
