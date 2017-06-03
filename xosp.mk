# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9082/device_i9082.mk)

# Inherit some common Xosp stuff.
$(call inherit-product, vendor/xosp/config/common_full_phone.mk)
$(call inherit-product, vendor/xosp/config/xosp.mk)

ROOT_METHOD := supersu

## Device identifier. This must come after all inclusions
PRODUCT_NAME := xosp_i9082
PRODUCT_DEVICE := i9082
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9082

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=baffinxx \
    TARGET_DEVICE=baffin \
    BUILD_FINGERPRINT="samsung/baffinxx/baffin:4.2.2/JDQ39/I9082XXUBMJ1:user/release-keys" \
    PRIVATE_BUILD_DESC="baffinxx-user 4.2.2 JDQ39 I9082XXUBMJ1 release-keys"
