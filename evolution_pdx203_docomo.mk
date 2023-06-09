#
# Copyright (C) 2018 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

IS_PHONE := true

PRODUCT_NAME := evolution_pdx203_docomo
PRODUCT_DEVICE := pdx203
PRODUCT_MANUFACTURER := docomo
PRODUCT_BRAND := Sony
PRODUCT_MODEL := SO-51A

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=SO-51A \
    TARGET_PRODUCT=SO-51A \
    PRIVATE_BUILD_DESC="SO-51A-user 12 58.2.B.0.520 058002B000052002813269650 release-keys"

BUILD_FINGERPRINT := docomo/SO-51A/SO-51A:12/58.2.B.0.520/058002B000052002813269650:user/release-keys
