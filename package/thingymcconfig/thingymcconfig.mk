################################################################################
#
# thingymcconfig
#
################################################################################

THINGYMCCONFIG_VERSION = dev
THINGYMCCONFIG_SITE = https://github.com/fifteenhex/thingymcconfig.git
THINGYMCCONFIG_SITE_METHOD = git
THINGYMCCONFIG_LICENSE = GPL-3.0
THINGYMCCONFIG_LICENSE_FILES = LICENSE
THINGYMCCONFIG_DEPENDENCIES = host-pkgconf libmicrohttpd json-glib libnl
THINGYMCCONFIG_GIT_SUBMODULES = YES

define THINGYMCCONFIG_BUILD_CMDS
        PKGCONFIG=$(PKG_CONFIG_HOST_BINARY) CC=$(TARGET_CROSS)gcc $(MAKE) WPASUPPLICANT_BINARYPATH=/usr/sbin/wpa_supplicant -C $(@D)
endef

define THINGYMCCONFIG_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/thingymcconfig $(TARGET_DIR)/usr/sbin/thingymcconfig
	$(INSTALL) -D -m 0755 $(THINGYMCCONFIG_PKGDIR)/S90thingymcconfig $(TARGET_DIR)/etc/init.d/S90thingmcconfig
endef

$(eval $(generic-package))
