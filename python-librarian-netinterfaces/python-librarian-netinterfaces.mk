################################################################################
#
# python-librarian-netinterfaces
#
################################################################################

PYTHON_LIBRARIAN_NETINTERFACES_VERSION = 5257dc21303b228c44bda5aac2c88ad5edd9b498
PYTHON_LIBRARIAN_NETINTERFACES_SITE = $(call github,Outernet-Project,librarian-netinterfaces,$(PYTHON_LIBRARIAN_NETINTERFACES_VERSION))
PYTHON_LIBRARIAN_NETINTERFACES_LICENSE = GPLv3+
PYTHON_LIBRARIAN_NETINTERFACES_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_NETINTERFACES_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_NETINTERFACES),y)
LIBRARIAN_COMPONENTS += librarian_netinterfaces
endif

$(eval $(python-package))