################################################################################
#
# thingymcconfig
#
################################################################################

THINGYMCCONFIG_VERSION = master
THINGYMCCONFIG_SITE = https://github.com/fifteenhex/thingymcconfig.git
THINGYMCCONFIG_SITE_METHOD = git
THINGYMCCONFIG_LICENSE = GPL-3.0
THINGYMCCONFIG_LICENSE_FILES = LICENSE
THINGYMCCONFIG_DEPENDENCIES = host-pkgconf #glib-networking
THINGYMCCONFIG_GIT_SUBMODULES = YES

define THINGYMCCONFIG_BUILD_CMDS
        PKGCONFIG=$(PKG_CONFIG_HOST_BINARY) CC=$(TARGET_CROSS)gcc $(MAKE) -C $(@D)
endef

define THINGYMCCONFIG_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/thingymcconfig $(TARGET_DIR)/usr/bin/thingymcconfig
endef

$(eval $(generic-package))
