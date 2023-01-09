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

TARGET_USES_PREBUILT_VENDOR_SEPOLICY := true
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true

TARGET_FACE_UNLOCK_SUPPORTED := true

# Use CCache
USE_CCACHE := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	persist.sys.binary_xml=false \
	dalvik.vm.dex2oat64.enabled=true \

#prebuilts
PRODUCT_PACKAGES += \
  OpenEUICC \

# Set Bootanimation at 720P
TARGET_BOOT_ANIMATION_RES := 720

# APN
PRODUCT_PACKAGES += apns-conf.xml
