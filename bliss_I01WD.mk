#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/asus/I01WD/device.mk)
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit PixelGApps
$(call inherit-product-if-exists, vendor/gapps/gapps.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := asus
PRODUCT_DEVICE := I01WD
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := ASUS_I01WD
PRODUCT_NAME := bliss_I01WD
PRODUCT_SYSTEM_DEVICE := ASUS_I01WD
PRODUCT_SYSTEM_NAME := WW_I01WD

PRODUCT_GMS_CLIENTID_BASE := android-asus
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_PACKAGES_DEBUG := false
PRODUCT_PACKAGES_DEBUG_ASAN := false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bliss.maintainer=Jackeagle

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ZS630KL \
    PRODUCT_NAME=WW_I01WD

