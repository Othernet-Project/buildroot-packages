################################################################################
#
# python-librarian-netinterfaces
#
################################################################################

PYTHON_LIBRARIAN_NETINTERFACES_VERSION = 30e51022f433fda5ce0475a465b49e37f3d5a1fc
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
