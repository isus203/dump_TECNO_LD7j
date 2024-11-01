#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TECNO-LD7j device
$(call inherit-product, device/tecno/TECNO-LD7j/device.mk)

PRODUCT_DEVICE := TECNO-LD7j
PRODUCT_NAME := omni_TECNO-LD7j
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LD7j
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ld7j_h694-user 10 QP1A.190711.020 108292 release-keys"

BUILD_FINGERPRINT := TECNO/LD7j-AS/TECNO-LD7j:10/QP1A.190711.020/220927V180:user/release-keys
