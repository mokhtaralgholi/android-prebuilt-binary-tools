LOCAL_PATH:= $(call my-dir)

libpcre2_src_files := \
	pcre/dist2/src/pcre2_auto_possess.c \
	pcre/dist2/src/pcre2_compile.c \
	pcre/dist2/src/pcre2_config.c \
	pcre/dist2/src/pcre2_context.c \
	pcre/dist2/src/pcre2_dfa_match.c \
	pcre/dist2/src/pcre2_error.c \
	pcre/dist2/src/pcre2_find_bracket.c \
	pcre/dist2/src/pcre2_maketables.c \
	pcre/dist2/src/pcre2_match.c \
	pcre/dist2/src/pcre2_match_data.c \
	pcre/dist2/src/pcre2_jit_compile.c \
	pcre/dist2/src/pcre2_newline.c \
	pcre/dist2/src/pcre2_ord2utf.c \
	pcre/dist2/src/pcre2_pattern_info.c \
	pcre/dist2/src/pcre2_serialize.c \
	pcre/dist2/src/pcre2_string_utils.c \
	pcre/dist2/src/pcre2_study.c \
	pcre/dist2/src/pcre2_substitute.c \
	pcre/dist2/src/pcre2_substring.c \
	pcre/dist2/src/pcre2_tables.c \
	pcre/dist2/src/pcre2_ucd.c \
	pcre/dist2/src/pcre2_valid_utf.c \
	pcre/dist2/src/pcre2_xclass.c \
	pcre/dist2/src/pcre2_chartables.c

libselinux_src_files := \
  selinux/libselinux/src/booleans.c \
  selinux/libselinux/src/callbacks.c \
  selinux/libselinux/src/freecon.c \
  selinux/libselinux/src/label_backends_android.c \
  selinux/libselinux/src/label.c \
  selinux/libselinux/src/label_support.c \
  selinux/libselinux/src/matchpathcon.c \
  selinux/libselinux/src/setrans_client.c \
  selinux/libselinux/src/sha1.c \
  selinux/libselinux/src/label_file.c \
  selinux/libselinux/src/regex.c

sepol_src_files := \
  selinux/libsepol/src/assertion.c \
  selinux/libsepol/src/avrule_block.c \
  selinux/libsepol/src/avtab.c \
  selinux/libsepol/src/boolean_record.c \
  selinux/libsepol/src/booleans.c \
  selinux/libsepol/src/conditional.c \
  selinux/libsepol/src/constraint.c \
  selinux/libsepol/src/context.c \
  selinux/libsepol/src/context_record.c \
  selinux/libsepol/src/debug.c \
  selinux/libsepol/src/ebitmap.c \
  selinux/libsepol/src/expand.c \
  selinux/libsepol/src/genbools.c \
  selinux/libsepol/src/genusers.c \
  selinux/libsepol/src/handle.c \
  selinux/libsepol/src/hashtab.c \
  selinux/libsepol/src/hierarchy.c \
  selinux/libsepol/src/iface_record.c \
  selinux/libsepol/src/interfaces.c \
  selinux/libsepol/src/kernel_to_cil.c \
  selinux/libsepol/src/kernel_to_common.c \
  selinux/libsepol/src/kernel_to_conf.c \
  selinux/libsepol/src/link.c \
  selinux/libsepol/src/mls.c \
  selinux/libsepol/src/module.c \
  selinux/libsepol/src/module_to_cil.c \
  selinux/libsepol/src/node_record.c \
  selinux/libsepol/src/nodes.c \
  selinux/libsepol/src/polcaps.c \
  selinux/libsepol/src/policydb.c \
  selinux/libsepol/src/policydb_convert.c \
  selinux/libsepol/src/policydb_public.c \
  selinux/libsepol/src/port_record.c \
  selinux/libsepol/src/ports.c \
  selinux/libsepol/src/roles.c \
  selinux/libsepol/src/services.c \
  selinux/libsepol/src/sidtab.c \
  selinux/libsepol/src/symtab.c \
  selinux/libsepol/src/user_record.c \
  selinux/libsepol/src/users.c \
  selinux/libsepol/src/util.c \
  selinux/libsepol/src/write.c \
  selinux/libsepol/cil/src/android.c \
  selinux/libsepol/cil/src/cil_binary.c \
  selinux/libsepol/cil/src/cil_build_ast.c \
  selinux/libsepol/cil/src/cil.c \
  selinux/libsepol/cil/src/cil_copy_ast.c \
  selinux/libsepol/cil/src/cil_find.c \
  selinux/libsepol/cil/src/cil_fqn.c \
  selinux/libsepol/cil/src/cil_list.c \
  selinux/libsepol/cil/src/cil_log.c \
  selinux/libsepol/cil/src/cil_mem.c \
  selinux/libsepol/cil/src/cil_parser.c \
  selinux/libsepol/cil/src/cil_policy.c \
  selinux/libsepol/cil/src/cil_post.c \
  selinux/libsepol/cil/src/cil_reset_ast.c \
  selinux/libsepol/cil/src/cil_resolve_ast.c \
  selinux/libsepol/cil/src/cil_stack.c \
  selinux/libsepol/cil/src/cil_strpool.c \
  selinux/libsepol/cil/src/cil_symtab.c \
  selinux/libsepol/cil/src/cil_tree.c \
  selinux/libsepol/cil/src/cil_verify.c \
  selinux/libsepol/cil/src/cil_write_ast.c

