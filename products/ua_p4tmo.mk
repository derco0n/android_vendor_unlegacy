# Copyright (C) 2016 Unlegacy Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit Unlegacy Android common configuration
$(call inherit-product, vendor/unlegacy/configs/common.mk)

# Inherit AOSP device configuration
#$(call inherit-product, device/samsung/p4/aosp_espresso.mk)
$(call inherit-product, device/samsung/p4tmo/BoardConfig.mk)

#$(call inherit-product, device/samsung/p4-common/p4-common.mk)
#$(call inherit-product, device/samsung/p4tmo/device.mk)
#$(call inherit-product-if-exists, vendor/samsung/p4tmo/p4tmo-vendor.mk)

$(call inherit-product-if-exists, build/target/product/telephony.mk)

PRODUCT_NAME   := ua_p4tmo
PRODUCT_DEVICE := p4tmo
PRODUCT_BRAND  := Samsung
PRODUCT_MODEL  := SGH-T859
PRODUCT_MANUFACTURER := Samsung

# Device build info and fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=p4tmo \
    BUILD_FINGERPRINT="samsung/espresso10wifixx/espresso10wifi:4.2.2/JDQ39/P5110XXDML1:user/release-keys" \
    PRIVATE_BUILD_DESC="espresso10wifixx-user 4.2.2 JDQ39 P5110XXDML1 release-keys"
