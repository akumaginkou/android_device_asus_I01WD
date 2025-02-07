# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# SELINUX_IGNORE_NEVERALLOWS := true
# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Boot animation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common AOSP-OMS stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/asus/I01WD/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := I01WD
PRODUCT_NAME := bliss_I01WD
PRODUCT_BRAND := Asus
PRODUCT_MODEL := ASUS_I01WD
PRODUCT_MANUFACTURER := Asus

TARGET_DEVICE := WW_I01WD
PRODUCT_SYSTEM_DEVICE := ASUS_I01WD
PRODUCT_SYSTEM_NAME := WW_I01WD

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ZS630KL \
    PRODUCT_NAME=WW_I01WD

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_I01WD \
    PRODUCT_NAME=WW_I01WD \
    TARGET_DEVICE=ZS630KL

VENDOR_RELEASE := 11/RKQ1.200710.002/18.0610.2106.156-0:user/release-keys
BUILD_FINGERPRINT := asus/WW_I01WD/ASUS_I01WD:$(VENDOR_RELEASE)

PLATFORM_SECURITY_PATCH_OVERRIDE := 2021-06-01
