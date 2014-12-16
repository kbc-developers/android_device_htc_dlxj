#
# Copyright (C) 2012 The Android Open-Source Project
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

ifeq ($(TARGET_DEVICE),dlxj)

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

MDM_IMAGES := \
    acdb.mbn apps.mbn dsp1.mbn dsp2.mbn dsp3.mbn efs1.mbn efs2.mbn efs3.mbn \
    htccdma.mbn htccnv.mbn htcnvmfg.mbn htcrfnv.mbn htcssmem.mbn htcuserd.mbn \
    mdm_acdb.img rpm.mbn sbl1.mbn sbl2.mbn \

MDM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(MDM_IMAGES)))
$(MDM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MDM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/mdm/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MDM_SYMLINKS)

Q6_IMAGES := \
    q6.b00 q6.b01 q6.b03 q6.b04 q6.b05 q6.b06 q6.mdt

Q6_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(Q6_IMAGES)))
$(Q6_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Q6 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/q6/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(Q6_SYMLINKS)

endif
