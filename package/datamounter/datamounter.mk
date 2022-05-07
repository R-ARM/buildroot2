################################################################################
#
# Script to automatically mount data
#
################################################################################

define DATAMOUNTER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 package/datamounter/script $(TARGET_DIR)/bin/weston-autorun
endef

$(eval $(generic-package))
