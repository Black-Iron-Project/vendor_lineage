PRODUCT_VERSION_MAJOR = 6
PRODUCT_VERSION_MINOR = 0

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

BLACKIRON_BUILDTYPE ?= UNOFFICIAL

BLACKIRON_VERSION := BlackironProject-v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(CURRENT_DEVICE)-$(BLACKIRON_BUILDTYPE)-$(shell date -u +%Y%m%d-%H%M)

# Display version
BLACKIRON_DISPLAY_VERSION := v$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)

# BlackIron Project version properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.blackiron.version=$(BLACKIRON_VERSION) \
    ro.blackiron.device=$(BLACKIRON_BUILD) \
    ro.blackiron.display.version=$(BLACKIRON_DISPLAY_VERSION) \
    ro.blackiron.build.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.blackiron.releasetype=$(BLACKIRON_BUILDTYPE)

# Signing
-include vendor/blackiron-priv/keys/keys.mk
