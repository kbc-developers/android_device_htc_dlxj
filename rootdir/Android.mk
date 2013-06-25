LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

include $(CLEAR_VARS)
LOCAL_MODULE		:= fstab.dlxj
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/fstab.dlxj
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.firmware_links.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.qcom.firmware_links.sh
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.dlxj.usb.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.dlxj.usb.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.dlxj.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.dlxj.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= ueventd.dlxj.rc
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/ueventd.dlxj.rc
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE		:= init.qcom.sh
LOCAL_MODULE_TAGS	:= optional eng
LOCAL_MODULE_CLASS	:= ETC
LOCAL_SRC_FILES		:= etc/init.qcom.sh
LOCAL_MODULE_PATH	:= $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