zlib_src_files := \
  zlib/src/adler32.c \
  zlib/src/compress.c \
  zlib/src/crc32.c \
  zlib/src/deflate.c \
  zlib/src/gzclose.c \
  zlib/src/gzlib.c \
  zlib/src/gzread.c \
  zlib/src/gzwrite.c \
  zlib/src/infback.c \
  zlib/src/inflate.c \
  zlib/src/inftrees.c \
  zlib/src/inffast.c \
  zlib/src/trees.c \
  zlib/src/uncompr.c \
  zlib/src/zutil.c \

liblog_sources := \
  core/liblog/config_read.c  \
  core/liblog/config_write.c  \
  core/liblog/local_logger.c  \
  core/liblog/log_event_list.c  \
  core/liblog/log_event_write.c  \
  core/liblog/log_ratelimit.cpp  \
  core/liblog/logger_lock.c  \
  core/liblog/logger_name.c  \
  core/liblog/logger_read.c  \
  core/liblog/logger_write.c  \
  core/liblog/logprint.c  \
  core/liblog/stderr_write.c  \
  core/liblog/fake_writer.c  \
  core/liblog/event_tag_map.cpp  \
  core/liblog/log_time.cpp \
  core/liblog/properties.c \
  core/liblog/pmsg_reader.c \
  core/liblog/pmsg_writer.c \
  core/liblog/logd_reader.c \
  core/liblog/logd_writer.c \

libbase_srcs := \
  core/base/file.cpp \
  core/base/logging.cpp \
  core/base/parsenetaddress.cpp \
  core/base/quick_exit.cpp \
  core/base/stringprintf.cpp \
  core/base/strings.cpp \
  core/base/test_utils.cpp \
  core/base/errors_unix.cpp \
  core/base/properties.cpp

libsparse_srcs := \
  core/libsparse/backed_block.c \
  core/libsparse/output_file.c \
  core/libsparse/sparse.c \
  core/libsparse/sparse_crc32.c \
  core/libsparse/sparse_err.c \
  core/libsparse/sparse_read.c \

libcutils_srcs := \
  core/libcutils/config_utils.c \
  core/libcutils/fs_config.c \
  core/libcutils/canned_fs_config.c \
  core/libcutils/hashmap.c \
  core/libcutils/iosched_policy.c \
  core/libcutils/load_file.c \
  core/libcutils/native_handle.c \
  core/libcutils/open_memstream.c \
  core/libcutils/record_stream.c \
  core/libcutils/sched_policy.cpp \
  core/libcutils/sockets.cpp \
  core/libcutils/strlcpy.c \
  core/libcutils/threads.c \

