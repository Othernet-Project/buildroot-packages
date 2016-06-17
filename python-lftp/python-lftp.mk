################################################################################
#
# python-lftp
#
################################################################################

PYTHON_LFTP_VERSION = 49d943ed8cf6cb4d03a3885d830c943d30e6c73d
PYTHON_LFTP_SITE = $(call github,Outernet-Project,lftp,$(PYTHON_LFTP_VERSION))
PYTHON_LFTP_LICENSE = GPLv3
PYTHON_LFTP_LICENSE_FILES = COPYING
PYTHON_LFTP_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LFTP),y)
LIBRARIAN_COMPONENTS += lftp
endif

$(eval $(python-package))
