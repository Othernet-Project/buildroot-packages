################################################################################
#
# python-librarian-content
#
################################################################################

PYTHON_LIBRARIAN_CONTENT_VERSION = 70945117617af7f6651512752407cba09137fe45
PYTHON_LIBRARIAN_CONTENT_SITE = $(call github,Outernet-Project,librarian-content,$(PYTHON_LIBRARIAN_CONTENT_VERSION))
PYTHON_LIBRARIAN_CONTENT_LICENSE = GPL
PYTHON_LIBRARIAN_CONTENT_SETUP_TYPE = setuptools

$(eval $(python-package))
