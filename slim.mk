# Bootanimation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH  := 1200

# Release name
PRODUCT_RELEASE_NAME := deb

# Inherit some common stuff.
$(call inherit-product, vendor/slim/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/aosp_deb.mk)

#MMS
PRODUCT_PACKAGES += \
    Mms

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := slim_deb
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg \
    BUILD_FINGERPRINT=google/razorg/deb:5.1.1/LMY47V/1836172:user/release-keys \
    PRIVATE_BUILD_DESC="razorg-user 5.1.1 LMY47V 1836172 release-keys"