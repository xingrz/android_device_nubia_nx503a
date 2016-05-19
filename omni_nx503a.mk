#
# Copyright (C) 2016 The CyanogenMod Project
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

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080x608

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/zte/nx503a/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_nx503a
PRODUCT_DEVICE := nx503a
PRODUCT_BRAND := nubia
PRODUCT_MODEL := NX503A
PRODUCT_MANUFACTURER := nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=NX503A \
    BUILD_FINGERPRINT=nubia/NX503A/NX503A:4.4.2/KVT49L/eng.nubia.20150120.194044:user/release-keys \
    PRIVATE_BUILD_DESC="NX503A-user 4.4.2 KVT49L eng.nubia.20150120.194044 release-keys"
