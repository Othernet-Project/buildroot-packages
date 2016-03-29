################################################################################
#
# python-librarian-opener-video
#
################################################################################

PYTHON_LIBRARIAN_OPENER_VIDEO_VERSION = cf41f0a8ab73ceda40b1d41b898f41c1db76bd85
PYTHON_LIBRARIAN_OPENER_VIDEO_SITE = $(call github,Outernet-Project,librarian-opener-video,$(PYTHON_LIBRARIAN_OPENER_VIDEO_VERSION))
PYTHON_LIBRARIAN_OPENER_VIDEO_LICENSE = GPL
PYTHON_LIBRARIAN_OPENER_VIDEO_SETUP_TYPE = setuptools

$(eval $(python-package))
