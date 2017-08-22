ifeq ($(TARGET_QCOM_MEDIA_VARIANT),caf-msm8916)
QCOM_MEDIA_ROOT := $(call my-dir)

include $(QCOM_MEDIA_ROOT)/mm-core/Android.mk
include $(QCOM_MEDIA_ROOT)/libstagefrighthw/Android.mk

ifneq ($(TARGET_SUPPORTS_WEARABLES),true)
ifneq ($(filter msm8909 msm8916 msm8939,$(TARGET_BOARD_PLATFORM)),)

include $(QCOM_MEDIA_ROOT)/mm-video-v4l2/Android.mk
include $(QCOM_MEDIA_ROOT)/libc2dcolorconvert/Android.mk

endif
endif
endif
