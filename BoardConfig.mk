-include vendor/lge/gt540/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

# Kernel config
TARGET_KERNEL_CONFIG := cyanogenmod_gt540_defconfig

TARGET_BOOTLOADER_BOARD_NAME := gt540
TARGET_OTA_ASSERT_DEVICE := swift,gt540

BOARD_KERNEL_CMDLINE := mem=210M console=null androidboot.hardware=gt540

USE_CAMERA_STUB := false

