ARCHS = armv7 arm64

include theos/makefiles/common.mk

BUNDLE_NAME = Karma4Ever
Karma4Ever_FILES = Karma4Ever.mm
Karma4Ever_INSTALL_PATH = /Library/PreferenceBundles
Karma4Ever_FRAMEWORKS = UIKit Social
Karma4Ever_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Karma4Ever.plist$(ECHO_END)
