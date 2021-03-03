# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017-2018, The LineageOS Project
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

DEVICE_PATH := device/zuk/z2_plus

# Inherit from vendor
$(call inherit-product-if-exists, vendor/zuk/z2_plus/z2_plus-vendor.mk)

# Inherit from msm8996-common
$(call inherit-product, device/zuk/msm8996-common/msm8996.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_PACKAGES += \
    init.zuk.rc

# Vendor properties
-include $(LOCAL_PATH)/vendor_prop.mk

# Camera
PRODUCT_PACKAGES += \
    CameraGo

# Permissions
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/etc/permissions/privapp-permissions-mixplorer.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mixplorer.xml

# MiCalculator
PRODUCT_PACKAGES += \
    GalleryGo \
    MiCalculator

# MiXplorer
PRODUCT_PACKAGES += \
    MiXplorer

# MiXArchive
PRODUCT_PACKAGES += \
    MiXArchive

# Retro
PRODUCT_PACKAGES += \
    RetroMusic

# Recorder
PRODUCT_PACKAGES += \
    KimciRecorder \
    RemovePackages

# Prebuilts
PRODUCT_PACKAGES += \
    GalleryGo \
    smsorganizer 

#Vanced Manager
PRODUCT_PACKAGES += \
    Vanced

#FirefoxLite
PRODUCT_PACKAGES += \
    FirefoxLite
