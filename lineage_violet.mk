#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

PRODUCT_DEVICE := violet
PRODUCT_NAME := lineage_violet
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="violet-user 10 QKQ1.190915.002 V12.5.1.0.QFHINXM release-keys"

BUILD_FINGERPRINT := xiaomi/violet/violet:10/QKQ1.190915.002/V12.5.1.0.QFHINXM:user/release-keys
