################################################################################
#
# python-ondd-ipc
#
################################################################################

PYTHON_ONDD_IPC_VERSION = 9efadd03746f480d663d05d6b9119bf7aa4a3e88
PYTHON_ONDD_IPC_SITE = $(call github,Othernet-Project,ondd-ipc,$(PYTHON_ONDD_IPC_VERSION))
PYTHON_ONDD_IPC_LICENSE = GPLv3+
PYTHON_ONDD_IPC_LICENSE_FILES = COPYING
PYTHON_ONDD_IPC_SETUP_TYPE = setuptools

$(eval $(python-package))
