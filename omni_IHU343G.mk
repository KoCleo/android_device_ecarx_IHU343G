#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from IHU343G device
$(call inherit-product, device/ecarx/IHU343G/device.mk)

PRODUCT_DEVICE := IHU343G
PRODUCT_NAME := omni_IHU343G
PRODUCT_BRAND := ECARX
PRODUCT_MODEL := SX11H
PRODUCT_MANUFACTURER := ecarx

PRODUCT_GMS_CLIENTID_BASE := android-ecarx

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_carstd-user 5.1 LMY47D 39 dev-keys"

BUILD_FINGERPRINT := ECARX/full_carstd/carstd:5.1/LMY47D/39:user/dev-keys
