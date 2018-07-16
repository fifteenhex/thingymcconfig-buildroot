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

THINGYMCCONFIG_CONF_OPTS += -DWPASUPPLICANT_BINARYPATH="/usr/sbin/wpa_supplicant"

define THINGYMCCONFIG_INSTALL_TARGET_CMDS
        $(INSTALL) -D -m 0755 $(@D)/thingymcconfig $(TARGET_DIR)/usr/sbin/thingymcconfig
	$(INSTALL) -D -m 0755 $(THINGYMCCONFIG_PKGDIR)/S90thingymcconfig $(TARGET_DIR)/etc/init.d/S90thingmcconfig
endef

$(eval $(meson-package))
