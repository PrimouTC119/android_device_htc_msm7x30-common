TARGET_SPECIFIC_HEADER_PATH := device/htc/msm7x30-common/include

BOARD_VENDOR := htc

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# General
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_HARDWARE := true


# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_HAVE_HTC_AUDIO := true
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
#BOARD_HAVE_QCOM_FM := true
#BOARD_USES_QCOM_AUDIO_LPA := true
#BOARD_USES_QCOM_AUDIO_RESETALL := true
#BOARD_USES_QCOM_AUDIO_SPEECH := true
#BOARD_USES_QCOM_AUDIO_VOIPMUTE := true

# Display
TARGET_QCOM_DISPLAY_VARIANT := legacy
BOARD_EGL_CFG := device/htc/msm7x30-common/rootdir/system/lib/egl/egl.cfg
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DNO_UPDATE_PREVIEW

TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Media
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
CAMERA_USES_SURFACEFLINGER_CLIENT_STUB := true
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USES_PMEM_ADSP := true
USE_CAMERA_STUB := false
#COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS -DQCOM_LEGACY_CAM_PARAMS
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_LEGACY_CAM_PARAMS
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1200

# Wifi
WIFI_BAND := 802_11_ABGN
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
BOARD_LEGACY_NL80211_STA_EVENTS := true


# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Misc
TARGET_PROVIDES_LIBLIGHT := true

BOARD_USE_NEW_LIBRIL_HTC := true
BOARD_USES_LEGACY_RIL := true

ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true


# Device Settings
#BOARD_DEVICE_SETTINGS := device/htc/msm7x30-common/DeviceSettings

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/htc/msm7x30-common/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    device.te \
    domain.te \
    drmserver.te \
    file_contexts \
    files \
    file.te \
    hci_init.te \
    healthd.te \
    init.te \
    init_shell.te \
    keystore.te \
    kickstart.te \
    mediaserver.te \
    rild.te \
    surfaceflinger.te \
    system.te \
    ueventd.te \
    untrusted_app.te \
    vold.te \
    wpa.te \
    wpa_socket.te