ext4_utils_srcs := \
	extras/ext4_utils/make_ext4fs.c \
	extras/ext4_utils/ext4fixup.c \
	extras/ext4_utils/ext4_utils.c \
	extras/ext4_utils/allocate.c \
	extras/ext4_utils/contents.c \
	extras/ext4_utils/extent.c \
	extras/ext4_utils/indirect.c \
	extras/ext4_utils/sha1.c \
	extras/ext4_utils/wipe.c \
	extras/ext4_utils/crc16.c \
	extras/ext4_utils/ext4_sb.c

make_ext4fs_srcs := extras/ext4_utils/make_ext4fs_main.c
make_ext4fs_custom_srcs := src/make_ext4fs_def.c

libbrotli_src_files := \
	$(wildcard external/brotli/c/common/*.c) \
	$(wildcard external/brotli/c/dec/*.c) \
	$(wildcard external/brotli/c/enc/*.c)

brotli_src := external/brotli/c/tools/brotli.c
brotli_inc := external/brotli/c/include

common_cflags := \
	-fpie -fPIE \

common_includes := \
	core/libcutils/include \
	core/include \
	core/base/include \
	core/libsparse/include \
	core/libsparse \
	selinux/libselinux/include \
	selinux/libselinux/src \
	pcre/include \
	pcre/dist2 \
	pcre/include_internal \
	selinux/include \
	selinux/libsepol/include \
	selinux/libsepol/cil/include \
	extras/ext4_utils/include \

liblog_includes := core/liblog/include \
	core/include \

##
# libselinux.a
#
include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(libselinux_src_files)
LOCAL_MODULE := libselinux
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := -std=gnu89 \
	-DBUILD_HOST \
	-DNO_PERSISTENTLY_STORED_PATTERNS \
    -DDISABLE_SETRANS \
    -DDISABLE_BOOL \
    -D_GNU_SOURCE \
    -DNO_MEDIA_BACKEND \
    -DNO_X_BACKEND \
    -DNO_DB_BACKEND \
	-DUSE_PCRE2 \
    -Wall \
    -Werror \
    -Wno-error=missing-noreturn \
    -Wno-error=unused-function \

LOCAL_STATIC_LIBRARIES := libpcre2
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

##
# libsepol.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libsepol
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := $(common_cflags)
LOCAL_SRC_FILES := $(sepol_src_files)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

##
# liblog.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := liblog
LOCAL_CFLAGS := \
	-Wl,--hash-style=both \
	-fvisibility=hidden \
	-D__ANDROID__ \
	-DANDROID \
	-DANDROID_NDK \
	-DLIBLOG_LOG_TAG=1006 \
	-DSNET_EVENT_LOG_TAG=1397638484

LOCAL_C_INCLUDES := $(liblog_includes)
LOCAL_SRC_FILES := $(liblog_sources)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

##
# libbase.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libbase
LOCAL_CFLAGS += -Wextra -std=c++14 $(common_cflags)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := $(libbase_srcs)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

##
# libcutils.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libcutils
LOCAL_CFLAGS += -Werror \
	-Wextra \
	-Wall \
	$(common_cflags)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := $(libcutils_srcs)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

##
# libz.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libz
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_CFLAGS := -O3 \
	-DUSE_MMAP \
	-DZLIB_CONST \
	-Wall \
	-Werror \
	$(common_cflags)

LOCAL_SRC_FILES := $(zlib_src_files)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

##
# libpcre2.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libpcre2
LOCAL_CFLAGS += -DHAVE_CONFIG_H \
	-DPCRE2_CODE_UNIT_WIDTH=8
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := $(libpcre2_src_files)
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

include $(BUILD_STATIC_LIBRARY)

##
# libsparse.a
#
include $(CLEAR_VARS)

LOCAL_MODULE := libsparse
LOCAL_CFLAGS += \
	-D_FILE_OFFSET_BITS=64 \
	-D_LARGEFILE64_SOURCE=1 \
	$(common_cflags)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := $(libsparse_srcs)
LOCAL_STATIC_LIBRARIES := libbase liblog libz
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

##
# libbrotli_static.a
#
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(libbrotli_src_files)
LOCAL_CFLAGS += $(common_cflags)
LOCAL_MODULE := libbrotli_static
LOCAL_C_INCLUDES := $(brotli_inc)
LOCAL_MODULE_CLASS := STATIC_LIBRARIES

include $(BUILD_STATIC_LIBRARY)

##
# simg2img
#
include $(CLEAR_VARS)

LOCAL_MODULE := simg2img
LOCAL_CFLAGS += \
	-D_FILE_OFFSET_BITS=64 \
	-D_LARGEFILE64_SOURCE=1 \
	$(common_cflags)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := \
	core/libsparse/simg2img.c \
	core/libsparse/sparse_crc32.c
LOCAL_STATIC_LIBRARIES := libsparse libbase libz
LOCAL_MODULE_TAGS := optional
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)

##
# img2simg
#
include $(CLEAR_VARS)

LOCAL_MODULE := img2simg
LOCAL_CFLAGS += \
	-D_FILE_OFFSET_BITS=64 \
	-D_LARGEFILE64_SOURCE=1 \
	$(common_cflags)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := core/libsparse/img2simg.c
LOCAL_STATIC_LIBRARIES := libsparse libbase libz
LOCAL_MODULE_TAGS := optional
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)

##
# append2simg
#
include $(CLEAR_VARS)

LOCAL_MODULE := append2simg
LOCAL_CFLAGS += \
	-D_FILE_OFFSET_BITS=64 \
	-D_LARGEFILE64_SOURCE=1 \
	$(common_cflags)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := core/libsparse/append2simg.c
LOCAL_STATIC_LIBRARIES := libsparse libbase libz
LOCAL_MODULE_TAGS := optional
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)

##
# make_ext4fs
#
include $(CLEAR_VARS)

LOCAL_MODULE := make_ext4fs
LOCAL_CFLAGS += \
	-DANDROID \
	-DHOST \
	-fno-strict-aliasing

LOCAL_C_INCLUDES := \
	$(common_includes)
LOCAL_SRC_FILES := \
	$(make_ext4fs_srcs) $(ext4_utils_srcs)
LOCAL_STATIC_LIBRARIES := libsparse \
	libz \
	libselinux \
	libcutils \
	liblog
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)

##
# sefcontext_compile
#
include $(CLEAR_VARS)

LOCAL_MODULE := sefcontext_compile
LOCAL_CFLAGS += -Wall -Werror -DUSE_PCRE2 $(common_cflags)
LOCAL_STATIC_LIBRARIES := libselinux libpcre2 libsepol
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := selinux/libselinux/utils/sefcontext_compile.c
LOCAL_MODULE_TAGS := optional
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)


##
# sefcontext_decompile
#
include $(CLEAR_VARS)

LOCAL_MODULE := sefcontext_decompile
LOCAL_CFLAGS += -std=c11 $(common_cflags)
LOCAL_C_INCLUDES := $(common_includes)
LOCAL_SRC_FILES := src/sefcontext_decompile.c
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)

##
# brotli
#
include $(CLEAR_VARS)

LOCAL_MODULE := brotli
LOCAL_CFLAGS += $(common_cflags)
LOCAL_C_INCLUDES := $(brotli_inc)
LOCAL_SRC_FILES := $(brotli_src)
LOCAL_STATIC_LIBRARIES := libbrotli_static
LOCAL_LDFLAGS := -static

include $(BUILD_EXECUTABLE)
