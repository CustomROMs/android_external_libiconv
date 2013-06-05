LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        lib/iconv.c \
        lib/relocatable.c \
        libcharset/lib/localcharset.c

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/include \
        $(LOCAL_PATH)/lib \
        $(LOCAL_PATH)/libcharset/include

LOCAL_CFLAGS := \
        -Wno-multichar \
	-DLIBICONV_PLUG \
        -DBUILDING_LIBICONV \
        -DIN_LIBRARY \
	-DLIBDIR="\"/system/lib\""

LOCAL_MODULE := libiconv

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_ARM_NEON:= true
endif

include $(BUILD_SHARED_LIBRARY)
