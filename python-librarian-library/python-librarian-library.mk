################################################################################
#
# python-librarian-library
#
################################################################################

PYTHON_LIBRARIAN_LIBRARY_VERSION = e46ab1656354143048c6ce6934fc5b1549d39437
PYTHON_LIBRARIAN_LIBRARY_SITE = $(call github,Outernet-Project,librarian-library,$(PYTHON_LIBRARIAN_LIBRARY_VERSION))
PYTHON_LIBRARIAN_LIBRARY_LICENSE = GPLv3+
PYTHON_LIBRARIAN_LIBRARY_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_LIBRARY_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_LIBRARY),y)
LIBRARIAN_COMPONENTS += librarian_library
endif

$(eval $(python-package))
