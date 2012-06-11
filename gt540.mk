PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/gt540/gt540-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/gt540/overlay

# configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
	$(LOCAL_PATH)/configs/msm_touchscreen.kl:system/usr/keylayout/msm_touchscreen.kl \
	$(LOCAL_PATH)/configs/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := gt540
PRODUCT_DEVICE := gt540
PRODUCT_MODEL := LG-GT540
