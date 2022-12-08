#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# API
PRODUCT_SHIPPING_API_LEVEL := 30

# Dalvik VM configurations
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Include GSI-keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Platform
MSMSTEPPE := sm6150
TARGET_BOARD_PLATFORM := $(MSMSTEPPE)

# ANT+
PRODUCT_PACKAGES += \
    com.dsi.ant@1.0.vendor

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4-service.clearkey

# Fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom \
    $(LOCAL_PATH)/init/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom \
    $(LOCAL_PATH)/init/fstab.zram:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.zram

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.xiaomi_sm6150 \
    vendor.xiaomi.hardware.fingerprintextension@1.0.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_PACKAGES += \
    libhwbinder \
    libhidltransport \
    libhwbinder.vendor \
    libhidltransport.vendor

# Init scripts
PRODUCT_PACKAGES += \
    init.mi.usb.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.sh \
    init.qti.dcvs.sh

PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.qcom.power.rc \
    init.recovery.qcom.rc \
    init.target.rc \
    ueventd.qcom.rc

# IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1.vendor \
    libkeymaster_messages.vendor:64

# Lights
PRODUCT_PACKAGES += \
    android.hardware.lights-service.xiaomi_sm6150

# NeuralNetworks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3.vendor

# Network
PRODUCT_PACKAGES += \
    android.system.net.netd@1.1.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml

# Overlays
PRODUCT_PACKAGES += \
    AOSPASweetFrameworks \
    SweetFrameworks \
    SweetSettings \
    SweetSystemUI

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service.xiaomi_sm6150

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vibrator/excluded-input-devices.xml:$(TARGET_COPY_OUT_VENDOR)/etc/excluded-input-devices.xml

# Vendor service manager
PRODUCT_PACKAGES += \
    vndservicemanager

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 28 29 30

# Inherit from proprietary files
$(call inherit-product, vendor/xiaomi/sweet/sweet-vendor.mk)
