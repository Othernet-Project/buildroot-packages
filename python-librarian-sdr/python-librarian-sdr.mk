################################################################################
#
# python-librarian-sdr
#
################################################################################

PYTHON_LIBRARIAN_SDR_VERSION = 4eb537edc92559b5e3b05424c642fad71f53ed45
PYTHON_LIBRARIAN_SDR_SITE = $(call github,Outernet-Project,librarian-SDR,$(PYTHON_LIBRARIAN_SDR_VERSION))
PYTHON_LIBRARIAN_SDR_LICENSE = GPLv3+
PYTHON_LIBRARIAN_SDR_LICENSE_FILES = COPYING
PYTHON_LIBRARIAN_SDR_SETUP_TYPE = setuptools

ifeq ($(BR2_PACKAGE_PYTHON_LIBRARIAN_SDR),y)
LIBRARIAN_COMPONENTS += librarian_sdr
endif

$(eval $(python-package))
