################################################################################
#
# python-librarian-diskspace
#
################################################################################

PYTHON_LIBRARIAN_DISKSPACE_VERSION = 809353ebf47d307e2bf530554573321e87974cde
PYTHON_LIBRARIAN_DISKSPACE_SITE = $(call github,Outernet-Project,librarian-diskspace,$(PYTHON_LIBRARIAN_DISKSPACE_VERSION))
PYTHON_LIBRARIAN_DISKSPACE_LICENSE = GPL
PYTHON_LIBRARIAN_DISKSPACE_SETUP_TYPE = setuptools

$(eval $(python-package))
