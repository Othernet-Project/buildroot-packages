################################################################################
#
# python-fsal
#
################################################################################

PYTHON_FSAL_VERSION = ef6237f8a3def290822394c5f96306030ab96048
PYTHON_FSAL_SITE = $(call github,Outernet-Project,fsal,$(PYTHON_FSAL_VERSION))
PYTHON_FSAL_LICENSE = GPLv3+
PYTHON_FSAL_LICENSE_FILES = COPYING
PYTHON_FSAL_SETUP_TYPE = setuptools

define PYTHON_FSAL_INSTALL_INIT_SYSV
	$(INSTALL) -Dm0755 $(BR2_EXTERNAL)/package/python-fsal/S91fsal \
		$(TARGET_DIR)/etc/init.d/S91fsal
endef

$(eval $(python-package))
