#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# MiuiCamera
PRODUCT_PACKAGES += \
    MiuiCameraOverlayIcon

# Priv-app permission
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-miuicamera.xml

# Sysconfig
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/miuicamera-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/miuicamera-hiddenapi-package-allowlist.xml

# Device-Features
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/device_features/duchamp.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/duchamp.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/duchamp-miuicamera/duchamp-miuicamera-vendor.mk)
