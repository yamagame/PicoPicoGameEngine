LOCAL_PATH := $(call my-dir)

PG_ENGINE_PATH := ../../..

ifneq ($(call set_is_member,$(__ndk_modules),cocosdenshion),$(true))
  include $(CLEAR_VARS)
  LOCAL_MODULE    := cocosdenshion
  LOCAL_SRC_FILES := $(PG_ENGINE_PATH)/CocosDenshion/Android/obj/local/$(TARGET_ARCH_ABI)/libcocosdenshion.a
  include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq ($(call set_is_member,$(__ndk_modules),cocos2dwrapper),$(true))
  include $(CLEAR_VARS)
  LOCAL_MODULE    := cocos2dwrapper
  LOCAL_SRC_FILES := $(PG_ENGINE_PATH)/Cocos2dx/Android2/obj/local/$(TARGET_ARCH_ABI)/libcocos2dwrapper.a
  include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq ($(call set_is_member,$(__ndk_modules),freetype),$(true))
  include $(CLEAR_VARS)
  LOCAL_MODULE    := freetype
  LOCAL_SRC_FILES := $(PG_ENGINE_PATH)/freetype/Android/obj/local/$(TARGET_ARCH_ABI)/libfreetype.a
  include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq ($(call set_is_member,$(__ndk_modules),lua),$(true))
  include $(CLEAR_VARS)
  LOCAL_MODULE    := lua
  LOCAL_SRC_FILES := $(PG_ENGINE_PATH)/Lua5.2/Android/obj/local/$(TARGET_ARCH_ABI)/liblua.a
  include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq ($(call set_is_member,$(__ndk_modules),box2d),$(true))
  include $(CLEAR_VARS)
  LOCAL_MODULE    := box2d
  LOCAL_SRC_FILES := $(PG_ENGINE_PATH)/Box2D/Android/obj/local/$(TARGET_ARCH_ABI)/libbox2d.a
  include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq ($(call set_is_member,$(__ndk_modules),flmml),$(true))
  include $(CLEAR_VARS)
  LOCAL_MODULE    := flmml
  LOCAL_SRC_FILES := $(PG_ENGINE_PATH)/FlMML/Android/obj/local/$(TARGET_ARCH_ABI)/libflmml.a
  include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq ($(call set_is_member,$(__ndk_modules),png),$(true))
  include $(CLEAR_VARS)
  LOCAL_MODULE    := libpng 
  LOCAL_SRC_FILES := $(PG_ENGINE_PATH)/png/Android/obj/local/$(TARGET_ARCH_ABI)/libpng.a
  include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq ($(call set_is_member,$(__ndk_modules),xml2),$(true))
  include $(CLEAR_VARS)
  LOCAL_MODULE    := libxml2 
  LOCAL_SRC_FILES := $(PG_ENGINE_PATH)/Cocos2dx/libraries/Android/$(TARGET_ARCH_ABI)/libxml2.a
  include $(PREBUILT_STATIC_LIBRARY)
endif

include $(CLEAR_VARS)
LOCAL_MODULE := picogame
SOURCE_PATH := ../../sources/

JNI_CFLAGS := \
        -DFT_CONFIG_MODULES_H="<ftmodule.h>" \
        -DFT2_BUILD_LIBRARY \
        -D__COCOS2DX__ \
        -DLUA_COMPAT_ALL \
        -D_ANDROID \
        -D_STLP_NO_EXCEPTIONS \
        -D_STLP_USE_SIMPLE_NODE_ALLOC \
        -DCOCOS2D_DEBUG=0 \
        -DGL_GLEXT_PROTOTYPES=1 \
        -D__USE_OPENGL10__

LOCAL_CFLAGS := $(JNI_CFLAGS)

