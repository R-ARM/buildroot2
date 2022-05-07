################################################################################
#
# Rtoybox
#
################################################################################

RTOYBOX_VERSION = HEAD
RTOYBOX_SITE = https://github.com/R-ARM/Rtoybox.git
RTOYBOX_SITE_METHOD = git
RTOYBOX_DEPENDENCIES = sdl2 sdl2_ttf
TARGET_CFLAGS += -DROS

define RTOYBOX_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) 
endef

define RTOYBOX_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/Rmenu2/rmenu2 $(TARGET_DIR)/bin/rmenu
	mkdir -p $(TARGET_DIR)/etc/rmenu
	$(INSTALL) -D -m 0644 $(@D)/Rmenu2/programs $(TARGET_DIR)/etc/rmenu/programs
	$(INSTALL) -D -m 0644 $(@D)/Rmenu2/emulators $(TARGET_DIR)/etc/rmenu/emulators

	$(INSTALL) -D -m 0755 $(@D)/Rsetup/rsetup $(TARGET_DIR)/bin/rsetup

	$(INSTALL) -D -m 0755 $(@D)/Rsetup/rsetup-internal $(TARGET_DIR)/bin/rsetup-internal
	$(INSTALL) -D -m 0755 $(@D)/Rsetup/rsetup-external $(TARGET_DIR)/bin/rsetup-external

	$(INSTALL) -D -m 0755 $(@D)/Rsetup/rsetup-exfat $(TARGET_DIR)/bin/rsetup-exfat
	$(INSTALL) -D -m 0755 $(@D)/Rsetup/rsetup-ext4 $(TARGET_DIR)/bin/rsetup-ext4
endef


$(eval $(generic-package))
