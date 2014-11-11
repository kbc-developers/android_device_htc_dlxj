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


$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

# Inherit from dlx device
$(call inherit-product, device/htc/dlxj/device.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += device/htc/dlxj/gps/gps.conf:system/etc/gps.conf

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.dlxj \
    init.dlxj.rc \
    init.dlxj.usb.rc \
    ueventd.dlxj.rc

PRODUCT_PACKAGES += \
    battery_0.png \
    battery_1.png \
    battery_2.png \
    battery_3.png \
    battery_4.png \
    battery_fail.png \
    battery_full.png

PRODUCT_PACKAGES += \
    libnetcmdiface

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml


# QC thernald config
PRODUCT_COPY_FILES += device/htc/dlxj/configs/thermald.conf:/system/etc/thermald.conf

# Media configs
PRODUCT_COPY_FILES += device/htc/dlxj/configs/AudioBTID.csv:system/etc/AudioBTID.csv
PRODUCT_COPY_FILES += device/htc/dlxj/configs/AudioBTIDnew.csv:system/etc/AudioBTIDnew.csv

# wifi config
PRODUCT_COPY_FILES += \
    device/htc/dlxj/configs/calibration:/system/etc/calibration \
    device/htc/dlxj/configs/calibration.gpio4:/system/etc/calibration.gpio4

# Audio config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/dlxj/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/dlxj/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/dlxj/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/dlxj/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/dlxj/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/dlxj/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/dlxj/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

PRODUCT_COPY_FILES += \
    device/htc/dlxj/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3:/system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3

# Wifi
PRODUCT_COPY_FILES += \
    device/htc/dlxj/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    device/htc/dlxj/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/dlxj/keylayout/dummy_keypad.kl:system/usr/keylayout/dummy_keypad.kl \
    device/htc/dlxj/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    device/htc/dlxj/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/dlxj/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/dlxj/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/htc/dlxj/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/dlxj/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/dlxj/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Audio
PRODUCT_PACKAGES += \
	libaudioamp

# Camera
PRODUCT_PACKAGES += \
	camera.msm8960

# GPS
PRODUCT_PACKAGES += \
        libloc_adapter \
        libloc_eng \
        libloc_api_v02 \
        libgps.utils \
        gps.msm8960

# IR
PRODUCT_PACKAGES += \
    CIRModule

# NFC
#PRODUCT_PACKAGES += \
#    nfc.msm8960 \
#    libnfc \
#    libnfc_ndef \
#    libnfc_jni \
#    Nfc \
#    Tag \
#    com.android.nfc_extras

# FeliCa
PRODUCT_PACKAGES += \
	KDDI_Felicalock \
	MobileFeliCaClient \
	MobileFeliCaMenuApp \
	MobileFeliCaSettingApp \
	MobileFeliCaWebPluginBoot

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_LOCALES += ja_JP

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
