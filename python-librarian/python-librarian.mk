################################################################################
#
# python-librarian
#
################################################################################

PYTHON_LIBRARIAN_VERSION = v3.1
PYTHON_LIBRARIAN_SITE = $(call github,Outernet-Project,librarian,$(PYTHON_LIBRARIAN_VERSION))
PYTHON_LIBRARIAN_LICENSE = GPLv3+
PYTHON_LIBRARIAN_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_SETUP_TYPE = setuptools

define PYTHON_FSAL_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(BR2_EXTERNAL)/package/python-librarian/S91librarian \
		$(TARGET_DIR)/etc/init.d/S91librarian
endef

$(eval $(python-package))
