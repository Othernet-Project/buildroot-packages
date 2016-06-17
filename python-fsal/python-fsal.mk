################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = 88b11fc0c352dce202be390ce2955cb5c9f4c901
PYTHON_FSAL_SITE = $(call github,Outernet-Project,fsal,$(PYTHON_FSAL_VERSION))
PYTHON_FSAL_LICENSE = GPLv3+
PYTHON_FSAL_LICENSE_FILES = COPYING
PYTHON_FSAL_SETUP_TYPE = setuptools

define PYTHON_FSAL_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(BR2_EXTERNAL)/package/python-fsal/S91fsal \
		$(TARGET_DIR)/etc/init.d/S91fsal
endef

$(eval $(python-package))
