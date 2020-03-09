// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: google/cloud/texttospeech/v1beta1/cloud_tts.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import <stdatomic.h>

#import "google/cloud/texttospeech/v1beta1/CloudTts.pbobjc.h"
#import "google/api/Annotations.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - CloudTtsRoot

@implementation CloudTtsRoot

+ (GPBExtensionRegistry*)extensionRegistry {
  // This is called by +initialize so there is no need to worry
  // about thread safety and initialization of registry.
  static GPBExtensionRegistry* registry = nil;
  if (!registry) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    registry = [[GPBExtensionRegistry alloc] init];
    // Merge in the imports (direct or indirect) that defined extensions.
    [registry addExtensions:[AnnotationsRoot extensionRegistry]];
  }
  return registry;
}

@end

#pragma mark - CloudTtsRoot_FileDescriptor

static GPBFileDescriptor *CloudTtsRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"google.cloud.texttospeech.v1beta1"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - Enum SsmlVoiceGender

GPBEnumDescriptor *SsmlVoiceGender_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "SsmlVoiceGenderUnspecified\000Male\000Female\000N"
        "eutral\000";
    static const int32_t values[] = {
        SsmlVoiceGender_SsmlVoiceGenderUnspecified,
        SsmlVoiceGender_Male,
        SsmlVoiceGender_Female,
        SsmlVoiceGender_Neutral,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(SsmlVoiceGender)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:SsmlVoiceGender_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL SsmlVoiceGender_IsValidValue(int32_t value__) {
  switch (value__) {
    case SsmlVoiceGender_SsmlVoiceGenderUnspecified:
    case SsmlVoiceGender_Male:
    case SsmlVoiceGender_Female:
    case SsmlVoiceGender_Neutral:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - Enum AudioEncoding

GPBEnumDescriptor *AudioEncoding_EnumDescriptor(void) {
  static _Atomic(GPBEnumDescriptor*) descriptor = nil;
  if (!descriptor) {
    static const char *valueNames =
        "AudioEncodingUnspecified\000Linear16\000Mp3\000Og"
        "gOpus\000";
    static const int32_t values[] = {
        AudioEncoding_AudioEncodingUnspecified,
        AudioEncoding_Linear16,
        AudioEncoding_Mp3,
        AudioEncoding_OggOpus,
    };
    GPBEnumDescriptor *worker =
        [GPBEnumDescriptor allocDescriptorForName:GPBNSStringifySymbol(AudioEncoding)
                                       valueNames:valueNames
                                           values:values
                                            count:(uint32_t)(sizeof(values) / sizeof(int32_t))
                                     enumVerifier:AudioEncoding_IsValidValue];
    GPBEnumDescriptor *expected = nil;
    if (!atomic_compare_exchange_strong(&descriptor, &expected, worker)) {
      [worker release];
    }
  }
  return descriptor;
}

BOOL AudioEncoding_IsValidValue(int32_t value__) {
  switch (value__) {
    case AudioEncoding_AudioEncodingUnspecified:
    case AudioEncoding_Linear16:
    case AudioEncoding_Mp3:
    case AudioEncoding_OggOpus:
      return YES;
    default:
      return NO;
  }
}

#pragma mark - ListVoicesRequest

@implementation ListVoicesRequest

@dynamic languageCode;

typedef struct ListVoicesRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *languageCode;
} ListVoicesRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "languageCode",
        .dataTypeSpecific.className = NULL,
        .number = ListVoicesRequest_FieldNumber_LanguageCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(ListVoicesRequest__storage_, languageCode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ListVoicesRequest class]
                                     rootClass:[CloudTtsRoot class]
                                          file:CloudTtsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ListVoicesRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - ListVoicesResponse

@implementation ListVoicesResponse

@dynamic voicesArray, voicesArray_Count;

typedef struct ListVoicesResponse__storage_ {
  uint32_t _has_storage_[1];
  NSMutableArray *voicesArray;
} ListVoicesResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "voicesArray",
        .dataTypeSpecific.className = GPBStringifySymbol(Voice),
        .number = ListVoicesResponse_FieldNumber_VoicesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(ListVoicesResponse__storage_, voicesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[ListVoicesResponse class]
                                     rootClass:[CloudTtsRoot class]
                                          file:CloudTtsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(ListVoicesResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - Voice

@implementation Voice

@dynamic languageCodesArray, languageCodesArray_Count;
@dynamic name;
@dynamic ssmlGender;
@dynamic naturalSampleRateHertz;

typedef struct Voice__storage_ {
  uint32_t _has_storage_[1];
  SsmlVoiceGender ssmlGender;
  int32_t naturalSampleRateHertz;
  NSMutableArray *languageCodesArray;
  NSString *name;
} Voice__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "languageCodesArray",
        .dataTypeSpecific.className = NULL,
        .number = Voice_FieldNumber_LanguageCodesArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(Voice__storage_, languageCodesArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = Voice_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(Voice__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "ssmlGender",
        .dataTypeSpecific.enumDescFunc = SsmlVoiceGender_EnumDescriptor,
        .number = Voice_FieldNumber_SsmlGender,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(Voice__storage_, ssmlGender),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "naturalSampleRateHertz",
        .dataTypeSpecific.className = NULL,
        .number = Voice_FieldNumber_NaturalSampleRateHertz,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(Voice__storage_, naturalSampleRateHertz),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[Voice class]
                                     rootClass:[CloudTtsRoot class]
                                          file:CloudTtsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(Voice__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t Voice_SsmlGender_RawValue(Voice *message) {
  GPBDescriptor *descriptor = [Voice descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Voice_FieldNumber_SsmlGender];
  return GPBGetMessageInt32Field(message, field);
}

void SetVoice_SsmlGender_RawValue(Voice *message, int32_t value) {
  GPBDescriptor *descriptor = [Voice descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:Voice_FieldNumber_SsmlGender];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - SynthesizeSpeechRequest

@implementation SynthesizeSpeechRequest

@dynamic hasInput, input;
@dynamic hasVoice, voice;
@dynamic hasAudioConfig, audioConfig;

typedef struct SynthesizeSpeechRequest__storage_ {
  uint32_t _has_storage_[1];
  SynthesisInput *input;
  VoiceSelectionParams *voice;
  AudioConfig *audioConfig;
} SynthesizeSpeechRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "input",
        .dataTypeSpecific.className = GPBStringifySymbol(SynthesisInput),
        .number = SynthesizeSpeechRequest_FieldNumber_Input,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SynthesizeSpeechRequest__storage_, input),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "voice",
        .dataTypeSpecific.className = GPBStringifySymbol(VoiceSelectionParams),
        .number = SynthesizeSpeechRequest_FieldNumber_Voice,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SynthesizeSpeechRequest__storage_, voice),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "audioConfig",
        .dataTypeSpecific.className = GPBStringifySymbol(AudioConfig),
        .number = SynthesizeSpeechRequest_FieldNumber_AudioConfig,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(SynthesizeSpeechRequest__storage_, audioConfig),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SynthesizeSpeechRequest class]
                                     rootClass:[CloudTtsRoot class]
                                          file:CloudTtsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SynthesizeSpeechRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - SynthesisInput

@implementation SynthesisInput

@dynamic inputSourceOneOfCase;
@dynamic text;
@dynamic ssml;

typedef struct SynthesisInput__storage_ {
  uint32_t _has_storage_[2];
  NSString *text;
  NSString *ssml;
} SynthesisInput__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "text",
        .dataTypeSpecific.className = NULL,
        .number = SynthesisInput_FieldNumber_Text,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(SynthesisInput__storage_, text),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "ssml",
        .dataTypeSpecific.className = NULL,
        .number = SynthesisInput_FieldNumber_Ssml,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(SynthesisInput__storage_, ssml),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SynthesisInput class]
                                     rootClass:[CloudTtsRoot class]
                                          file:CloudTtsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SynthesisInput__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "inputSource",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void SynthesisInput_ClearInputSourceOneOfCase(SynthesisInput *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - VoiceSelectionParams

@implementation VoiceSelectionParams

@dynamic languageCode;
@dynamic name;
@dynamic ssmlGender;

typedef struct VoiceSelectionParams__storage_ {
  uint32_t _has_storage_[1];
  SsmlVoiceGender ssmlGender;
  NSString *languageCode;
  NSString *name;
} VoiceSelectionParams__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "languageCode",
        .dataTypeSpecific.className = NULL,
        .number = VoiceSelectionParams_FieldNumber_LanguageCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(VoiceSelectionParams__storage_, languageCode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = VoiceSelectionParams_FieldNumber_Name,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(VoiceSelectionParams__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "ssmlGender",
        .dataTypeSpecific.enumDescFunc = SsmlVoiceGender_EnumDescriptor,
        .number = VoiceSelectionParams_FieldNumber_SsmlGender,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(VoiceSelectionParams__storage_, ssmlGender),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[VoiceSelectionParams class]
                                     rootClass:[CloudTtsRoot class]
                                          file:CloudTtsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(VoiceSelectionParams__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t VoiceSelectionParams_SsmlGender_RawValue(VoiceSelectionParams *message) {
  GPBDescriptor *descriptor = [VoiceSelectionParams descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:VoiceSelectionParams_FieldNumber_SsmlGender];
  return GPBGetMessageInt32Field(message, field);
}

void SetVoiceSelectionParams_SsmlGender_RawValue(VoiceSelectionParams *message, int32_t value) {
  GPBDescriptor *descriptor = [VoiceSelectionParams descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:VoiceSelectionParams_FieldNumber_SsmlGender];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - AudioConfig

@implementation AudioConfig

@dynamic audioEncoding;
@dynamic speakingRate;
@dynamic pitch;
@dynamic volumeGainDb;
@dynamic sampleRateHertz;
@dynamic effectsProfileIdArray, effectsProfileIdArray_Count;

typedef struct AudioConfig__storage_ {
  uint32_t _has_storage_[1];
  AudioEncoding audioEncoding;
  int32_t sampleRateHertz;
  NSMutableArray *effectsProfileIdArray;
  double speakingRate;
  double pitch;
  double volumeGainDb;
} AudioConfig__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "audioEncoding",
        .dataTypeSpecific.enumDescFunc = AudioEncoding_EnumDescriptor,
        .number = AudioConfig_FieldNumber_AudioEncoding,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(AudioConfig__storage_, audioEncoding),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "speakingRate",
        .dataTypeSpecific.className = NULL,
        .number = AudioConfig_FieldNumber_SpeakingRate,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(AudioConfig__storage_, speakingRate),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "pitch",
        .dataTypeSpecific.className = NULL,
        .number = AudioConfig_FieldNumber_Pitch,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(AudioConfig__storage_, pitch),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "volumeGainDb",
        .dataTypeSpecific.className = NULL,
        .number = AudioConfig_FieldNumber_VolumeGainDb,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(AudioConfig__storage_, volumeGainDb),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeDouble,
      },
      {
        .name = "sampleRateHertz",
        .dataTypeSpecific.className = NULL,
        .number = AudioConfig_FieldNumber_SampleRateHertz,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(AudioConfig__storage_, sampleRateHertz),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "effectsProfileIdArray",
        .dataTypeSpecific.className = NULL,
        .number = AudioConfig_FieldNumber_EffectsProfileIdArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(AudioConfig__storage_, effectsProfileIdArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[AudioConfig class]
                                     rootClass:[CloudTtsRoot class]
                                          file:CloudTtsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(AudioConfig__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t AudioConfig_AudioEncoding_RawValue(AudioConfig *message) {
  GPBDescriptor *descriptor = [AudioConfig descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:AudioConfig_FieldNumber_AudioEncoding];
  return GPBGetMessageInt32Field(message, field);
}

void SetAudioConfig_AudioEncoding_RawValue(AudioConfig *message, int32_t value) {
  GPBDescriptor *descriptor = [AudioConfig descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:AudioConfig_FieldNumber_AudioEncoding];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - SynthesizeSpeechResponse

@implementation SynthesizeSpeechResponse

@dynamic audioContent;

typedef struct SynthesizeSpeechResponse__storage_ {
  uint32_t _has_storage_[1];
  NSData *audioContent;
} SynthesizeSpeechResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "audioContent",
        .dataTypeSpecific.className = NULL,
        .number = SynthesizeSpeechResponse_FieldNumber_AudioContent,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SynthesizeSpeechResponse__storage_, audioContent),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SynthesizeSpeechResponse class]
                                     rootClass:[CloudTtsRoot class]
                                          file:CloudTtsRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SynthesizeSpeechResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
