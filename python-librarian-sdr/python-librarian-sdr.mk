################################################################################
#
# python-librarian-sdr
#
################################################################################

PYTHON_LIBRARIAN_SDR_VERSION = v1.0
PYTHON_LIBRARIAN_SDR_SITE = $(call github,Othernet-Project,librarian-SDR,$(PYTHON_LIBRARIAN_SDR_VERSION))
PYTHON_LIBRARIAN_SDR_LICENSE = GPLv3+
PYTHON_LIBRARIAN_SDR_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_SDR_SETUP_TYPE = setuptools

PYTHON_LIBRARIAN_SDR_SED_CMDS += s|%BINPATH%|$(call qstrip,$(BR2_SDR_BINARY_PATH))|;

define PYTHON_LIBRARIAN_SDR_INSTALL_CONF
	$(INSTALL) -Dm644 $(call epkgdir,python-librarian-sdr)/sdr.ini \
		$(TARGET_DIR)/etc/librarian.d/sdr.ini
	$(SED) '$(PYTHON_LIBRARIAN_SDR_SED_CMDS)' \
		$(TARGET_DIR)/etc/librarian.d/sdr.ini
endef

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_SDR),y)
LIBRARIAN_COMPONENTS += librarian_sdr
TARGET_FINALIZE_HOOKS += PYTHON_LIBRARIAN_SDR_INSTALL_CONF
endif

$(eval $(python-package))
