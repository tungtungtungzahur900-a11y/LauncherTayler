LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := OxideInternal
LOCAL_SRC_FILES := ../jniLibs/arm64-v8a/libOxideInternal.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := TaylerCheat

# Добавляем путь к заголовочным файлам ImGui
LOCAL_C_INCLUDES := $(LOCAL_PATH)/imgui

# Список всех файлов для сборки (проверь названия!)
LOCAL_SRC_FILES := main.cpp \
                   MenuGUI.cpp \
                   OxideInternal.cpp \
                   imgui/imgui.cpp \
                   imgui/imgui_draw.cpp \
                   imgui/imgui_widgets.cpp \
                   imgui/imgui_tables.cpp \
                   imgui/imgui_demo.cpp

LOCAL_LDLIBS := -llog -landroid
LOCAL_SHARED_LIBRARIES := OxideInternal

include $(BUILD_SHARED_LIBRARY)
