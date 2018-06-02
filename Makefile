include /var/theos/makefiles/common.mk

APPLICATION_NAME = b
b_FILES = main.m XXAppDelegate.m XXRootViewController.m
b_FRAMEWORKS = UIKit CoreGraphics

include /var/theos/makefiles/application.mk
