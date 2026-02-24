# Heredar de la configuración genérica de AOSP para 64 bits
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_arm64.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Datos del Dispositivo
PRODUCT_NAME := rios_v70max
PRODUCT_DEVICE := v70max
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE V70 Max
PRODUCT_MANUFACTURER := ZTE

# Identidad de riOS
PRODUCT_SYSTEM_NAME := riOS
PRODUCT_SYSTEM_VERSION_CODE := 1

# Rutas de SELinux para riOS
BOARD_VENDOR_SEPOLICY_DIRS += device/rios/v70max/sepolicy

# Propiedades de optimización riOS (Punto B9)
TARGET_SYSTEM_PROP += device/rios/v70max/system.prop

# Optimización del Framework (Punto A8)
PRODUCT_PROPERTY_OVERRIDES += \
    pm.dexopt.install=speed-profile \
    pm.dexopt.bg-dexopt=speed-profile \
    dalvik.vm.image-dex2oat-filter=speed \
    dalvik.vm.dex2oat-filter=speed

# Capa de Personalización riOS (Punto B8)
DEVICE_PACKAGE_OVERLAYS += device/rios/v70max/overlay

# Permisos de aplicaciones (Punto C8)
PRODUCT_COPY_FILES += \
    device/rios/v70max/permissions/privapp-permissions-rios.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-rios.xml
