################################################################################
#
# python-librarian-netinterfaces
#
################################################################################

PYTHON_LIBRARIAN_NETINTERFACES_VERSION = v2.0
PYTHON_LIBRARIAN_NETINTERFACES_SITE = $(call github,Outernet-Project,librarian-netinterfaces,$(PYTHON_LIBRARIAN_NETINTERFACES_VERSION))
PYTHON_LIBRARIAN_NETINTERFACES_LICENSE = GPLv3+
PYTHON_LIBRARIAN_NETINTERFACES_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_NETINTERFACES_SETUP_TYPE = setuptools

PYTHON_LIBRARIAN_NETINTERFACES_AP_RESTART_CMD = $(call qstrip,$(BR2_PYTHON_LIBRARIAN_NETINTERFACES_AP_RESTART_CMD))

define PYTHON_LIBRARIAN_NETINTERFACES_INSTALL_CONF
	$(INSTALL) -Dm644 $(call epkgdir,python-librarian-netinterfaces)/netinterfaces.ini \
		$(TARGET_DIR)/etc/librarian.d/netinterfaces.ini
	$(SED) 's|%RESTART_CMD%|$(PYTHON_LIBRARIAN_NETINTERFACES_AP_RESTART_CMD)|' \
		$(TARGET_DIR)/etc/librarian.d/netinterfaces.ini
endef

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_NETINTERFACES),y)
LIBRARIAN_COMPONENTS += librarian_netinterfaces
TARGET_FINALIZE_HOOKS += PYTHON_LIBRARIAN_NETINTERFACES_INSTALL_CONF
endif

$(eval $(python-package))
