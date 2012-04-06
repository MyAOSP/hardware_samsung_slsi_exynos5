LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	Exynos_OMX_Vdec.c

LOCAL_MODULE := libExynosOMX_Vdec
LOCAL_ARM_MODE := arm
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := $(EXYNOS_OMX_INC)/khronos \
	$(EXYNOS_OMX_INC)/exynos \
	$(EXYNOS_OMX_TOP)/osal \
	$(EXYNOS_OMX_TOP)/core \
	$(EXYNOS_OMX_COMPONENT)/common \
	$(EXYNOS_OMX_COMPONENT)/video/dec \
	hardware/samsung_slsi/exynos5/exynos_omx/codecs/exynos_codecs/video/exynos5/mfc_v4l2/include

ifeq ($(BOARD_USE_ANB), true)
LOCAL_STATIC_LIBRARIES := libExynosOMX_OSAL
LOCAL_CFLAGS += -DUSE_ANB
endif

include $(BUILD_STATIC_LIBRARY)
