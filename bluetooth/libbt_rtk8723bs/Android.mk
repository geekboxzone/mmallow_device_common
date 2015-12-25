LOCAL_PATH := $(call my-dir)

#ifeq ($(strip $(BOARD_CONNECTIVITY_MODULE)), rtl8723bs)

include $(CLEAR_VARS)

BDROID_DIR := $(TOP_DIR)system/bt

LOCAL_SRC_FILES := \
        src/bt_vendor_rtk.c \
        src/hardware.c \
        src/userial_vendor.c \
        src/upio.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/include \
        $(BDROID_DIR)/hci/include

LOCAL_SHARED_LIBRARIES := \
        libcutils \
        libhardware_legacy

LOCAL_MODULE := libbt-vendor-rtl8723bs
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_OWNER := realtek
#LOCAL_PROPRIETARY_MODULE := true

#include $(LOCAL_PATH)/vnd_buildcfg.mk

include $(BUILD_SHARED_LIBRARY)

#endif # BOARD_CONNECTIVITY_MODULE
