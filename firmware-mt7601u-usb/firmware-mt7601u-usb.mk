################################################################################
#
# firmware-mt7601u-usb
#
################################################################################

FIRMWARE_MT7601U_USB_VERSION = 3.0.0.4_20130913
FIRMWARE_MT7601U_USB_SOURCE = DPO_MT7601U_LinuxSTA_$(FIRMWARE_MT7601U_USB_VERSION).tar.gz
FIRMWARE_MT7601U_USB_SITE = https://archive.outernet.is/sources
FIRMWARE_MT7601U_USB_LICENSE = GPLv2
FIRMWARE_MT7601U_USB_LICENSE_FILES = COPYING

define FIRMWARE_MT7601U_USB_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/lib/firmware
	install -m644 $(@D)/mcu/bin/MT7601.bin \
		$(TARGET_DIR)/lib/firmware/mt7601u.bin
endef

$(eval $(generic-package))
