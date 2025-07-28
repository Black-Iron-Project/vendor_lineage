# Inherit common Blackiron stuff
$(call inherit-product, vendor/blackiron/config/common_mobile.mk)

PRODUCT_SIZE := full

ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd
