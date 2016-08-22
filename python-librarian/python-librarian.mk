################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = b4524f36c181e4ed023cbcb37098965d24282a5d
PYTHON_LIBRARIAN_SITE = $(call github,Outernet-Project,librarian,$(PYTHON_LIBRARIAN_VERSION))
PYTHON_LIBRARIAN_LICENSE = GPLv3+
PYTHON_LIBRARIAN_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN),y)
LIBRARIAN_MENU += files
endif

define PYTHON_LIBRARIAN_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(BR2_EXTERNAL)/package/python-librarian/S91librarian \
		$(TARGET_DIR)/etc/init.d/S91librarian
endef

$(eval $(python-package))
