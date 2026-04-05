LOCAL_PATH := $(call my-dir)

# 1. Подключаем готовую библиотеку Oxide
include $(CLEAR_VARS)
LOCAL_MODULE := OxideInternal
LOCAL_SRC_FILES := ../jniLibs/arm64-v8a/libOxideInternal.so
include $(PREBUILT_SHARED_LIBRARY)

# 2. Собираем сам проект чита
include $(CLEAR_VARS)
LOCAL_MODULE := TaylerCheat

# Указываем компилятору искать файлы .h в папке jni и jni/imgui
LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/imgui

# Список всех исходных файлов для сборки
LOCAL_SRC_FILES := main.cpp \
                   MenuGUI.cpp \
                   OxideInternal.cpp \
                   imgui/imgui.cpp \
                   imgui/imgui_draw.cpp \
                   imgui/imgui_widgets.cpp \
                   imgui/imgui_tables.cpp \
                   imgui/imgui_demo.cpp

# Системные библиотеки
LOCAL_LDLIBS := -llog -landroid
LOCAL_SHARED_LIBRARIES := OxideInternal

include $(BUILD_SHARED_LIBRARY)
