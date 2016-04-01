################################################################################
#
# python-librarian-content
#
################################################################################

PYTHON_LIBRARIAN_CONTENT_VERSION = 4abd919329601ad1cc5c6cb3703de00465ec79ac
PYTHON_LIBRARIAN_CONTENT_SITE = $(call github,Outernet-Project,librarian-content,$(PYTHON_LIBRARIAN_CONTENT_VERSION))
PYTHON_LIBRARIAN_CONTENT_LICENSE = GPL
PYTHON_LIBRARIAN_CONTENT_SETUP_TYPE = setuptools

$(eval $(python-package))
