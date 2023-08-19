#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \
    init.class_main.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    qca6234-service.sh \
    init.qcom.early_boot.sh \
    init.qcom.sh \
    init.qti.chg_policy.sh \
    init.qcom.coex.sh \
    init.mdm.sh \
    init.qcom.crashdata.sh \
    init.qcom.class_core.sh \
    init.qti.ims.sh \
    init.qcom.usb.sh \
    init.qti.fm.sh \
    init.qcom.sensors.sh \
    init.qcom.efs.sync.sh \
    init.crda.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.target.rc \
    init.qcom.factory.rc \
    init.msm.usb.configfs.rc \
    init.qcom.usb.rc \
    exfat.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/violet/violet-vendor.mk)
