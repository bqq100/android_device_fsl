#
# Product-specific compile-time definitions.
#

include device/fsl/imx5x/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := ARD

BOARD_SOC_CLASS := IMX5X
BOARD_SOC_TYPE := IMX53

WIFI_DRIVER_MODULE_PATH :=  "/system/lib/modules/ar6000.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "ar6000"
WIFI_FIRMWARE_LOADER        := ""
WPA_SUPPLICANT_VERSION      := VER_0_6_ATHEROS
BOARD_WLAN_ATHEROS_SDK      := system/wlan/atheros/AR6kSDK.3.0_RC.298
BOARD_WLAN_CHIP_AR6102	    := true
BOARD_WLAN_CHIP_AR6003	    := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT

BOARD_HAVE_VPU := true
HAVE_FSL_IMX_GPU := true
HAVE_FSL_IMX_IPU := true

#for accelerator sensor, need to define sensor type here if BOARD_HAS_SENSOR is true
BOARD_HAS_SENSOR := false

# for recovery service
TARGET_SELECT_KEY := 28
TARGET_USERIMAGES_USE_EXT4 := true

# for ubi fs
# TARGET_USERIMAGES_USE_UBIFS := true
UBI_ROOT_INI := device/fsl/imx53_ard/ubinize.ini
UBI_RECOVERY_INI := device/fsl/imx53_ard/ubinize_reco.ini
TARGET_MKUBIFS_ARGS := -m 4096 -e 516096 -c 4096 -x none
TARGET_MKUBIFS_ARGS_RECOVERY := -m 4096 -e 516096 -c 40 -x none
TARGET_UBIRAW_ARGS := -m 4096 -p 512KiB $(UBI_ROOT_INI)
TARGET_UBIRAW_RECO_ARGS := -m 4096 -p 512KiB $(UBI_RECOVERY_INI)
