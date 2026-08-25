LOCAL_PATH := $(call my-dir)

# -----------------------------------------------------------------------------
# Builds libwvdrmdrmplugin_test
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  legacy_src/WVDrmPlugin_test.cpp \

LOCAL_C_INCLUDES := \
  frameworks/av/include \
  frameworks/native/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/core/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/metrics/include \
  $(WIDEVINE_ENGINE_SOURCE)/include \
  $(WIDEVINE_ENGINE_SOURCE)/mediadrm/include \
  $(WIDEVINE_ENGINE_SOURCE)/oemcrypto/include \

LOCAL_STATIC_LIBRARIES := \
  libcdm \
  libcdm_protos \
  libcdm_utils \
  libcrypto \
  libjsmn \
  libgmock \
  libgmock_main \
  libgtest \
  libwvlevel3 \
  libwvdrmdrmplugin \

LOCAL_SHARED_LIBRARIES := \
  libcutils \
  libdl \
  liblog \
  libprotobuf-cpp-lite \
  libutils \

LOCAL_C_INCLUDES += \
  external/protobuf/src \

LOCAL_MODULE := libwvdrmdrmplugin_test

LOCAL_MODULE_TAGS := tests

LOCAL_MODULE_OWNER := widevine
LOCAL_PROPRIETARY_MODULE := true

# When built, explicitly put it in the DATA/bin directory.
LOCAL_MODULE_PATH := $(TARGET_OUT_DATA)/bin

ifneq ($(TARGET_ENABLE_MEDIADRM_64), true)
LOCAL_MODULE_TARGET_ARCH := arm x86 mips
endif

include $(BUILD_EXECUTABLE)

# -----------------------------------------------------------------------------
# Builds libwvdrmdrmplugin_hidl_test
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  WVDrmPlugin_test.cpp \

LOCAL_C_INCLUDES := \
  frameworks/av/include \
  frameworks/native/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/core/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/metrics/include \
  $(WIDEVINE_ENGINE_SOURCE)/include_hidl \
  $(WIDEVINE_ENGINE_SOURCE)/include \
  $(WIDEVINE_ENGINE_SOURCE)/mediadrm/include_hidl \
  $(WIDEVINE_ENGINE_SOURCE)/mediadrm/include \
  $(WIDEVINE_ENGINE_SOURCE)/oemcrypto/include \

LOCAL_STATIC_LIBRARIES := \
  libcdm \
  libcdm_protos \
  libcdm_utils \
  libcrypto \
  libjsmn \
  libgmock \
  libgmock_main \
  libgtest \
  libwvlevel3 \
  libwvdrmdrmplugin_hidl \

LOCAL_SHARED_LIBRARIES := \
  android.hardware.drm@1.0 \
  android.hardware.drm@1.1 \
  android.hidl.memory@1.0 \
  libbinder \
  libcutils \
  libdl \
  libhidlbase \
  libhidlmemory \
  libhidltransport \
  liblog \
  libprotobuf-cpp-lite \
  libutils \

LOCAL_C_INCLUDES += \
  external/protobuf/src \

LOCAL_MODULE := libwvdrmdrmplugin_hidl_test

LOCAL_MODULE_TAGS := tests

LOCAL_MODULE_OWNER := widevine
LOCAL_PROPRIETARY_MODULE := true

# When built, explicitly put it in the DATA/bin directory.
LOCAL_MODULE_PATH := $(TARGET_OUT_DATA)/bin

ifneq ($(TARGET_ENABLE_MEDIADRM_64), true)
LOCAL_MODULE_TARGET_ARCH := arm x86 mips
endif

include $(BUILD_EXECUTABLE)

# -----------------------------------------------------------------------------
# Builds hidl_metrics_adapter_unittest
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  hidl_metrics_adapter_unittest.cpp \

LOCAL_C_INCLUDES := \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/core/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/metrics/include \
  $(WIDEVINE_ENGINE_SOURCE)/include_hidl \
  $(WIDEVINE_ENGINE_SOURCE)/include \
  $(WIDEVINE_ENGINE_SOURCE)/mediadrm/include_hidl \
  $(WIDEVINE_ENGINE_SOURCE)/mediadrm/include \
  $(WIDEVINE_ENGINE_SOURCE)/oemcrypto/include \

LOCAL_STATIC_LIBRARIES := \
  libcdm \
  libcdm_protos \
  libcdm_utils \
  libgtest \
  libgtest_main \
  libwvdrmdrmplugin_hidl \
  libcrypto \
  libjsmn \
  libwvlevel3 \
  libwvdrmdrmplugin_hidl \

LOCAL_SHARED_LIBRARIES := \
  android.hardware.drm@1.0 \
  android.hardware.drm@1.1 \
  android.hidl.memory@1.0 \
  libhidlbase \
  libhidlmemory \
  libhidltransport \
  liblog \
  libprotobuf-cpp-lite \

LOCAL_C_INCLUDES += \
  external/protobuf/src \

LOCAL_MODULE := hidl_metrics_adapter_unittest

LOCAL_MODULE_TAGS := tests

LOCAL_MODULE_OWNER := widevine
LOCAL_PROPRIETARY_MODULE := true

# When built, explicitly put it in the DATA/bin directory.
LOCAL_MODULE_PATH := $(TARGET_OUT_DATA)/bin

ifneq ($(TARGET_ENABLE_MEDIADRM_64), true)
LOCAL_MODULE_TARGET_ARCH := arm x86 mips
endif

include $(BUILD_EXECUTABLE)

