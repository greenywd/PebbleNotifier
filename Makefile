ARCHS = armv7 arm64
#TARGET = iphone:clang:latest:latest
THEOS_BUILD_DIR = Packages
GO_EASY_ON_ME = 1

include theos/makefiles/common.mk

TWEAK_NAME = PebbleNotifier
PebbleNotifier_FILES = Tweak.xm
PebbleNotifier_FRAMEWORKS = UIKit
PebbleNotifier_PRIVATE_FRAMEWORKS = AppSupport BluetoothManager UIKit BulletinBoard

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd" || killall -9 SpringBoard
