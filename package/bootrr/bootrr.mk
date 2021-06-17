################################################################################
#
# bootrr
#
################################################################################

BOOTRR_SITE = https://github.com/kernelci/bootrr.git
BOOTRR_VERSION = f15e3f8b13254bcf586130b2603f1bdddfcf630d
BOOTRR_SITE_METHOD = git
BOOTRR_LICENSE = LGPL-2.1+


BOOTRR_VERSION = staging.kernelci.org
BR_NO_CHECK_HASH_FOR += $(BOOTRR_SOURCE)

define BOOTRR_INSTALL_TARGET_CMDS
	DESTDIR=$(TARGET_DIR)/opt/bootrr $(MAKE) -C $(@D) install
endef

$(eval $(generic-package))
