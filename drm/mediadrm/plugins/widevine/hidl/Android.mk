LOCAL_PATH := $(call my-dir)

# Widevine DRM HIDL 1.3 service, linked against the source-built
# libwvdrmengine (also make-based). Defined in Android.mk because soong
# modules cannot depend on make modules, which the engine drop still is.

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.drm@1.3-service.widevine
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_OWNER := widevine
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_INIT_RC := android.hardware.drm@1.3-service.widevine.rc
LOCAL_VINTF_FRAGMENTS := manifest_android.hardware.drm@1.3-service.widevine.xml
LOCAL_MULTILIB := 32

LOCAL_SRC_FILES := \
    CryptoFactory.cpp \
    CryptoPlugin.cpp \
    DrmFactory.cpp \
    DrmPlugin.cpp \
    TypeConvert.cpp \
    WVUUID.cpp \
    BoringSslCompat.cpp \
    service.cpp \

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    frameworks/native/include \
    frameworks/av/include \

LOCAL_CFLAGS := -Wall -Werror -Wthread-safety

LOCAL_SHARED_LIBRARIES := \
    android.hardware.drm@1.0 \
    android.hardware.drm@1.1 \
    android.hardware.drm@1.2 \
    android.hardware.drm@1.3 \
    libbase \
    libbinder \
    libcutils \
    libcrypto \
    libhidlbase \
    libhidlmemory \
    liblog \
    libstagefright_foundation \
    libutils \
    libwvdrmengine \

include $(BUILD_EXECUTABLE)
