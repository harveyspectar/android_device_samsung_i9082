# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common BLISS stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9082/device_i9082.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9082
PRODUCT_NAME := bliss_i9082
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := GT-I9082

# Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=baffinxx \
    TARGET_DEVICE=baffin \
    BUILD_FINGERPRINT="samsung/baffinxx/baffin:4.2.2/JDQ39/I9082XXUBMJ1:user/release-keys" \
    PRIVATE_BUILD_DESC="baffinxx-user 4.2.2 JDQ39 I9082XXUBMJ1 release-keys"
