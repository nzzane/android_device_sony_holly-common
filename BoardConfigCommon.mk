# mt6795 platform boardconfig
-include vendor/sony/hollyss/BoardConfigVendor.mk

#Folder Path
LOCAL_PATH := device/sony/holly-common

#Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

#Camera
USE_CAMERA_STUB := true
TARGET_PROVIDES_INIT_RC := true

# Platform
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

TARGET_BOARD_PLATFORM := mt6795

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# FIX Freezing
TARGET_NO_SENSOR_PERMISSION_CHECK := true
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# BOOTLOADER
TARGET_BOOTLOADER_BOARD_NAME := mt6795

# EXT4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
TARGET_KMODULES := true

# Flags
TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Kernel
TARGET_IS_64_BIT := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_SECOND_OFFSET := 0x00e88000
BOARD_KERNEL_TAGS_OFFSET := 0x0df88000
BOARD_MKBOOTIMG_ARGS := \
	--base $(BOARD_KERNEL_BASE) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--second_offset $(BOARD_SECOND_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# Building Kernel From Source
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/sony/holly
TARGET_KERNEL_ARCH := $(TARGET_ARCH)
TARGET_KERNEL_HEADER_ARCH := $(TARGET_ARCH)
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
MTK_APPENDED_DTB_SUPPORT := true
TARGET_KMODULES := true

# build old-style zip files (required for ota updater)
BLOCK_BASED_OTA := false

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Display
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true

#RIL
# RIL
BOARD_PROVIDES_RILD := true
MTK_DT_SUPPORT := no
MTK_VT3G324M_SUPPORT := no
MTK_SHARE_MODEM_CURRENT := 1
MTK_SHARE_MODEM_SUPPORT := 2
MTK_IPV6_SUPPORT := yes
MTK_LTE_SUPPORT := yes
MTK_LTE_DC_SUPPORT := no
MTK_SVLTE_SUPPORT := no
MTK_EAP_SIM_AKA := yes
MTK_IRAT_SUPPORT := no
MTK_DTAG_DUAL_APN_SUPPORT := no
MTK_MD1_SUPPORT := 5
MTK_MD2_SUPPORT := 4
MTK_MD3_SUPPORT := 2
MTK_MD5_SUPPORT := 5
MTK_ENABLE_MD1 = yes
MTK_ENABLE_MD2 = no
MTK_ENABLE_MD3 = no
MTK_ENABLE_MD5 = no

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Audio
BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_USES_MTK_AUDIO := true
BOARD_CONNECTIVITY_MODULE := conn_soc

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

# Wifi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

# GPS
BOARD_GPS_LIBRARIES := true

# FM
MTK_FM_SUPPORT :=true
MTK_FM_RX_SUPPORT :=true
MTK_FM_CHIP := MT6630_FM

# Consumerir
MTK_IRTX_SUPPORT :=true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200 # fastboot getvar all
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4 # fastboot getvar all
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040 # fastboot getvar all
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040 # fastboot getvar all
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2841116672 # fastboot getvar all
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12012486656 # fastboot getvar all
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_LARGE_FILESYSTEM := true

#SELinux
BOARD_SEPOLICY_DIRS := \
      device/sony/holly-common/sepolicy

