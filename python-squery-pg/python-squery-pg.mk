################################################################################
#
# python-squery-pg
#
################################################################################

PYTHON_SQUERY_PG_VERSION = ffac1f8262aff73126b05779678a760a09a9be53
PYTHON_SQUERY_PG_SITE = $(call github,Outernet-Project,squery-pg,$(PYTHON_SQUERY_PG_VERSION))
PYTHON_SQUERY_PG_LICENSE = GPLv3+
PYTHON_SQUERY_PG_LICENSE_FILES = COPYING
PYTHON_SQUERY_PG_SETUP_TYPE = setuptools

$(eval $(python-package))
