# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Release name
PRODUCT_RELEASE_NAME := dlxj

# overlays
PRODUCT_PACKAGE_OVERLAYS += device/htc/dlxj/overlay

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/htc/dlxj/full_dlxj.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dlxj
PRODUCT_NAME := cm_dlxj
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC J butterfly
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dlxj \
    BUILD_FINGERPRINT=htc/verizon_wwe/dlx:4.2.2/JDQ39/277065.4:user/release-keys \
    PRIVATE_BUILD_DESC="3.06.605.4 CL277065 release-keys"

