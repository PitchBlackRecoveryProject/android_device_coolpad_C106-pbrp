# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
	charger_res_images \
	charger

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8952

# Kernel
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/Image.gz-dtb:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := C106
PRODUCT_NAME := omni_C106 
PRODUCT_BRAND := Coolpad 
PRODUCT_MODEL := Coolpad Cool 1 Dual
PRODUCT_MANUFACTURER := Coolpad
