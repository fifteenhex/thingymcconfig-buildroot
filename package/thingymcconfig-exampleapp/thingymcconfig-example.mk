################################################################################
#
# thingymcconfig-exampleapp
#
################################################################################

THINGYMCCONFIG_EXAMPLEAPP_VERSION = dev
THINGYMCCONFIG_EXAMPLEAPP_SITE = https://github.com/thingyjp/thingymcconfig-exampleapp.git
THINGYMCCONFIG_EXAMPLEAPP_SITE_METHOD = git
THINGYMCCONFIG_EXAMPLEAPP_LICENSE = GPL-3.0
THINGYMCCONFIG_EXAMPLEAPP_LICENSE_FILES = LICENSE
THINGYMCCONFIG_EXAMPLEAPP_DEPENDENCIES = host-pkgconf json-glib liboping thingymcconfig
THINGYMCCONFIG_EXAMPLEAPP_GIT_SUBMODULES = YES

define THINGYMCCONFIG_EXAMPLEAPP_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 0755 $(THINGYMCCONFIG_EXAMPLEAPP_PKGDIR)/S91thingymcconfig-app \
		$(TARGET_DIR)/etc/init.d/S91thingmcconfig-app
endef

$(eval $(meson-package))
