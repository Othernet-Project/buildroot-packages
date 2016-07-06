################################################################################
#
# python-lftp
#
################################################################################

PYTHON_LFTP_VERSION = 60c964cbb3d9f6708d130f012a35286557569bf9
PYTHON_LFTP_SITE = $(call github,Outernet-Project,lftp,$(PYTHON_LFTP_VERSION))
PYTHON_LFTP_LICENSE = GPLv3
PYTHON_LFTP_LICENSE_FILES = COPYING
PYTHON_LFTP_SETUP_TYPE = setuptools

PYTHON_LFTP_BLACKLIST = $(call listify,$(call qstrip,$(BR2_PATH_BLACKLIST)))
PYTHON_LFTP_SED_CMDS += s|%PRIMARY%|$(call qstrip,$(BR2_STORAGE_PRIMARY))|g;
PYTHON_LFTP_SED_CMDS += s|%SECONDARY%|$(call qstrip,$(BR2_STORAGE_SECONDARY))|g;
PYTHON_LFTP_SED_CMDS += s|%BLACKLIST%|$(PYTHON_LFTP_BLACKLIST)|g;

define PYTHON_LFTP_INSTALL_CONF
	$(INSTALL) -Dm644 $(call epkgdir,python-lftp)/lftp.ini \
		$(TARGET_DIR)/etc/librarian.d/lftp.ini
	$(SED) '$(PYTHON_LFTP_SED_CMDS)' \
		$(TARGET_DIR)/etc/librarian.d/lftp.ini
endef

ifeq ($(BR2_PACKAGE_PYTHON_LFTP),y)
LIBRARIAN_COMPONENTS += lftp
LIBRARIAN_INCLUDES += /etc/librarian.d/lftp.ini
TARGET_FINALIZE_HOOKS += PYTHON_LFTP_INSTALL_CONF
endif

$(eval $(python-package))
