ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),gt540)
include $(call first-makefiles-under,$(call my-dir))
endif
