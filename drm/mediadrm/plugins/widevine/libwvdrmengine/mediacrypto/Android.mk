LOCAL_PATH := $(call my-dir)

# -----------------------------------------------------------------------------
# Builds libwvdrmcryptoplugin
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  src/WVCryptoPlugin.cpp \

LOCAL_C_INCLUDES := \
  external/boringssl/src/include \
  external/abseil-cpp \
  frameworks/av/include \
  frameworks/av/media/module/foundation/include \
  frameworks/native/include \
  frameworks/av/media/libstagefright/include \
  frameworks/av/media/libstagefright/foundation/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/core/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/metrics/include \
  $(WIDEVINE_ENGINE_SOURCE)/include \
  $(WIDEVINE_ENGINE_SOURCE)/mediacrypto/include \
  $(WIDEVINE_ENGINE_SOURCE)/oemcrypto/include \

LOCAL_HEADER_LIBRARIES := \
  libcrypto \
  libutils_headers

LOCAL_STATIC_LIBRARIES := \
  libcdm_protos \

LOCAL_SHARED_LIBRARIES := \
  liblog

LOCAL_MODULE := libwvdrmcryptoplugin
LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)

# -----------------------------------------------------------------------------
# Builds libwvdrmcryptoplugin_hidl
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  src_hidl/WVCryptoPlugin.cpp \

LOCAL_C_INCLUDES := \
  external/boringssl/src/include \
  external/abseil-cpp \
  frameworks/av/include \
  frameworks/av/media/module/foundation/include \
  frameworks/native/include \
  frameworks/av/media/libstagefright/include \
  frameworks/av/media/libstagefright/foundation/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/core/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/include \
  $(WIDEVINE_ENGINE_SOURCE)/cdm/metrics/include \
  $(WIDEVINE_ENGINE_SOURCE)/include_hidl \
  $(WIDEVINE_ENGINE_SOURCE)/include \
  $(WIDEVINE_ENGINE_SOURCE)/mediacrypto/include_hidl \
  $(WIDEVINE_ENGINE_SOURCE)/mediacrypto/include \
  $(WIDEVINE_ENGINE_SOURCE)/oemcrypto/include \

LOCAL_HEADER_LIBRARIES := \
  libutils_headers

LOCAL_STATIC_LIBRARIES := \
  libcdm_protos \

LOCAL_SHARED_LIBRARIES := \
  android.hardware.drm@1.0 \
  android.hardware.drm@1.1 \
  android.hidl.memory@1.0 \
  libhidlmemory \
  libcrypto \
  liblog

LOCAL_MODULE := libwvdrmcryptoplugin_hidl
LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
