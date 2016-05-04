################################################################################
#
# firmware-brcmfmac43430-sdio
#
################################################################################

FIRMWARE_BRCMFMAC43430_SDIO_VERSION = 3f15768b68c30e09dbd5647a66fdc41dbac612b4
FIRMWARE_BRCMFMAC43430_SDIO_SITE = $(call github,RPi-Distro,firmware-nonfree,$(FIRMWARE_BRCMFMAC43430_SDIO_VERSION))
FIRMWARE_BRCMFMAC43430_SDIO_LICENSE = PROPRIETARY
FIRMWARE_BRCMFMAC43430_SDIO_LICENSE_FILE = brcm80211/LICENSE

define FIRMWARE_BRCMFMAC43430_SDIO_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/lib/firmware/brcm
	mkdir -p $(TARGET_DIR)/usr/share/doc
	install -m644 $(@D)/brcm80211/brcm/brcmfmac43430-sdio.bin \
		$(TARGET_DIR)/lib/firmware/brcm/brcmfmac43430-sdio.bin
	install -m644 $(@D)/brcm80211/brcm/brcmfmac43430-sdio.txt \
		$(TARGET_DIR)/lib/firmware/brcm/brcmfmac43430-sdio.txt
	install -m644 $(@D)/$(FIRMWARE_BRCMFMAC43430_SDIO_LICENSE_FILE) \
		$(TARGET_DIR)/usr/share/doc/BRCMFMAC43430_FIRMWARE_LICENSE
endef

$(eval $(generic-package))
