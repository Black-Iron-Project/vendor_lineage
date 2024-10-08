LINEAGE_VERSION := Blackiron-$(BLACKIRON_BUILD_VERSION)

# Display version
LINEAGE_DISPLAY_VERSION := Blackiron-$(BLACKIRON_DISPLAY_VERSION)

# LineageOS version properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.lineage.version=$(LINEAGE_VERSION) \
    ro.lineage.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.lineage.build.version=$(BLACKIRON_VERSION) \
    ro.lineage.releasetype=$(BLACKIRON_BUILDTYPE) \
    ro.modversion=$(LINEAGE_VERSION)