LOCAL_SRC_FILES := \
				$(SOURCE_PATH)/Logic/PPGameStart.cpp \
				$(SOURCE_PATH)/Logic/PPScriptGame.cpp \
				$(SOURCE_PATH)/PPGame/PPBox2D.cpp \
				$(SOURCE_PATH)/PPGame/PPFlMMLObject.cpp \
				$(SOURCE_PATH)/PPGame/PPFlMMLSeq.cpp \
				$(SOURCE_PATH)/PPGame/PPFont.cpp \
				$(SOURCE_PATH)/PPGame/PPFontTable.cpp \
				$(SOURCE_PATH)/PPGame/PPGameGeometry.cpp \
				$(SOURCE_PATH)/PPGame/PPGameMapData.cpp \
				$(SOURCE_PATH)/PPGame/PPGameMapEvent.cpp \
				$(SOURCE_PATH)/PPGame/PPGamePoly.cpp \
				$(SOURCE_PATH)/PPGame/PPGameRunlength.c \
				$(SOURCE_PATH)/PPGame/PPGameSound.cpp \
				$(SOURCE_PATH)/PPGame/PPGameSprite.cpp \
				$(SOURCE_PATH)/PPGame/PPGameStick.cpp \
				$(SOURCE_PATH)/PPGame/PPGameTexture.cpp \
				$(SOURCE_PATH)/PPGame/PPImageFont.cpp \
				$(SOURCE_PATH)/PPGame/PPLuaScript.cpp \
				$(SOURCE_PATH)/PPGame/PPNormalFont.cpp \
				$(SOURCE_PATH)/PPGame/PPObject.cpp \
				$(SOURCE_PATH)/PPGame/PPOffscreenTexture.cpp \
				$(SOURCE_PATH)/PPGame/PPParticle.cpp \
				$(SOURCE_PATH)/PPGame/PPReadError.cpp \
				$(SOURCE_PATH)/PPGame/PPSEMMLObject.cpp \
				$(SOURCE_PATH)/PPGame/PPSensor.cpp \
				$(SOURCE_PATH)/PPGame/PPTMXMap.cpp \
				$(SOURCE_PATH)/PPGame/PPTTFont.cpp \
				$(SOURCE_PATH)/PPGame/PPUIScrollView.cpp \
				$(SOURCE_PATH)/PPGame/PPUIText.cpp \
				$(SOURCE_PATH)/PPGame/PPVertualKey.cpp \
				$(SOURCE_PATH)/PPGame/PPWorld.cpp \
				$(SOURCE_PATH)/PPGame/QBGame.cpp \
				$(SOURCE_PATH)/PPGame/QBSound.cpp \
				$(SOURCE_PATH)/Platforms/Android/PPGameUtilCocos2dx.cpp \
				$(SOURCE_PATH)/Platforms/Android/PPGameSoundAndroid.cpp \
				$(SOURCE_PATH)/Platforms/Android/QBSoundAndroid.cpp \
				$(SOURCE_PATH)/Platforms/Android/PPSensorAndroid.cpp \
				$(SOURCE_PATH)/Platforms/Android/PPTTFont-Android.cpp \
				$(SOURCE_PATH)/Platforms/Windroid/PPGameMapCocos2dx.cpp \
				$(SOURCE_PATH)/Platforms/Windroid/QBNodeBase64.c \
				$(SOURCE_PATH)/Platforms/Windroid/QBNodeSystemCore.c \
				$(SOURCE_PATH)/Platforms/Windroid/QBNodeSystemPlist.c \
				$(SOURCE_PATH)/Platforms/Windroid/QBNodeSystemUtil.c \
				$(SOURCE_PATH)/Platforms/Windroid/QBNodeSystemValue.c

LOCAL_C_INCLUDES := \
                    $(LOCAL_PATH)/../../../Cocos2dx/sources/cocos2d-1.0.1-x-0.9.2/cocos2dx/platform/third_party/android/libpng/ \
                    $(LOCAL_PATH)/../../../Cocos2dx/sources/cocos2d-1.0.1-x-0.9.2/cocos2dx/platform/third_party/android/libxml2/ \
                    $(LOCAL_PATH)/../../../CocosDenshion/sources/CocosDenshion/ \
                  	$(LOCAL_PATH)/../../../FlMML/Android/jni/ \
                  	$(LOCAL_PATH)/../../../FlMML/include/flmml/ \
                  	$(LOCAL_PATH)/../../../FlMML/include/other/ \
                  	$(LOCAL_PATH)/../../../FlMML/sources/ \
                    $(LOCAL_PATH)/../../../FlMML/sources/FlMML/fmgenAs/ \
                    $(LOCAL_PATH)/../../../FlMML/sources/FlMML/other/ \
                    $(LOCAL_PATH)/$(SOURCE_PATH)/Platforms/Android/ \
                    $(LOCAL_PATH)/$(SOURCE_PATH)/Platforms/Windroid/ \
                    $(LOCAL_PATH)/$(SOURCE_PATH)/Logic/ \
                    $(LOCAL_PATH)/$(SOURCE_PATH)/PPGame/ \
                    $(LOCAL_PATH)/$(SOURCE_PATH)/PPImage/ \
                    $(LOCAL_PATH)/$(SOURCE_PATH)/GameLogic/ \
                  	$(LOCAL_PATH)/../../../Lua5.2/sources/ \
                  	$(LOCAL_PATH)/../../../Lua5.2/sources/lua/ \
                    $(LOCAL_PATH)/../../../Box2D/sources/Box2D_v2.3.0/Box2D/ \
                  	$(LOCAL_PATH)/../../../freetype/sources/ \
                  	$(LOCAL_PATH)/../../../freetype/sources/freetype-2.4.12/ \
                  	$(LOCAL_PATH)/../../../freetype/sources/freetype-2.4.12/include/ \
                  	$(LOCAL_PATH)/.

LOCAL_CFLAGS += -O3

LOCAL_STATIC_LIBRARIES := libpng libxml2 liblua libbox2d libfreetype libflmml libcocosdenshion libcocos2dwrapper

include $(BUILD_STATIC_LIBRARY)
