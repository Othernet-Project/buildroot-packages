################################################################################
#
# python-librarian-netinterfaces
#
################################################################################

PYTHON_LIBRARIAN_NETINTERFACES_VERSION = 06bd39faa54635b3fc78bfde38a62a2052abefbd
PYTHON_LIBRARIAN_NETINTERFACES_SITE = $(call github,Outernet-Project,librarian-netinterfaces,$(PYTHON_LIBRARIAN_NETINTERFACES_VERSION))
PYTHON_LIBRARIAN_NETINTERFACES_LICENSE = GPLv3
PYTHON_LIBRARIAN_NETINTERFACES_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_NETINTERFACES_SETUP_TYPE = setuptools

$(eval $(python-package))
