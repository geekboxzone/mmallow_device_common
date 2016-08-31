LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

BDROID_DIR := $(TOP_DIR)system/bt

LOCAL_SRC_FILES := \
        src/bt_vendor_rtk.c \
        src/hardware.c \
        src/userial_vendor.c \
        src/upio.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/include \
        $(BDROID_DIR)/hci/include \
        $(BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR)/uart

ifeq ($(PRODUCT_RTK_BT_CHIP_FLOW_CTRL),false) 
LOCAL_CFLAGS += -DRTK_UART_SHUTDOWN_FLOW_CTRL
endif

LOCAL_SHARED_LIBRARIES := \
        libcutils \
        libhardware_legacy

LOCAL_MODULE := libbt-vendor_uart
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)
