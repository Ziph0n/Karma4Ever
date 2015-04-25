ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = Karma4Ever
Karma4Ever_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 AlienBlue"
SUBPROJECTS += karma4ever
include $(THEOS_MAKE_PATH)/aggregate.mk
