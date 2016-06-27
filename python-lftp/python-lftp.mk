################################################################################
#
# python-lftp
#
################################################################################

PYTHON_LFTP_VERSION = a64e6f317864a01d91eecfe5105a99a8f361df75
PYTHON_LFTP_SITE = $(call github,Outernet-Project,lftp,$(PYTHON_LFTP_VERSION))
PYTHON_LFTP_LICENSE = GPLv3
PYTHON_LFTP_LICENSE_FILES = COPYING
PYTHON_LFTP_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LFTP),y)
LIBRARIAN_COMPONENTS += lftp
endif

$(eval $(python-package))
