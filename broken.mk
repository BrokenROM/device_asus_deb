# Bootanimation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH  := 1200

# Release name
PRODUCT_RELEASE_NAME := deb

# Inherit some common stuff.
$(call inherit-product, vendor/broken/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/aosp_deb.mk)

#MMS
PRODUCT_PACKAGES += \
    Mms

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := broken_deb
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_RESTRICT_VENDOR_FILES := false

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/deb:4.4.3/KTU84L/1148727:user/release-keys PRIVATE_BUILD_DESC="razor-user 4.4.3 KTU84L 1148727 release-keys"
