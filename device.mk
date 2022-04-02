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

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true
