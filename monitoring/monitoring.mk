################################################################################
#
# monitoring
#
################################################################################

MONITORING_VERSION = 4d3698ecad193fbed0b4cfd2aead55ae87aee67f
MONITORING_SITE = $(call github,Outernet-Project,monitoring,$(MONITORING_VERSION))
MONITORING_LICENSE = GPL
MONITORING_SETUP_TYPE = setuptools

$(eval $(python-package))
