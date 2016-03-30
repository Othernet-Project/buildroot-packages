################################################################################
#
# python-librarian-content
#
################################################################################

PYTHON_LIBRARIAN_CONTENT_VERSION = fdbb334eaf6013639966a95f7ab040706f4fcbfb
PYTHON_LIBRARIAN_CONTENT_SITE = $(call github,Outernet-Project,librarian-content,$(PYTHON_LIBRARIAN_CONTENT_VERSION))
PYTHON_LIBRARIAN_CONTENT_LICENSE = GPL
PYTHON_LIBRARIAN_CONTENT_SETUP_TYPE = setuptools

$(eval $(python-package))
