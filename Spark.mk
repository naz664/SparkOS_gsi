$(call inherit-product, vendor/spark/config/common.mk)
$(call inherit-product, vendor/spark/config/common_full.mk)
$(call inherit-product, vendor/spark/config/BoardConfigSoong.mk)
$(call inherit-product, vendor/spark/config/BoardConfigSpark.mk)
$(call inherit-product, device/spark/sepolicy/common/sepolicy.mk)
$(call inherit-product, vendor/spark/config/bootanimation.mk)
-include vendor/spark/build/core/config.mk
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_NO_KERNEL_IMAGE := true
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_BOOT_ANIMATION_RES := 1080

# Set Bootanimation at 720P
TARGET_BOOT_ANIMATION_RES := 720

# APN
PRODUCT_PACKAGES += apns-conf.xml
