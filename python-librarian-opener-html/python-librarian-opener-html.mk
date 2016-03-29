################################################################################
#
# python-librarian-opener-html
#
################################################################################

PYTHON_LIBRARIAN_OPENER_HTML_VERSION = b439c8aabfb68fe4a5817f7e45cb57befc084108
PYTHON_LIBRARIAN_OPENER_HTML_SITE = $(call github,Outernet-Project,librarian-opener-html,$(PYTHON_LIBRARIAN_OPENER_HTML_VERSION))
PYTHON_LIBRARIAN_OPENER_HTML_LICENSE = GPL
PYTHON_LIBRARIAN_OPENER_HTML_SETUP_TYPE = setuptools

$(eval $(python-package))
