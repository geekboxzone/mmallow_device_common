LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

BDROID_DIR := $(TOP_DIR)system/bt

LOCAL_SRC_FILES := \
        src/bt_vendor_rtk.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/include \
        $(BDROID_DIR)/hci/include \
        $(BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR)/usb

LOCAL_SHARED_LIBRARIES := \
        libcutils

LOCAL_MODULE := libbt-vendor_usb
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
