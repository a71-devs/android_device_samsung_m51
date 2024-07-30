#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/m51

# Inherit Common Device Tree
$(call inherit-product, device/samsung/a71-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/vendor/etc/mixer_paths_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_idp.xml \

# Overlays
PRODUCT_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \

# Ramdisk
PRODUCT_PACKAGES += \
    init.m51.rc \

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/m51/m51-vendor.mk)
