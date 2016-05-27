################################################################################
#
# python-lftp
#
################################################################################

PYTHON_LFTP_VERSION = 7b03ef18d9c7073ea80149a057d3f573a48974f0
PYTHON_LFTP_SITE = $(call github,Outernet-Project,lftp,$(PYTHON_LFTP_VERSION))
PYTHON_LFTP_LICENSE = GPLv3
PYTHON_LFTP_LICENSE_FILES = COPYING
PYTHON_LFTP_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LFTP),y)
LIBRARIAN_COMPONENTS += lftp
endif

$(eval $(python-package))
