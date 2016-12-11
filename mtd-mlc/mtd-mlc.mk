################################################################################
#
# mtd-mlc
#
################################################################################

MTD_MLC_VERSION = f6a16e575091ef315b147532ba818877fd2c1895
MTD_MLC_SITE = $(call github,Outernet-Project,CHIP-mtd-utils,$(MTD_MLC_VERSION))
MTD_MLC_LICENSE = GPLv2
MTD_MLC_LICENSE_FILES = COPYING

MTD_MLC_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_MTD_MLC_MKFSJFFS2),y)
MTD_MLC_DEPENDENCIES = zlib lzo
endif

ifeq ($(BR2_PACKAGE_MTD_MLC_MKFSUBIFS),y)
MTD_MLC_DEPENDENCIES += util-linux zlib lzo
endif

ifeq ($(BR2_PACKAGE_BUSYBOX),y)
MTD_MLC_DEPENDENCIES += busybox
endif

MTD_MLC_MAKE_OPTS = WITHOUT_LARGEFILE=1

# If extended attributes are required, the acl package must
# also be enabled which will also include the attr package.
ifeq ($(BR2_PACKAGE_ACL),y)
MTD_MLC_DEPENDENCIES += acl
MTD_MLC_MAKE_OPTS += WITHOUT_XATTR=0
else
MTD_MLC_MAKE_OPTS += WITHOUT_XATTR=1
endif

HOST_MTD_MLC_DEPENDENCIES = host-zlib host-lzo host-e2fsprogs

define HOST_MTD_MLC_BUILD_CMDS
	$(HOST_CONFIGURE_OPTS) $(MAKE1) \
		CROSS= BUILDDIR=$(@D) WITHOUT_XATTR=1 -C $(@D)
endef

define HOST_MTD_MLC_INSTALL_CMDS
	$(MAKE1) BUILDDIR=$(@D) DESTDIR=$(HOST_DIR) -C $(@D) install
endef

MKFS_JFFS2 = $(HOST_DIR)/usr/sbin/mkfs.jffs2
SUMTOOL = $(HOST_DIR)/usr/sbin/sumtool

MTD_MLC_STAGING_y = lib/libmtd.a ubi-utils/libubi.a
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_DOCFDISK)		+= docfdisk
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_DOC_LOADBIOS)	+= doc_loadbios
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FLASHCP)		+= flashcp
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FLASH_ERASE)	+= flash_erase
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FLASH_LOCK)	+= flash_lock
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FLASH_OTP_DUMP)	+= flash_otp_dump
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FLASH_OTP_INFO)	+= flash_otp_info
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FLASH_OTP_LOCK)	+= flash_otp_lock
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FLASH_OTP_WRITE)	+= flash_otp_write
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FLASH_UNLOCK)	+= flash_unlock
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FTL_CHECK)	+= ftl_check
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_FTL_FORMAT)	+= ftl_format
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_JFFS2DUMP)	+= jffs2dump
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_MKFSJFFS2)	+= mkfs.jffs2
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_MTD_DEBUG)	+= mtd_debug
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_NANDDUMP)		+= nanddump
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_NANDTEST)		+= nandtest
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_NANDWRITE)	+= nandwrite
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_NFTLDUMP)		+= nftldump
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_NFTL_FORMAT)	+= nftl_format
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_RECV_IMAGE)	+= recv_image
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_RFDDUMP)		+= rfddump
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_RFDFORMAT)	+= rfdformat
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_SERVE_IMAGE)	+= serve_image
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_SUMTOOL)		+= sumtool

MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_MTDINFO)	+= mtdinfo
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIATTACH)	+= ubiattach
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBICRC32)	+= ubicrc32
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIDETACH)	+= ubidetach
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIFORMAT)	+= ubiformat
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIMKVOL)	+= ubimkvol
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBINFO)	+= ubinfo
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBINIZE)	+= ubinize
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIRENAME)	+= ubirename
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIRMVOL)	+= ubirmvol
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIRSVOL)	+= ubirsvol
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIUPDATEVOL)	+= ubiupdatevol
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIBLOCK)	+= ubiblock
MTD_MLC_TARGETS_UBI_$(BR2_PACKAGE_MTD_MLC_UBIHEALTHD)	+= ubihealthd

MTD_MLC_TARGETS_y += $(addprefix ubi-utils/,$(MTD_MLC_TARGETS_UBI_y))
MTD_MLC_TARGETS_$(BR2_PACKAGE_MTD_MLC_MKFSUBIFS) += mkfs.ubifs/mkfs.ubifs

define MTD_MLC_BUILD_CMDS
	$(TARGET_CONFIGURE_OPTS) $(MAKE1) CROSS=$(TARGET_CROSS) \
		BUILDDIR=$(@D) $(MTD_MLC_MAKE_OPTS) -C $(@D) \
		$(addprefix $(@D)/,$(MTD_MLC_TARGETS_y)) \
		$(addprefix $(@D)/,$(MTD_MLC_STAGING_y))
endef

define MTD_MLC_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0755 $(@D)/lib/libmtd.a $(STAGING_DIR)/usr/lib/libmtd.a
	$(INSTALL) -D -m 0755 $(@D)/ubi-utils/libubi.a $(STAGING_DIR)/usr/lib/libubi.a
endef

define MTD_MLC_INSTALL_TARGET_CMDS
	for f in $(MTD_MLC_TARGETS_y) ; do \
		$(INSTALL) -D -m 0755 $(@D)/$$f $(TARGET_DIR)/usr/sbin/$${f##*/} ; \
	done
endef

$(eval $(generic-package))
$(eval $(host-generic-package))