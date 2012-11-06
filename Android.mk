# Copyright (C) 2008 The Android Open Source Project
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

include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/lib/marisa

LOCAL_CPP_EXTENSION := .cc

LOCAL_SRC_FILES := lib/marisa/base.cc \
	lib/marisa/intvector.cc \
	lib/marisa/progress.cc \
	lib/marisa/tail.cc \
	lib/marisa/trie.cc \
	lib/marisa/trie-search.cc \
	lib/marisa/bitvector.cc \
	lib/marisa/mapper.cc \
	lib/marisa/reader.cc \
	lib/marisa/trie-build.cc \
	lib/marisa/trie-c.cc \
	lib/marisa/writer.cc

LOCAL_MODULE := libmarisa-trie-gnustl-rtti
LOCAL_MODULE_TAGS := optional

LOCAL_NDK_STL_VARIANT := gnustl_static
LOCAL_SDK_VERSION := 14

include $(BUILD_STATIC_LIBRARY)
