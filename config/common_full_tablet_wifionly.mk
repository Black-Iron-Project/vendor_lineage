# Inherit mobile full common Blackiron stuff
$(call inherit-product, vendor/blackiron/config/common_mobile_full.mk)

# Inherit tablet common Blackiron stuff
$(call inherit-product, vendor/blackiron/config/tablet.mk)

$(call inherit-product, vendor/blackiron/config/wifionly.mk)
