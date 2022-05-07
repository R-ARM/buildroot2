################################################################################
#
# Rinputer2
#
################################################################################

RINPUTER2_VERSION = HEAD
RINPUTER2_SITE = https://github.com/R-ARM/Rinputer2.git
RINPUTER2_SITE_METHOD = git

define RINPUTER2_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) 
endef

define RINPUTER2_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/rinputer2 $(TARGET_DIR)/bin/rinputer2
endef

define RINPUTER2_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 755 package/rinputer2/S11rinputer2 $(TARGET_DIR)/etc/init.d/S11rinputer2
endef


$(eval $(generic-package))
