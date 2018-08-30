################################################################################
#
# python-sqlize-pg
#
################################################################################

PYTHON_SQLIZE_PG_VERSION = v1.0
PYTHON_SQLIZE_PG_SITE = $(call github,Othernet-Project,sqlize-pg,$(PYTHON_SQLIZE_PG_VERSION))
PYTHON_SQLIZE_PG_LICENSE = GPLv3+
PYTHON_SQLIZE_PG_LICENSE_FILES = COPYING
PYTHON_SQLIZE_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
