LOCAL_PATH:= $(call my-dir)

libbrotli_src_files := \
	$(wildcard c/common/*.c) \
	$(wildcard c/dec/*.c) \
	$(wildcard c/enc/*.c)

brotli_src := c/tools/brotli.c
common_cflags := -O3 \
	-fpie -fPIE \

common_includes := c/include 

##
# libbrotli_static.a
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(libbrotli_src_files)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := libbrotli_static
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)


##
# brotli
#
include $(CLEAR_VARS)

LOCAL_MODULE := brotli
LOCAL_CFLAGS += $(common_cflags)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := $(brotli_src)
LOCAL_STATIC_LIBRARIES := libbrotli_static
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)
