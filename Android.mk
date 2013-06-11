#
# Copyright (C) 2010 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

ifneq ($(filter hummingbird,$(TARGET_DEVICE)),)

ifneq ($(TARGET_SIMULATOR),true)
include $(call first-makefiles-under,$(LOCAL_PATH))
endif

HDCP_SYMLINK := $(TARGET_OUT_VENDOR)/firmware/hdcp.keys
$(HDCP_SYMLINK): HDCP_KEYS_FILE := /rom/devconf/hdcp.keys
$(HDCP_SYMLINK): $(LOCAL_INSTALLED_MODULE) $(LOCAL_PATH)/Android.mk
	@echo "Symlink: $@ -> $(HDCP_KEYS_FILE)"
	@mkdir -p $(TARGET_OUT_VENDOR)/firmware
	@rm -rf $@
	$(hide) ln -fs $(HDCP_KEYS_FILE) $@

ALL_DEFAULT_INSTALLED_MODULES += $(HDCP_SYMLINK)

# for mm/mmm
all_modules: $(HDCP_SYMLINK)

endif
