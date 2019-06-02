# Copyright (C) 2017 Paranoid Android
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

# Check for target product
ifeq (pa_jasmine,$(TARGET_PRODUCT))

# Use the AOSP stack
TARGET_USES_AOSP := true

# Inherit AOSP device configuration
$(call inherit-product, device/zte/jasmine/aosp_jasmine.mk)

# Generic CAF packages
include device/qcom/common/common.mk

# Override AOSP build properties
PRODUCT_NAME := pa_jasmine
BOARD_VENDOR := zte
TARGET_VENDOR := zte
PRODUCT_DEVICE := jasmine
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="K88" \
    TARGET_DEVICE="jasmine" \
    BUILD_FINGERPRINT=ZTE/K88/jasmine:7.1.1/NMF26V/20170828.115541:user/release-keys \
    PRIVATE_BUILD_DESC="K88-user 7.1.1 NMF26V 20170828.115541 release-keys"

# Paranoid Android platform
include vendor/pa/main.mk

endif
