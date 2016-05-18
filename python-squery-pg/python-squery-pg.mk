################################################################################
#
# python-squery-pg
#
################################################################################

PYTHON_SQUERY_PG_VERSION = v1.3
PYTHON_SQUERY_PG_SITE = $(call github,Outernet-Project,squery-pg,$(PYTHON_SQUERY_PG_VERSION))
PYTHON_SQUERY_PG_LICENSE = GPLv3+
PYTHON_SQUERY_PG_LICENSE_FILES = COPYING
PYTHON_SQUERY_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
