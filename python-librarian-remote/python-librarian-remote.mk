################################################################################
#
# python-librarian-remote
#
################################################################################

PYTHON_LIBRARIAN_REMOTE_VERSION = 1c82ae47ccf066150ee9f0af793b6a797d11f388
PYTHON_LIBRARIAN_REMOTE_SITE = $(call github,Outernet-Project,librarian-remote,$(PYTHON_LIBRARIAN_REMOTE_VERSION))
PYTHON_LIBRARIAN_REMOTE_LICENSE = GPLv3+
PYTHON_LIBRARIAN_REMOTE_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_REMOTE_SETUP_TYPE = setuptools

define PYTHON_LIBRARIAN_REMOTE_INSTALL_CONF
	$(INSTALL) -Dm644 $(call epkgdir,python-librarian-remote)/remote.ini \
		$(TARGET_DIR)/etc/librarian.d/remote.ini
endef

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_REMOTE),y)
LIBRARIAN_COMPONENTS += librarian_REMOTE
TARGET_FINALIZE_HOOKS += PYTHON_LIBRARIAN_REMOTE_INSTALL_CONF
endif

$(eval $(python-package))
