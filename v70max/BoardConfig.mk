TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Seguridad (Punto C11)
BOARD_VENDOR_SEPOLICY_DIRS += device/rios/v70max/sepolicy

# Configuración de Empaquetado
AB_OTA_UPDATER := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_DYNAMIC_PARTITIONS_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := rios_dynamic_partitions
BOARD_RIOS_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor

# Kernel
TARGET_NO_KERNEL := false
BOARD_KERNEL_PAGESIZE := 4096
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

# Módulos del Kernel
BOARD_VENDOR_KERNEL_MODULES := $(wildcard device/rios/v70max/modules/*.ko)
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(BOARD_VENDOR_KERNEL_MODULES)

# Gráficos y HAL (Punto C10)
USE_OPENGL_RENDERER := true
BOARD_USES_ADRENO := true
TARGET_USES_VULKAN := true

# Cámara (Definición básica)
TARGET_USES_MEDIA_EXTENSIONS := true

# Audio y Conectividad (Punto D10)
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_WLAN := true

# Soporte para compresión de audio avanzada
BOARD_USES_GENERIC_AUDIO := false

# Servicios de Sistema (Punto A9)
BOARD_VENDOR_INIT_CUSTOM_FILES := device/rios/v70max/init.rios.rc

# Gestión de Energía (Punto C9)
TARGET_USES_INTERACTION_BOOST := true
BOARD_USES_GENERIC_POWERHAL := true

# Depuración controlada (Punto D9)
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
