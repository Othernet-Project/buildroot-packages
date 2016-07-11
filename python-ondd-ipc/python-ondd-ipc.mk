################################################################################
#
# python-ondd-ipc
#
################################################################################

PYTHON_ONDD_IPC_VERSION = v1.0
PYTHON_ONDD_IPC_SITE = $(call github,Outernet-Project,ondd-ipc,$(PYTHON_ONDD_IPC_VERSION))
PYTHON_ONDD_IPC_LICENSE = GPLv3+
PYTHON_ONDD_IPC_LICENSE_FILES = COPYING
PYTHON_ONDD_IPC_SETUP_TYPE = setuptools

$(eval $(python-package))
