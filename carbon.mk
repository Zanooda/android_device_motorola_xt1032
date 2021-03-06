# Inherit some common carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Release name
PRODUCT_RELEASE_NAME := MOTO G
PRODUCT_NAME := carbon_xt1032

$(call inherit-product, device/motorola/xt1032/full_xt1032.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND=motorola \
    PRODUCT_NAME=XT1032 \
    BUILD_PRODUCT=falcon_umts \
    BUILD_FINGERPRINT=motorola/falcon_retuglb/falcon_umts:4.3/14.10.0Q3.X-84-16/6:user/release-keys

PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.xt1032.$(shell date +%m%d%y).$(shell date +%H%M%S)