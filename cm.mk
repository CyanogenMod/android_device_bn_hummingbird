#
# Copyright (C) 2011 The CyanogenMod Project
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

TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 900

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for hummingbird
$(call inherit-product, device/bn/hummingbird/full_hummingbird.mk)
$(call inherit-product, device/bn/common/cm.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += device/bn/hummingbird/overlay/cm

PRODUCT_NAME := cm_hummingbird
PRODUCT_DEVICE := hummingbird
PRODUCT_BRAND := Android
PRODUCT_MODEL := BN Nook HD
PRODUCT_MANUFACTURER := Barnes & Noble
PRODUCT_RELEASE_NAME := NookHD


