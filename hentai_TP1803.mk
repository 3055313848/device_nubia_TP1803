# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# All components inherited here go to system_ext image
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# All components inherited here go to product image
$(call inherit-product, vendor/hentai/build/product/hentai_product.mk)

# Inherit some common hentai stuff.
$(call inherit-product, vendor/hentai/config/common_telephony.mk)

# Inherit from TP1803 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Nubia
PRODUCT_DEVICE := TP1803
PRODUCT_MANUFACTURER := Nubia
PRODUCT_NAME := hentai_TP1803
PRODUCT_MODEL := Mini 5G

PRODUCT_GMS_CLIENTID_BASE := android-nubia
TARGET_VENDOR := nubia
TARGET_VENDOR_PRODUCT_NAME := TP1803
