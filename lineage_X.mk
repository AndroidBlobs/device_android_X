# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from X device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := android
PRODUCT_DEVICE := X
PRODUCT_MANUFACTURER := android
PRODUCT_NAME := lineage_X
PRODUCT_MODEL := X

PRODUCT_GMS_CLIENTID_BASE := android-android
TARGET_VENDOR := android
TARGET_VENDOR_PRODUCT_NAME := X
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_px154_kw_zx-userdebug 9 PPR1.180610.011 1568283240 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := UMIDIGI/UMIDIGI_X/UMIDIGI_X:9/PPR1.180610.011/1568283240:user/release-keys
