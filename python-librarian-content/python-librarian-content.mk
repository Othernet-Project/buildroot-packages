################################################################################
#
# python-librarian-content
#
################################################################################

PYTHON_LIBRARIAN_CONTENT_VERSION = 2d7fb000f64746b6b1a9eda86fdc894440687e25
PYTHON_LIBRARIAN_CONTENT_SITE = $(call github,Outernet-Project,librarian-content,$(PYTHON_LIBRARIAN_CONTENT_VERSION))
PYTHON_LIBRARIAN_CONTENT_LICENSE = GPLv3+
PYTHON_LIBRARIAN_CONTENT_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_CONTENT_SETUP_TYPE = setuptools

LIBRARIAN_COMPONENTS += librarian_content

$(eval $(python-package))
