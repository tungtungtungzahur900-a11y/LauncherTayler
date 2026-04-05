LOCAL_PATH := $(call my-dir)

# 1. Подключаем готовую либу Oxide
include $(CLEAR_VARS)
LOCAL_MODULE := OxideInternal
# Путь к либе относительно этого файла (jni)
LOCAL_SRC_FILES := ../jniLibs/arm64-v8a/libOxideInternal.so
include $(PREBUILT_SHARED_LIBRARY)

# 2. Собираем сам чит
include $(CLEAR_VARS)
LOCAL_MODULE := TaylerCheat

# Твои файлы со скрина 40
LOCAL_SRC_FILES := main.cpp \
                   MenuGUI.cpp \
                   OxideInternal.cpp

LOCAL_LDLIBS := -llog -landroid -lgcc
LOCAL_SHARED_LIBRARIES := OxideInternal

include $(BUILD_SHARED_LIBRARY)
