#
# Copyright (C) 2012 The CyanogenMod Project
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

# overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# vendor
$(call inherit-product-if-exists, vendor/asus/tf101g/tf101g-vendor.mk)

# firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/nvram.txt:system/etc/nvram.txt \
    $(LOCAL_PATH)/prebuilt/etc/nvram_nh615.txt:system/etc/nvram_nh615.txt \
    $(LOCAL_PATH)/prebuilt/etc/nvram_murata.txt:system/etc/nvram_murata.txt \
    $(LOCAL_PATH)/prebuilt/etc/nvram_nh615_sl101.txt:system/etc/nvram_nh615_sl101.txt \
    $(LOCAL_PATH)/prebuilt/etc/nvram_4329.txt:system/etc/nvram_4329.txt \
    $(LOCAL_PATH)/prebuilt/etc/bluetooth/bdaddr:system/etc/bluetooth/bdaddr \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcmdhd.bin:system/vendor/firmware/fw_bcmdhd.bin \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcmdhd_p2p.bin:system/vendor/firmware/fw_bcmdhd_p2p.bin \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/fw_bcmdhd_apsta.bin:system/vendor/firmware/fw_bcmdhd_apsta.bin \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/BCM4329B1_002.002.023.0797.0863.hcd:system/etc/firmware/BCM4329B1_002.002.023.0797.0863.hcd

# KAT
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/vendor/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    $(LOCAL_PATH)/prebuilt/etc/nvram.txt:system/etc/firmware/nvram.txt

# KAT Utilities
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/kat/optimize:system/etc/kat/optimize \
    $(LOCAL_PATH)/prebuilt/etc/kat/optimizedb:system/etc/kat/optimizedb \
    $(LOCAL_PATH)/prebuilt/etc/kat/optimizestorage:system/etc/kat/optimizestorage

# hardware
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Asus permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/asusdec/com.cyanogenmod.asusdec.xml:system/etc/permissions/com.cyanogenmod.asusdec.xml

# idc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/panjit_touch.idc:system/usr/idc/panjit_touch.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/atmel-maxtouch.idc:system/usr/idc/atmel-maxtouch.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/elantech_touchscreen.idc:system/usr/idc/elantech_touchscreen.idc

# ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/fstab.ventana:root/fstab.ventana \
    $(LOCAL_PATH)/ramdisk/init.ventana.rc:root/init.ventana.rc \
    $(LOCAL_PATH)/ramdisk/init.ventana.keyboard.rc:root/init.ventana.keyboard.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.ventana.rc:root/ueventd.ventana.rc \
    $(LOCAL_PATH)/ramdisk/init.ventana.usb.rc:root/init.ventana.usb.rc

# ramdisk TF101G (ril-daemon add vpn group)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc

# keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keychars/asusec.kcm:system/usr/keychars/asusec.kcm

# TODO: Include key-chars and key-layout files if necessary

# keylayout
$(call inherit-product, $(LOCAL_PATH)/keychars/l10n/l10n.mk)
$(call inherit-product, $(LOCAL_PATH)/keylayout/l10n/l10n.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/asusec.kl:system/usr/keylayout/asusec.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/asound.conf:system/etc/asound.conf \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# prebuilt
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/sbin/keyswap::root/sbin/keyswap \
    $(LOCAL_PATH)/prebuilt/bin/wifimacwriter:system/bin/wifimacwriter \
    $(LOCAL_PATH)/prebuilt/data/srs_processing.cfg:system/data/srs_processing.cfg

# bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf \
    $(LOCAL_PATH)/../../../system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/nvcamera.conf:system/etc/nvcamera.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/modules/battery_rvsd.ko:system/lib/modules/battery_rvsd.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/prebuilt/lib/modules/ipip.ko:system/lib/modules/ipip.ko

# TF101G hardware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/firmware/modem/EM820W_11.810.09.17.00.zip:system/etc/firmware/modem/EM820W_11.810.09.17.00.zip \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-down-HUAWEI:system/etc/ppp/ip-down-HUAWEI \
    $(LOCAL_PATH)/prebuilt/etc/ppp/ip-up-HUAWEI:system/etc/ppp/ip-up-HUAWEI \
    $(LOCAL_PATH)/prebuilt/lib/libglib.so:system/lib/libglib.so \
    $(LOCAL_PATH)/prebuilt/lib/libhuawei-ril.so:system/lib/libhuawei-ril.so

# tablet
PRODUCT_CHARACTERISTICS := tablet

# type
PRODUCT_TAGS += dalvik.gc.type-precise

# packages
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    audio.a2dp.default \
    audio.usb.default \
    libaudioutils \
    libinvensense_mpl \
    blobpack_tf \
    mischelp \
    libaudioutils \
    tinymix \
    tinyplay \
    tinyrec \
    audio_policy.tegra \
    audio.primary.tegra \
    librs_jni

# override
PRODUCT_PROPERTY_OVERRIDES := \
    ro.wifi.country=GB \
    wifi.interface=wlan0 \
    ro.ethernet.interface=eth0 \
    ro.ethernet.autoEnable=yes \
    ro.sf.lcd_density=160 \
    dalvik.vm.dexopt-data-only=1 \
    wifi.supplicant_scan_interval=180 \
    ro.opengles.version=196608

# My override
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=ru \
    ro.product.locale.region=RU \
    ro.com.android.dateformat=dd-MM-yyyy

# TF101G override
PRODUCT_PROPERTY_OVERRIDES += \
    ro.pad.features.modem=true \
    keyguard.no_require_sim=true \
    gsm.bodysargsm=32,26,29,29 \
    ro.cgsms.mode=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    picasso.3g=true

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    persist.sys.usb.config=mtp \
    ro.adb.secure=0 \
    ro.debuggable=1
