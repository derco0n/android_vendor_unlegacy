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
$(call inherit-product, device/bn/hummingbird/aosp_hummingbird.mk)

PRODUCT_NAME   := ua_hummingbird
PRODUCT_DEVICE := hummingbird
PRODUCT_BRAND  := NOOK
PRODUCT_MODEL  := Nook HD
PRODUCT_MANUFACTURER := BN LLC

# Device build info and fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=HD \
    BUILD_FINGERPRINT="NOOK/HD/hummingbird:4.0.4/IMM76L/2.2.1.8015:user/release-keys" \
    PRIVATE_BUILD_DESC="HD-user 4.0.4 IMM76L 2.2.1.8015 release-keys"
