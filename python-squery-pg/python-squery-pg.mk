################################################################################
#
# python-squery-pg
#
################################################################################

PYTHON_SQUERY_PG_VERSION = 1ed9c1f04fc29217e3cf878a4c0de4cac15148d2
PYTHON_SQUERY_PG_SITE = $(call github,Outernet-Project,squery-pg,$(PYTHON_SQUERY_PG_VERSION))
PYTHON_SQUERY_PG_LICENSE = GPL
PYTHON_SQUERY_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
