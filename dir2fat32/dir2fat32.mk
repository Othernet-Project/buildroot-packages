################################################################################
#
# dir2fat32.mk
#
################################################################################

DIR2FAT32_VERSION = v2.0
DIR2FAT32_SITE = $(call github,Outernet-Project,dir2fat32,$(DIR2FAT32_VERSION))
DIR2FAT32_LICENSE = GPLv3+
DIR2FAT32_LICENSE_FILE = COPYING

define DIR2FAT32_INSTALL_TARGET_CMDS
	$(INSTALL) -Dm755 $(@D)/dir2fat32.sh $(TARGET_DIR)/usr/bin/dir2fat32
endef

define HOST_DIR2FAT32_INSTALL_CMDS
	$(INSTALL) -Dm755 $(@D)/dir2fat32.sh $(HOST_DIR)/usr/bin/dir2fat32
endef

$(eval $(generic-package))
$(eval $(host-generic-package))
