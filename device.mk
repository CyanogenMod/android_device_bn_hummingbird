#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL tuna devices, and
# are also specific to tuna devices
#
# Everything in this directory will become public

DEVICE_FOLDER := device/bn/hummingbird
TARGET_BOOTLOADER_BOARD_NAME := hummingbird

$(call inherit-product, device/bn/common/common.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay/aosp

PRODUCT_COPY_FILES += \
	$(DEVICE_FOLDER)/root/fstab.hummingbird:root/fstab.hummingbird \
	$(DEVICE_FOLDER)/root/init.hummingbird.rc:root/init.hummingbird.rc \
	$(DEVICE_FOLDER)/root/init.hummingbird.usb.rc:root/init.hummingbird.usb.rc \
	$(DEVICE_FOLDER)/root/ueventd.hummingbird.rc:root/ueventd.hummingbird.rc \


# postrecoveryboot for recovery
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

PRODUCT_AAPT_CONFIG := large hdpi xhdpi

$(call inherit-product-if-exists, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/bn/hd-common/hd-common-vendor.mk)
