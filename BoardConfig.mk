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

# assert
TARGET_OTA_ASSERT_DEVICE := tf101g

# include
-include vendor/asus/tf101g/BoardConfigVendor.mk

# partitions
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9999999
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 527433728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 29850022707

# platform
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := ventana
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# scorpion
BOARD_MALLOC_ALIGNMENT := 16
USE_ALL_OPTIMIZED_STRING_FUNCS := true
NEED_WORKAROUND_CORTEX_A9_745320 := true
TARGET_EXTRA_CFLAGS := $(call cc-option,-mtune=cortex-a9) $(call cc-option,-mcpu=cortex-a9)

# wireless
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"

# Wifi tether tf101g
BOARD_LEGACY_NL80211_STA_EVENTS  := true

# RIL tf101g
TARGET_PROVIDES_LIBRIL := true
BOARD_USES_LEGACY_RIL := true
BOARD_HAS_EXTRA_SYS_PROPS := true
USE_IPV6_ROUTE := true

# audio
BOARD_USES_ALSA_AUDIO := false
BOARD_USES_GENERIC_AUDIO := false
USE_PROPRIETARY_AUDIO_EXTENSIONS := true

# battery
TARGET_HAS_DOCK_BATTERY := true

# bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/asus/tf101g/bluetooth

# camera
USE_CAMERA_STUB := false

# display
BOARD_USE_SKIA_LCDTEXT := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
DEVICE_RESOLUTION := 1280x800

# kernel - disable inline building for now  
TARGET_KERNEL_SOURCE := kernel/asus/tf101g
# KAT Kernel
#TARGET_KERNEL_CONFIG := katkernel_lidpatch_tf101g_defconfig
# EOS4 Kernel
TARGET_KERNEL_CONFIG := tf101g_eos_defconfig
TARGET_PREBUILT_KERNEL := device/asus/tf101g/prebuilt/kernel

# recovery
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_FILESYSTEM := ext4

# release
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/asus/tf101g/releasetools/tf101g_ota_from_target_files

# recovery hack
TARGET_RECOVERY_PRE_COMMAND := "echo 'boot-recovery' > /dev/block/mmcblk0p3; sync"

# Tegra2 EGL support
BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
BOARD_EGL_NEEDS_LEGACY_FB := true
BOARD_EGL_CFG := device/asus/tf101g/prebuilt/lib/hw/egl.cfg
USE_OPENGL_RENDERER := true
