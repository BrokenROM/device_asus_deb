
# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200
#TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common base stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, vendor/broken/config/common_full_tablet_wifionly.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/cm/config/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/broken/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/deb/full_deb.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deb
PRODUCT_NAME := broken_deb
PRODUCT_BRAND := Android
PRODUCT_MODEL := Nexus 7 2013
PRODUCT_MANUFACTURER := Asus
PRODUCT_RESTRICT_VENDOR_FILES := false


# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/deb/device.mk)
$(call inherit-product-if-exists, vendor/asus/deb/deb-vendor.mk)
#$(call inherit-product-if-exists, vendor/qcom/proprietary/common/config/device-vendor.mk)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razorg BUILD_FINGERPRINT=google/razorg/deb:5.1.1/LMY47V/1836172:user/release-keys PRIVATE_BUILD_DESC="razorg-user 5.1.1 LMY47V 1836172 release-keys"
