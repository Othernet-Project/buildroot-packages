################################################################################
#
# python-librarian-svm
#
################################################################################

PYTHON_LIBRARIAN_SVM_VERSION = 5bc0bdadc1222fb62eb48a181ceb54440c43aef3
PYTHON_LIBRARIAN_SVM_SITE = $(call github,Outernet-Project,librarian-svm,$(PYTHON_LIBRARIAN_SVM_VERSION))
PYTHON_LIBRARIAN_SVM_LICENSE = GPLv3+
PYTHON_LIBRARIAN_SVM_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_SVM_SETUP_TYPE = setuptools

PYTHON_LIBRARIAN_SVM_STASHDIR = $(call qstrip,$(BR2_PYTHON_LIBRARIAN_SVM_STASHDIR))

define PYTHON_LIBRARIAN_SVM_INSTALL_CONF
	$(INSTALL) -Dm644 $(call epkgdir,python-librarian-svm)/svm.ini \
		$(TARGET_DIR)/etc/librarian.d/svm.ini
	$(SED) 's|%STASHDIR%|$(PYTHON_LIBRARIAN_SVM_STASHDIR)|' \
		$(TARGET_DIR)/etc/librarian.d/svm.ini
endef

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_SVM),y)
LIBRARIAN_COMPONENTS += librarian_svm
TARGET_FINALIZE_HOOKS += PYTHON_LIBRARIAN_SVM_INSTALL_CONF
endif

$(eval $(python-package))
