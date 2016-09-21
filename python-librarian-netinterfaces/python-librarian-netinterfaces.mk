################################################################################
#
# python-librarian-netinterfaces
#
################################################################################

PYTHON_LIBRARIAN_NETINTERFACES_VERSION = ea88c7b39d829df30193b665e09b434123d5a141
PYTHON_LIBRARIAN_NETINTERFACES_SITE = $(call github,Outernet-Project,librarian-netinterfaces,$(PYTHON_LIBRARIAN_NETINTERFACES_VERSION))
PYTHON_LIBRARIAN_NETINTERFACES_LICENSE = GPLv3+
PYTHON_LIBRARIAN_NETINTERFACES_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_NETINTERFACES_SETUP_TYPE = setuptools


define PYTHON_LIBRARIAN_NETINTERFACES_INSTALL_CONF
	$(INSTALL) -Dm644 $(call epkgdir,python-librarian-netinterfaces)/netinterfaces.ini \
		$(TARGET_DIR)/etc/librarian.d/netinterfaces.ini
endef

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_NETINTERFACES),y)
LIBRARIAN_COMPONENTS += librarian_netinterfaces
TARGET_FINALIZE_HOOKS += PYTHON_LIBRARIAN_NETINTERFACES_INSTALL_CONF
endif

$(eval $(python-package))
