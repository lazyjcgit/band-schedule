// This is a generated file - do not edit.
//
// Generated from wear_aivs.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:typed_data';
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resultTypeDescriptor instead')
const ResultType$json = {
  '1': 'ResultType',
  '2': [
    {'1': 'START_LISTENING', '2': 0},
    {'1': 'END_LISTENING', '2': 1},
    {'1': 'RECOGNIZE_RESULT', '2': 2},
    {'1': 'STOP_CAPTURE', '2': 3},
    {'1': 'DIALOG_FINISH', '2': 4},
    {'1': 'SYSTEM_TRUNCATIONNOTIFICATION', '2': 5},
    {'1': 'ERROR_NETWORK', '2': 80},
    {'1': 'ERROR_AUTH', '2': 81},
    {'1': 'ERROR_TOO_MANY_DEVICES', '2': 82},
    {'1': 'ERROR_CONTENT_TOO_LONG', '2': 83},
    {'1': 'AIVS_ERROR_ASR_TIMEOUT', '2': 112},
    {'1': 'AIVS_ERROR_TTS_TIMEOUT', '2': 113},
    {'1': 'ERROR_CONNECT_TIMEOUT', '2': 84},
    {'1': 'ERROR_AUDIO_EMPTY', '2': 85},
    {'1': 'ERROR_SUBSCRIPTION_EXPIRED', '2': 86},
    {'1': 'ERROR_TODAY_FREE_COUNT_LIMIT', '2': 87},
    {'1': 'ERROR_ALL_FREE_COUNT_LIMIT', '2': 88},
    {'1': 'ERROR_SENSATIVE_CONTENT', '2': 89},
    {'1': 'ERROR_UNSUPPORT_LANGUAGE', '2': 90},
    {'1': 'ERROR_UNKNOWN', '2': 91},
    {'1': 'TEMPLATE_TOAST', '2': 256},
    {'1': 'TEMPLATE_GENERAL', '2': 257},
    {'1': 'TEMPLATE_GENERAL2', '2': 258},
    {'1': 'TEMPLATE_WEATHER', '2': 259},
    {'1': 'TEMPLATE_PLAYINFO', '2': 260},
    {'1': 'TEMPLATE_LISTS', '2': 261},
    {'1': 'TEMPLATE_SWITCHPANEL', '2': 262},
    {'1': 'ALERTS_SETALERT', '2': 263},
    {'1': 'SPEECHSYNTHESIZER_SPEAK', '2': 264},
    {'1': 'SPEECHRECOGNIZER_EXPECTSPEECH', '2': 265},
    {'1': 'LAUNCHER_LAUNCHAPP', '2': 266},
    {'1': 'TEMPLATE_SWITCHPANELLIST', '2': 267},
    {'1': 'BRIGHTNESSCONTROLLER_ADJUSTBRIGHTNESS', '2': 268},
    {'1': 'SYSTEM_SETPROPERTY', '2': 269},
    {'1': 'APPLICATION_OPERATE', '2': 270},
    {'1': 'ALERTS_DELIVERALERTINTENTION', '2': 271},
    {'1': 'ALERTS_STOPALERT', '2': 272},
    {'1': 'PLAYBACKCONTROLLER', '2': 273},
    {'1': 'PLAYBACKCONTROLLER_STOP', '2': 274},
    {'1': 'PLAYBACKCONTROLLER_PLAY', '2': 275},
    {'1': 'PLAYBACKCONTROLLER_PAUSE', '2': 276},
    {'1': 'PLAYBACKCONTROLLER_NEXT', '2': 277},
    {'1': 'PLAYBACKCONTROLLER_PREV', '2': 278},
    {'1': 'PLAYBACKCONTROLLER_CONTINUEPLAYING', '2': 279},
    {'1': 'SPEAKER_SETMUTE', '2': 280},
    {'1': 'SPEAKER_SETVOLUME', '2': 281},
    {'1': 'SPEAKER_AJUSTVOLUME', '2': 282},
    {'1': 'TEMPLATE_DEVICELIST', '2': 283},
    {'1': 'EXECUTE_DEVICESKILL', '2': 284},
    {'1': 'SHOW_CONTACTS', '2': 285},
    {'1': 'MAKE_CALL', '2': 286},
    {'1': 'WEARABLE_CONTROLLER_SWITCH', '2': 287},
    {'1': 'WEARABLE_CONTROLLER_EXECUTE', '2': 288},
    {'1': 'WEARABLE_CONTROLLER_ACTION', '2': 294},
    {'1': 'LLM_LOADING_CARD', '2': 289},
    {'1': 'LLM_DECLARATION_CONTENT', '2': 290},
    {'1': 'LLM_ILLEGAL_CONTENT', '2': 291},
    {'1': 'LLM_TOAST_STREAM', '2': 292},
    {'1': 'LLM_FINISH_STREAM', '2': 293},
  ],
};

/// Descriptor for `ResultType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resultTypeDescriptor = $convert.base64Decode(
    'CgpSZXN1bHRUeXBlEhMKD1NUQVJUX0xJU1RFTklORxAAEhEKDUVORF9MSVNURU5JTkcQARIUCh'
    'BSRUNPR05JWkVfUkVTVUxUEAISEAoMU1RPUF9DQVBUVVJFEAMSEQoNRElBTE9HX0ZJTklTSBAE'
    'EiEKHVNZU1RFTV9UUlVOQ0FUSU9OTk9USUZJQ0FUSU9OEAUSEQoNRVJST1JfTkVUV09SSxBQEg'
    '4KCkVSUk9SX0FVVEgQURIaChZFUlJPUl9UT09fTUFOWV9ERVZJQ0VTEFISGgoWRVJST1JfQ09O'
    'VEVOVF9UT09fTE9ORxBTEhoKFkFJVlNfRVJST1JfQVNSX1RJTUVPVVQQcBIaChZBSVZTX0VSUk'
    '9SX1RUU19USU1FT1VUEHESGQoVRVJST1JfQ09OTkVDVF9USU1FT1VUEFQSFQoRRVJST1JfQVVE'
    'SU9fRU1QVFkQVRIeChpFUlJPUl9TVUJTQ1JJUFRJT05fRVhQSVJFRBBWEiAKHEVSUk9SX1RPRE'
    'FZX0ZSRUVfQ09VTlRfTElNSVQQVxIeChpFUlJPUl9BTExfRlJFRV9DT1VOVF9MSU1JVBBYEhsK'
    'F0VSUk9SX1NFTlNBVElWRV9DT05URU5UEFkSHAoYRVJST1JfVU5TVVBQT1JUX0xBTkdVQUdFEF'
    'oSEQoNRVJST1JfVU5LTk9XThBbEhMKDlRFTVBMQVRFX1RPQVNUEIACEhUKEFRFTVBMQVRFX0dF'
    'TkVSQUwQgQISFgoRVEVNUExBVEVfR0VORVJBTDIQggISFQoQVEVNUExBVEVfV0VBVEhFUhCDAh'
    'IWChFURU1QTEFURV9QTEFZSU5GTxCEAhITCg5URU1QTEFURV9MSVNUUxCFAhIZChRURU1QTEFU'
    'RV9TV0lUQ0hQQU5FTBCGAhIUCg9BTEVSVFNfU0VUQUxFUlQQhwISHAoXU1BFRUNIU1lOVEhFU0'
    'laRVJfU1BFQUsQiAISIgodU1BFRUNIUkVDT0dOSVpFUl9FWFBFQ1RTUEVFQ0gQiQISFwoSTEFV'
    'TkNIRVJfTEFVTkNIQVBQEIoCEh0KGFRFTVBMQVRFX1NXSVRDSFBBTkVMTElTVBCLAhIqCiVCUk'
    'lHSFRORVNTQ09OVFJPTExFUl9BREpVU1RCUklHSFRORVNTEIwCEhcKElNZU1RFTV9TRVRQUk9Q'
    'RVJUWRCNAhIYChNBUFBMSUNBVElPTl9PUEVSQVRFEI4CEiEKHEFMRVJUU19ERUxJVkVSQUxFUl'
    'RJTlRFTlRJT04QjwISFQoQQUxFUlRTX1NUT1BBTEVSVBCQAhIXChJQTEFZQkFDS0NPTlRST0xM'
    'RVIQkQISHAoXUExBWUJBQ0tDT05UUk9MTEVSX1NUT1AQkgISHAoXUExBWUJBQ0tDT05UUk9MTE'
    'VSX1BMQVkQkwISHQoYUExBWUJBQ0tDT05UUk9MTEVSX1BBVVNFEJQCEhwKF1BMQVlCQUNLQ09O'
    'VFJPTExFUl9ORVhUEJUCEhwKF1BMQVlCQUNLQ09OVFJPTExFUl9QUkVWEJYCEicKIlBMQVlCQU'
    'NLQ09OVFJPTExFUl9DT05USU5VRVBMQVlJTkcQlwISFAoPU1BFQUtFUl9TRVRNVVRFEJgCEhYK'
    'EVNQRUFLRVJfU0VUVk9MVU1FEJkCEhgKE1NQRUFLRVJfQUpVU1RWT0xVTUUQmgISGAoTVEVNUE'
    'xBVEVfREVWSUNFTElTVBCbAhIYChNFWEVDVVRFX0RFVklDRVNLSUxMEJwCEhIKDVNIT1dfQ09O'
    'VEFDVFMQnQISDgoJTUFLRV9DQUxMEJ4CEh8KGldFQVJBQkxFX0NPTlRST0xMRVJfU1dJVENIEJ'
    '8CEiAKG1dFQVJBQkxFX0NPTlRST0xMRVJfRVhFQ1VURRCgAhIfChpXRUFSQUJMRV9DT05UUk9M'
    'TEVSX0FDVElPThCmAhIVChBMTE1fTE9BRElOR19DQVJEEKECEhwKF0xMTV9ERUNMQVJBVElPTl'
    '9DT05URU5UEKICEhgKE0xMTV9JTExFR0FMX0NPTlRFTlQQowISFQoQTExNX1RPQVNUX1NUUkVB'
    'TRCkAhIWChFMTE1fRklOSVNIX1NUUkVBTRClAg==');

@$core.Deprecated('Use applictionOpDescriptor instead')
const ApplictionOp$json = {
  '1': 'ApplictionOp',
  '2': [
    {'1': 'ApplictionOp_UNKNOWN', '2': -1},
    {'1': 'ApplictionOp_OPEN', '2': 0},
    {'1': 'ApplictionOp_INSTALL', '2': 1},
    {'1': 'ApplictionOp_UNINSTALL', '2': 2},
    {'1': 'ApplictionOp_CLOSE', '2': 3},
    {'1': 'ApplictionOp_SEARCH', '2': 4},
  ],
};

/// Descriptor for `ApplictionOp`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List applictionOpDescriptor = $convert.base64Decode(
    'CgxBcHBsaWN0aW9uT3ASIQoUQXBwbGljdGlvbk9wX1VOS05PV04Q////////////ARIVChFBcH'
    'BsaWN0aW9uT3BfT1BFThAAEhgKFEFwcGxpY3Rpb25PcF9JTlNUQUxMEAESGgoWQXBwbGljdGlv'
    'bk9wX1VOSU5TVEFMTBACEhYKEkFwcGxpY3Rpb25PcF9DTE9TRRADEhcKE0FwcGxpY3Rpb25PcF'
    '9TRUFSQ0gQBA==');

@$core.Deprecated('Use playInfoTypeDescriptor instead')
const PlayInfoType$json = {
  '1': 'PlayInfoType',
  '2': [
    {'1': 'PIT_UNKNOWN', '2': -1},
    {'1': 'JOKE', '2': 0},
    {'1': 'POEM', '2': 1},
    {'1': 'MUSIC', '2': 2},
    {'1': 'STATION', '2': 3},
    {'1': 'VOICE_NEWS', '2': 4},
    {'1': 'SOUND', '2': 5},
    {'1': 'TRANSLATION', '2': 6},
  ],
};

/// Descriptor for `PlayInfoType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List playInfoTypeDescriptor = $convert.base64Decode(
    'CgxQbGF5SW5mb1R5cGUSGAoLUElUX1VOS05PV04Q////////////ARIICgRKT0tFEAASCAoEUE'
    '9FTRABEgkKBU1VU0lDEAISCwoHU1RBVElPThADEg4KClZPSUNFX05FV1MQBBIJCgVTT1VORBAF'
    'Eg8KC1RSQU5TTEFUSU9OEAY=');

@$core.Deprecated('Use switchPanelTypeDescriptor instead')
const SwitchPanelType$json = {
  '1': 'SwitchPanelType',
  '2': [
    {'1': 'SwitchPanelType_UNKNOWN', '2': -1},
    {'1': 'DEFAULT', '2': 0},
    {'1': 'COUNTDOWN', '2': 1},
  ],
};

/// Descriptor for `SwitchPanelType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List switchPanelTypeDescriptor = $convert.base64Decode(
    'Cg9Td2l0Y2hQYW5lbFR5cGUSJAoXU3dpdGNoUGFuZWxUeXBlX1VOS05PV04Q////////////AR'
    'ILCgdERUZBVUxUEAASDQoJQ09VTlRET1dOEAE=');

@$core.Deprecated('Use alertTypeDescriptor instead')
const AlertType$json = {
  '1': 'AlertType',
  '2': [
    {'1': 'AlertType_UNKNOWN', '2': -1},
    {'1': 'ALARM', '2': 0},
    {'1': 'REMINDER', '2': 1},
    {'1': 'TIMER', '2': 2},
  ],
};

/// Descriptor for `AlertType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alertTypeDescriptor = $convert.base64Decode(
    'CglBbGVydFR5cGUSHgoRQWxlcnRUeXBlX1VOS05PV04Q////////////ARIJCgVBTEFSTRAAEg'
    'wKCFJFTUlOREVSEAESCQoFVElNRVIQAg==');

@$core.Deprecated('Use alertCircleTypeDescriptor instead')
const AlertCircleType$json = {
  '1': 'AlertCircleType',
  '2': [
    {'1': 'AlertCircleType_UNKNOWN', '2': -1},
    {'1': 'ONCE', '2': 0},
    {'1': 'EVERYDAY', '2': 1},
    {'1': 'WORKDAY', '2': 2},
    {'1': 'MONDAY_TO_FRIDAY', '2': 3},
    {'1': 'HOLIDAY', '2': 4},
    {'1': 'WEEKEND', '2': 5},
    {'1': 'WEEKLY', '2': 6},
    {'1': 'MONTHLY', '2': 7},
    {'1': 'YEARLY', '2': 8},
  ],
};

/// Descriptor for `AlertCircleType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alertCircleTypeDescriptor = $convert.base64Decode(
    'Cg9BbGVydENpcmNsZVR5cGUSJAoXQWxlcnRDaXJjbGVUeXBlX1VOS05PV04Q////////////AR'
    'IICgRPTkNFEAASDAoIRVZFUllEQVkQARILCgdXT1JLREFZEAISFAoQTU9OREFZX1RPX0ZSSURB'
    'WRADEgsKB0hPTElEQVkQBBILCgdXRUVLRU5EEAUSCgoGV0VFS0xZEAYSCwoHTU9OVEhMWRAHEg'
    'oKBllFQVJMWRAI');

@$core.Deprecated('Use alertOperationDescriptor instead')
const AlertOperation$json = {
  '1': 'AlertOperation',
  '2': [
    {'1': 'AlertOperation_UNKNOWN', '2': -1},
    {'1': 'OPEN', '2': 0},
    {'1': 'CLOSE', '2': 1},
    {'1': 'PAUSE', '2': 2},
    {'1': 'PROCEED', '2': 3},
    {'1': 'QUERY', '2': 4},
    {'1': 'DELETE', '2': 5},
  ],
};

/// Descriptor for `AlertOperation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alertOperationDescriptor = $convert.base64Decode(
    'Cg5BbGVydE9wZXJhdGlvbhIjChZBbGVydE9wZXJhdGlvbl9VTktOT1dOEP///////////wESCA'
    'oET1BFThAAEgkKBUNMT1NFEAESCQoFUEFVU0UQAhILCgdQUk9DRUVEEAMSCQoFUVVFUlkQBBIK'
    'CgZERUxFVEUQBQ==');

@$core.Deprecated('Use alertFilterTypeDescriptor instead')
const AlertFilterType$json = {
  '1': 'AlertFilterType',
  '2': [
    {'1': 'ALERTFILTER_UNKNOWN', '2': -1},
    {'1': 'ALERTFILTER_RECENTLY_SET', '2': 0},
    {'1': 'ALERTFILTER_RECENTLY_CALL', '2': 1},
    {'1': 'ALERTFILTER_ON_STATUS', '2': 2},
    {'1': 'ALERTFILTER_OFF_STATUS', '2': 3},
  ],
};

/// Descriptor for `AlertFilterType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alertFilterTypeDescriptor = $convert.base64Decode(
    'Cg9BbGVydEZpbHRlclR5cGUSIAoTQUxFUlRGSUxURVJfVU5LTk9XThD///////////8BEhwKGE'
    'FMRVJURklMVEVSX1JFQ0VOVExZX1NFVBAAEh0KGUFMRVJURklMVEVSX1JFQ0VOVExZX0NBTEwQ'
    'ARIZChVBTEVSVEZJTFRFUl9PTl9TVEFUVVMQAhIaChZBTEVSVEZJTFRFUl9PRkZfU1RBVFVTEA'
    'M=');

@$core.Deprecated('Use alertTimeTypeDescriptor instead')
const AlertTimeType$json = {
  '1': 'AlertTimeType',
  '2': [
    {'1': 'ALERTTIME_UNKNOWN', '2': -1},
    {'1': 'ALERTTIME_DATETIME', '2': 0},
    {'1': 'ALERTTIME_DURATION', '2': 1},
    {'1': 'ALERTTIME_OFFSET', '2': 2},
    {'1': 'ALERTTIME_INDETER_DATETIME', '2': 3},
  ],
};

/// Descriptor for `AlertTimeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alertTimeTypeDescriptor = $convert.base64Decode(
    'Cg1BbGVydFRpbWVUeXBlEh4KEUFMRVJUVElNRV9VTktOT1dOEP///////////wESFgoSQUxFUl'
    'RUSU1FX0RBVEVUSU1FEAASFgoSQUxFUlRUSU1FX0RVUkFUSU9OEAESFAoQQUxFUlRUSU1FX09G'
    'RlNFVBACEh4KGkFMRVJUVElNRV9JTkRFVEVSX0RBVEVUSU1FEAM=');

@$core.Deprecated('Use mediaErrorTypeDescriptor instead')
const MediaErrorType$json = {
  '1': 'MediaErrorType',
  '2': [
    {'1': 'Media_ERROR_OK', '2': 0},
    {'1': 'Media_ERROR_UNSUPPORT_SYSTEM', '2': 1},
    {'1': 'Media_ERROR_NO_PERMISSION', '2': 2},
    {'1': 'Media_ERROR_NO_MUSIC', '2': 3},
    {'1': 'Media_ERROR_ALREADY_PLAYING_ON_PLAY', '2': 4},
    {'1': 'Media_ERROR_ALREADY_PAUSED_ON_PAUSE', '2': 5},
    {'1': 'Media_ERROR_ALREADY_MAX_ON_RAISE_VOLUME', '2': 6},
    {'1': 'Media_ERROR_ALREADY_MIN_ON_LOWER_VOLUME', '2': 7},
    {'1': 'Media_ERROR_ALREADY_PAUSED_ON_ADJUST_VOLUME', '2': 8},
    {'1': 'Media_ERROR_ALREADY_PAUSED_ON_SET_VOLUME', '2': 9},
    {'1': 'Media_ERROR_ALREADY_PAUSED_ON_SET_MUTE', '2': 10},
  ],
};

/// Descriptor for `MediaErrorType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mediaErrorTypeDescriptor = $convert.base64Decode(
    'Cg5NZWRpYUVycm9yVHlwZRISCg5NZWRpYV9FUlJPUl9PSxAAEiAKHE1lZGlhX0VSUk9SX1VOU1'
    'VQUE9SVF9TWVNURU0QARIdChlNZWRpYV9FUlJPUl9OT19QRVJNSVNTSU9OEAISGAoUTWVkaWFf'
    'RVJST1JfTk9fTVVTSUMQAxInCiNNZWRpYV9FUlJPUl9BTFJFQURZX1BMQVlJTkdfT05fUExBWR'
    'AEEicKI01lZGlhX0VSUk9SX0FMUkVBRFlfUEFVU0VEX09OX1BBVVNFEAUSKwonTWVkaWFfRVJS'
    'T1JfQUxSRUFEWV9NQVhfT05fUkFJU0VfVk9MVU1FEAYSKwonTWVkaWFfRVJST1JfQUxSRUFEWV'
    '9NSU5fT05fTE9XRVJfVk9MVU1FEAcSLworTWVkaWFfRVJST1JfQUxSRUFEWV9QQVVTRURfT05f'
    'QURKVVNUX1ZPTFVNRRAIEiwKKE1lZGlhX0VSUk9SX0FMUkVBRFlfUEFVU0VEX09OX1NFVF9WT0'
    'xVTUUQCRIqCiZNZWRpYV9FUlJPUl9BTFJFQURZX1BBVVNFRF9PTl9TRVRfTVVURRAK');

@$core.Deprecated('Use speakerVolumeTypeDescriptor instead')
const SpeakerVolumeType$json = {
  '1': 'SpeakerVolumeType',
  '2': [
    {'1': 'Speaker_VOLUME_UNKNOWN', '2': -1},
    {'1': 'Speaker_VOLUME_MEDIA', '2': 0},
    {'1': 'Speaker_VOLUME_RING', '2': 1},
    {'1': 'Speaker_VOLUME_NOTIFICATION', '2': 2},
    {'1': 'Speaker_VOLUME_VOICE_ASSISTANT', '2': 3},
    {'1': 'Speaker_VOLUME_ALARM', '2': 4},
  ],
};

/// Descriptor for `SpeakerVolumeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List speakerVolumeTypeDescriptor = $convert.base64Decode(
    'ChFTcGVha2VyVm9sdW1lVHlwZRIjChZTcGVha2VyX1ZPTFVNRV9VTktOT1dOEP///////////w'
    'ESGAoUU3BlYWtlcl9WT0xVTUVfTUVESUEQABIXChNTcGVha2VyX1ZPTFVNRV9SSU5HEAESHwob'
    'U3BlYWtlcl9WT0xVTUVfTk9USUZJQ0FUSU9OEAISIgoeU3BlYWtlcl9WT0xVTUVfVk9JQ0VfQV'
    'NTSVNUQU5UEAMSGAoUU3BlYWtlcl9WT0xVTUVfQUxBUk0QBA==');

@$core.Deprecated('Use speakerUnitDefDescriptor instead')
const SpeakerUnitDef$json = {
  '1': 'SpeakerUnitDef',
  '2': [
    {'1': 'Speaker_UNIT_UNKNOWN', '2': -1},
    {'1': 'Speaker_UNIT_PERCENT', '2': 0},
    {'1': 'Speaker_UNIT_ABSOLUTE', '2': 1},
  ],
};

/// Descriptor for `SpeakerUnitDef`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List speakerUnitDefDescriptor = $convert.base64Decode(
    'Cg5TcGVha2VyVW5pdERlZhIhChRTcGVha2VyX1VOSVRfVU5LTk9XThD///////////8BEhgKFF'
    'NwZWFrZXJfVU5JVF9QRVJDRU5UEAASGQoVU3BlYWtlcl9VTklUX0FCU09MVVRFEAE=');

@$core.Deprecated('Use aivsDescriptor instead')
const Aivs$json = {
  '1': 'Aivs',
  '2': [
    {
      '1': 'instruction_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.AivsInstruction.List',
      '9': 0,
      '10': 'instructionList'
    },
    {
      '1': 'aivs_config',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.AivsConfig',
      '9': 0,
      '10': 'aivsConfig'
    },
    {
      '1': 'image_config',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.MediaConfig',
      '9': 0,
      '10': 'imageConfig'
    },
    {
      '1': 'multi_model',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.MultiModal',
      '9': 0,
      '10': 'multiModel'
    },
    {
      '1': 'aivs_status',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.AivsStatus',
      '9': 0,
      '10': 'aivsStatus'
    },
    {
      '1': 'aivs_error',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.AivsError',
      '9': 0,
      '10': 'aivsError'
    },
    {
      '1': 'aflash_supported_language',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.AFlash.SupportedLanguage',
      '9': 0,
      '10': 'aflashSupportedLanguage'
    },
    {
      '1': 'aflash_confirm_result',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.AFlash.ConfirmResult',
      '9': 0,
      '10': 'aflashConfirmResult'
    },
    {
      '1': 'llm_image_request',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.LLM.IssueImage.Request',
      '9': 0,
      '10': 'llmImageRequest'
    },
    {
      '1': 'llm_image_response',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.LLM.IssueImage.Response',
      '9': 0,
      '10': 'llmImageResponse'
    },
  ],
  '4': [Aivs_AivsID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use aivsDescriptor instead')
const Aivs_AivsID$json = {
  '1': 'AivsID',
  '2': [
    {'1': 'SYNC_INSTRUCTION_LIST', '2': 0},
    {'1': 'GET_CONFIG', '2': 1},
    {'1': 'SET_CONFIG', '2': 2},
    {'1': 'GET_MEDIA_CONFIG', '2': 3},
    {'1': 'REQUEST_MULTI_MODAL', '2': 4},
    {'1': 'SYNC_AIVS_STATUS', '2': 5},
    {'1': 'SYNC_AIVS_ERROR', '2': 6},
    {'1': 'GET_AFLASH_SUPPORTED_LANGUAGE', '2': 7},
    {'1': 'REPLY_AFLASH_CONFIRM_RESULT', '2': 8},
    {'1': 'LLM_ISSUE_IMAGE', '2': 9},
  ],
};

/// Descriptor for `Aivs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aivsDescriptor = $convert.base64Decode(
    'CgRBaXZzEksKEGluc3RydWN0aW9uX2xpc3QYASABKAsyHi5wcm90b2NvbC5BaXZzSW5zdHJ1Y3'
    'Rpb24uTGlzdEgAUg9pbnN0cnVjdGlvbkxpc3QSNwoLYWl2c19jb25maWcYAiABKAsyFC5wcm90'
    'b2NvbC5BaXZzQ29uZmlnSABSCmFpdnNDb25maWcSOgoMaW1hZ2VfY29uZmlnGAMgASgLMhUucH'
    'JvdG9jb2wuTWVkaWFDb25maWdIAFILaW1hZ2VDb25maWcSNwoLbXVsdGlfbW9kZWwYBCABKAsy'
    'FC5wcm90b2NvbC5NdWx0aU1vZGFsSABSCm11bHRpTW9kZWwSNwoLYWl2c19zdGF0dXMYBSABKA'
    'syFC5wcm90b2NvbC5BaXZzU3RhdHVzSABSCmFpdnNTdGF0dXMSNAoKYWl2c19lcnJvchgGIAEo'
    'CzITLnByb3RvY29sLkFpdnNFcnJvckgAUglhaXZzRXJyb3ISYAoZYWZsYXNoX3N1cHBvcnRlZF'
    '9sYW5ndWFnZRgHIAEoCzIiLnByb3RvY29sLkFGbGFzaC5TdXBwb3J0ZWRMYW5ndWFnZUgAUhdh'
    'Zmxhc2hTdXBwb3J0ZWRMYW5ndWFnZRJUChVhZmxhc2hfY29uZmlybV9yZXN1bHQYCCABKAsyHi'
    '5wcm90b2NvbC5BRmxhc2guQ29uZmlybVJlc3VsdEgAUhNhZmxhc2hDb25maXJtUmVzdWx0Ek4K'
    'EWxsbV9pbWFnZV9yZXF1ZXN0GAkgASgLMiAucHJvdG9jb2wuTExNLklzc3VlSW1hZ2UuUmVxdW'
    'VzdEgAUg9sbG1JbWFnZVJlcXVlc3QSUQoSbGxtX2ltYWdlX3Jlc3BvbnNlGAogASgLMiEucHJv'
    'dG9jb2wuTExNLklzc3VlSW1hZ2UuUmVzcG9uc2VIAFIQbGxtSW1hZ2VSZXNwb25zZSL2AQoGQW'
    'l2c0lEEhkKFVNZTkNfSU5TVFJVQ1RJT05fTElTVBAAEg4KCkdFVF9DT05GSUcQARIOCgpTRVRf'
    'Q09ORklHEAISFAoQR0VUX01FRElBX0NPTkZJRxADEhcKE1JFUVVFU1RfTVVMVElfTU9EQUwQBB'
    'IUChBTWU5DX0FJVlNfU1RBVFVTEAUSEwoPU1lOQ19BSVZTX0VSUk9SEAYSIQodR0VUX0FGTEFT'
    'SF9TVVBQT1JURURfTEFOR1VBR0UQBxIfChtSRVBMWV9BRkxBU0hfQ09ORklSTV9SRVNVTFQQCB'
    'ITCg9MTE1fSVNTVUVfSU1BR0UQCUIJCgdwYXlsb2Fk');

@$core.Deprecated('Use aivsConfigDescriptor instead')
const AivsConfig$json = {
  '1': 'AivsConfig',
  '2': [
    {'1': 'enable_tts', '3': 1, '4': 2, '5': 8, '10': 'enableTts'},
  ],
};

/// Descriptor for `AivsConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aivsConfigDescriptor = $convert.base64Decode(
    'CgpBaXZzQ29uZmlnEh0KCmVuYWJsZV90dHMYASACKAhSCWVuYWJsZVR0cw==');

@$core.Deprecated('Use aivsInstructionDescriptor instead')
const AivsInstruction$json = {
  '1': 'AivsInstruction',
  '2': [
    {
      '1': 'result_type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ResultType',
      '10': 'resultType'
    },
    {'1': 'session_id', '3': 13, '4': 2, '5': 13, '10': 'sessionId'},
    {
      '1': 'recognize_result',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.SpeechRecognizeResult',
      '10': 'recognizeResult'
    },
    {
      '1': 'template_toast',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.TemplateToast',
      '10': 'templateToast'
    },
    {
      '1': 'template_general',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.TemplateGeneral',
      '10': 'templateGeneral'
    },
    {
      '1': 'template_general2',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.TemplateGeneral2',
      '10': 'templateGeneral2'
    },
    {
      '1': 'template_weather',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.TemplateWeather',
      '10': 'templateWeather'
    },
    {
      '1': 'template_playinfo',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.TemplatePlayInfo',
      '10': 'templatePlayinfo'
    },
    {
      '1': 'template_lists',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.TemplateLists',
      '10': 'templateLists'
    },
    {
      '1': 'template_switchpanel',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.TemplateSwitchPanel',
      '10': 'templateSwitchpanel'
    },
    {
      '1': 'alerts_setalert',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertsSetAlert',
      '10': 'alertsSetalert'
    },
    {
      '1': 'speechsynthesizer_speak',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.SpeechSynthesizerSpeak',
      '10': 'speechsynthesizerSpeak'
    },
    {
      '1': 'laucher_lauchapp',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.LauncherLaunchApp',
      '10': 'laucherLauchapp'
    },
    {
      '1': 'template_switchpanellist',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.TemplateSwitchPanelList',
      '10': 'templateSwitchpanellist'
    },
    {
      '1': 'brightnesscontroller_ajustbrightness',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.BrightnessControllerAjustBrightness',
      '10': 'brightnesscontrollerAjustbrightness'
    },
    {
      '1': 'system_setproperty',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.SystemSetProperty',
      '10': 'systemSetproperty'
    },
    {
      '1': 'application_operate',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.ApplicationOperate',
      '10': 'applicationOperate'
    },
    {
      '1': 'alerts_deliveralertintention',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertsDeliverAlertIntention',
      '10': 'alertsDeliveralertintention'
    },
    {
      '1': 'media_errortype',
      '3': 20,
      '4': 1,
      '5': 14,
      '6': '.protocol.MediaErrorType',
      '10': 'mediaErrortype'
    },
    {
      '1': 'speaker_setmute',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.protocol.SpeakerSetMute',
      '10': 'speakerSetmute'
    },
    {
      '1': 'speaker_setvolume',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.protocol.SpeakerSetVolume',
      '10': 'speakerSetvolume'
    },
    {
      '1': 'speaker_ajustvolume',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.protocol.SpeakerAjustVolume',
      '10': 'speakerAjustvolume'
    },
    {
      '1': 'template_devicelist',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.protocol.TemplateDeviceList',
      '10': 'templateDevicelist'
    },
    {
      '1': 'execute_deviceskill',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.protocol.ExecuteDeviceSkill',
      '10': 'executeDeviceskill'
    },
    {
      '1': 'show_contacts',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.protocol.ShowContacts',
      '10': 'showContacts'
    },
    {
      '1': 'contact_data',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.protocol.ShowContacts.ContactData',
      '10': 'contactData'
    },
    {
      '1': 'wearable_controller_switch',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.protocol.WearableController.Switch',
      '10': 'wearableControllerSwitch'
    },
    {
      '1': 'wearable_controller_execute',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.protocol.WearableController.Execute',
      '10': 'wearableControllerExecute'
    },
    {
      '1': 'llm_loading_card',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.protocol.LLM.LoadingCard',
      '10': 'llmLoadingCard'
    },
    {
      '1': 'llm_declaration_content',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.protocol.LLM.DeclarationContent',
      '10': 'llmDeclarationContent'
    },
    {
      '1': 'llm_illegal_content',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.protocol.LLM.IllegalContent',
      '10': 'llmIllegalContent'
    },
    {
      '1': 'llm_toast_stream',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.protocol.LLM.ToastStream',
      '10': 'llmToastStream'
    },
    {
      '1': 'wearable_controller_action',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.protocol.WearableController.Action',
      '10': 'wearableControllerAction'
    },
  ],
  '3': [AivsInstruction_List$json],
};

@$core.Deprecated('Use aivsInstructionDescriptor instead')
const AivsInstruction_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AivsInstruction',
      '10': 'list'
    },
  ],
};

/// Descriptor for `AivsInstruction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aivsInstructionDescriptor = $convert.base64Decode(
    'Cg9BaXZzSW5zdHJ1Y3Rpb24SNQoLcmVzdWx0X3R5cGUYASACKA4yFC5wcm90b2NvbC5SZXN1bH'
    'RUeXBlUgpyZXN1bHRUeXBlEh0KCnNlc3Npb25faWQYDSACKA1SCXNlc3Npb25JZBJKChByZWNv'
    'Z25pemVfcmVzdWx0GAIgASgLMh8ucHJvdG9jb2wuU3BlZWNoUmVjb2duaXplUmVzdWx0Ug9yZW'
    'NvZ25pemVSZXN1bHQSPgoOdGVtcGxhdGVfdG9hc3QYAyABKAsyFy5wcm90b2NvbC5UZW1wbGF0'
    'ZVRvYXN0Ug10ZW1wbGF0ZVRvYXN0EkQKEHRlbXBsYXRlX2dlbmVyYWwYBCABKAsyGS5wcm90b2'
    'NvbC5UZW1wbGF0ZUdlbmVyYWxSD3RlbXBsYXRlR2VuZXJhbBJHChF0ZW1wbGF0ZV9nZW5lcmFs'
    'MhgFIAEoCzIaLnByb3RvY29sLlRlbXBsYXRlR2VuZXJhbDJSEHRlbXBsYXRlR2VuZXJhbDISRA'
    'oQdGVtcGxhdGVfd2VhdGhlchgGIAEoCzIZLnByb3RvY29sLlRlbXBsYXRlV2VhdGhlclIPdGVt'
    'cGxhdGVXZWF0aGVyEkcKEXRlbXBsYXRlX3BsYXlpbmZvGAcgASgLMhoucHJvdG9jb2wuVGVtcG'
    'xhdGVQbGF5SW5mb1IQdGVtcGxhdGVQbGF5aW5mbxI+Cg50ZW1wbGF0ZV9saXN0cxgIIAEoCzIX'
    'LnByb3RvY29sLlRlbXBsYXRlTGlzdHNSDXRlbXBsYXRlTGlzdHMSUAoUdGVtcGxhdGVfc3dpdG'
    'NocGFuZWwYCSABKAsyHS5wcm90b2NvbC5UZW1wbGF0ZVN3aXRjaFBhbmVsUhN0ZW1wbGF0ZVN3'
    'aXRjaHBhbmVsEkEKD2FsZXJ0c19zZXRhbGVydBgKIAEoCzIYLnByb3RvY29sLkFsZXJ0c1NldE'
    'FsZXJ0Ug5hbGVydHNTZXRhbGVydBJZChdzcGVlY2hzeW50aGVzaXplcl9zcGVhaxgLIAEoCzIg'
    'LnByb3RvY29sLlNwZWVjaFN5bnRoZXNpemVyU3BlYWtSFnNwZWVjaHN5bnRoZXNpemVyU3BlYW'
    'sSRgoQbGF1Y2hlcl9sYXVjaGFwcBgOIAEoCzIbLnByb3RvY29sLkxhdW5jaGVyTGF1bmNoQXBw'
    'Ug9sYXVjaGVyTGF1Y2hhcHASXAoYdGVtcGxhdGVfc3dpdGNocGFuZWxsaXN0GA8gASgLMiEucH'
    'JvdG9jb2wuVGVtcGxhdGVTd2l0Y2hQYW5lbExpc3RSF3RlbXBsYXRlU3dpdGNocGFuZWxsaXN0'
    'EoABCiRicmlnaHRuZXNzY29udHJvbGxlcl9hanVzdGJyaWdodG5lc3MYECABKAsyLS5wcm90b2'
    'NvbC5CcmlnaHRuZXNzQ29udHJvbGxlckFqdXN0QnJpZ2h0bmVzc1IjYnJpZ2h0bmVzc2NvbnRy'
    'b2xsZXJBanVzdGJyaWdodG5lc3MSSgoSc3lzdGVtX3NldHByb3BlcnR5GBEgASgLMhsucHJvdG'
    '9jb2wuU3lzdGVtU2V0UHJvcGVydHlSEXN5c3RlbVNldHByb3BlcnR5Ek0KE2FwcGxpY2F0aW9u'
    'X29wZXJhdGUYEiABKAsyHC5wcm90b2NvbC5BcHBsaWNhdGlvbk9wZXJhdGVSEmFwcGxpY2F0aW'
    '9uT3BlcmF0ZRJoChxhbGVydHNfZGVsaXZlcmFsZXJ0aW50ZW50aW9uGBMgASgLMiUucHJvdG9j'
    'b2wuQWxlcnRzRGVsaXZlckFsZXJ0SW50ZW50aW9uUhthbGVydHNEZWxpdmVyYWxlcnRpbnRlbn'
    'Rpb24SQQoPbWVkaWFfZXJyb3J0eXBlGBQgASgOMhgucHJvdG9jb2wuTWVkaWFFcnJvclR5cGVS'
    'Dm1lZGlhRXJyb3J0eXBlEkEKD3NwZWFrZXJfc2V0bXV0ZRgVIAEoCzIYLnByb3RvY29sLlNwZW'
    'FrZXJTZXRNdXRlUg5zcGVha2VyU2V0bXV0ZRJHChFzcGVha2VyX3NldHZvbHVtZRgWIAEoCzIa'
    'LnByb3RvY29sLlNwZWFrZXJTZXRWb2x1bWVSEHNwZWFrZXJTZXR2b2x1bWUSTQoTc3BlYWtlcl'
    '9hanVzdHZvbHVtZRgXIAEoCzIcLnByb3RvY29sLlNwZWFrZXJBanVzdFZvbHVtZVISc3BlYWtl'
    'ckFqdXN0dm9sdW1lEk0KE3RlbXBsYXRlX2RldmljZWxpc3QYGCABKAsyHC5wcm90b2NvbC5UZW'
    '1wbGF0ZURldmljZUxpc3RSEnRlbXBsYXRlRGV2aWNlbGlzdBJNChNleGVjdXRlX2RldmljZXNr'
    'aWxsGBkgASgLMhwucHJvdG9jb2wuRXhlY3V0ZURldmljZVNraWxsUhJleGVjdXRlRGV2aWNlc2'
    'tpbGwSOwoNc2hvd19jb250YWN0cxgaIAEoCzIWLnByb3RvY29sLlNob3dDb250YWN0c1IMc2hv'
    'd0NvbnRhY3RzEkUKDGNvbnRhY3RfZGF0YRgbIAEoCzIiLnByb3RvY29sLlNob3dDb250YWN0cy'
    '5Db250YWN0RGF0YVILY29udGFjdERhdGESYQoad2VhcmFibGVfY29udHJvbGxlcl9zd2l0Y2gY'
    'HCABKAsyIy5wcm90b2NvbC5XZWFyYWJsZUNvbnRyb2xsZXIuU3dpdGNoUhh3ZWFyYWJsZUNvbn'
    'Ryb2xsZXJTd2l0Y2gSZAobd2VhcmFibGVfY29udHJvbGxlcl9leGVjdXRlGB0gASgLMiQucHJv'
    'dG9jb2wuV2VhcmFibGVDb250cm9sbGVyLkV4ZWN1dGVSGXdlYXJhYmxlQ29udHJvbGxlckV4ZW'
    'N1dGUSQwoQbGxtX2xvYWRpbmdfY2FyZBgeIAEoCzIZLnByb3RvY29sLkxMTS5Mb2FkaW5nQ2Fy'
    'ZFIObGxtTG9hZGluZ0NhcmQSWAoXbGxtX2RlY2xhcmF0aW9uX2NvbnRlbnQYHyABKAsyIC5wcm'
    '90b2NvbC5MTE0uRGVjbGFyYXRpb25Db250ZW50UhVsbG1EZWNsYXJhdGlvbkNvbnRlbnQSTAoT'
    'bGxtX2lsbGVnYWxfY29udGVudBggIAEoCzIcLnByb3RvY29sLkxMTS5JbGxlZ2FsQ29udGVudF'
    'IRbGxtSWxsZWdhbENvbnRlbnQSQwoQbGxtX3RvYXN0X3N0cmVhbRghIAEoCzIZLnByb3RvY29s'
    'LkxMTS5Ub2FzdFN0cmVhbVIObGxtVG9hc3RTdHJlYW0SYQoad2VhcmFibGVfY29udHJvbGxlcl'
    '9hY3Rpb24YIiABKAsyIy5wcm90b2NvbC5XZWFyYWJsZUNvbnRyb2xsZXIuQWN0aW9uUhh3ZWFy'
    'YWJsZUNvbnRyb2xsZXJBY3Rpb24aNQoETGlzdBItCgRsaXN0GAEgAygLMhkucHJvdG9jb2wuQW'
    'l2c0luc3RydWN0aW9uUgRsaXN0');

@$core.Deprecated('Use speechRecognizeResultDescriptor instead')
const SpeechRecognizeResult$json = {
  '1': 'SpeechRecognizeResult',
  '2': [
    {'1': 'is_final', '3': 1, '4': 2, '5': 8, '10': 'isFinal'},
    {
      '1': 'results',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.SpeechRecognizeResultItem.List',
      '10': 'results'
    },
  ],
};

/// Descriptor for `SpeechRecognizeResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechRecognizeResultDescriptor = $convert.base64Decode(
    'ChVTcGVlY2hSZWNvZ25pemVSZXN1bHQSGQoIaXNfZmluYWwYASACKAhSB2lzRmluYWwSQgoHcm'
    'VzdWx0cxgCIAIoCzIoLnByb3RvY29sLlNwZWVjaFJlY29nbml6ZVJlc3VsdEl0ZW0uTGlzdFIH'
    'cmVzdWx0cw==');

@$core.Deprecated('Use templateToastDescriptor instead')
const TemplateToast$json = {
  '1': 'TemplateToast',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `TemplateToast`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateToastDescriptor =
    $convert.base64Decode('Cg1UZW1wbGF0ZVRvYXN0EhIKBHRleHQYASACKAlSBHRleHQ=');

@$core.Deprecated('Use templateGeneralDescriptor instead')
const TemplateGeneral$json = {
  '1': 'TemplateGeneral',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Title',
      '10': 'title'
    },
    {'1': 'text', '3': 2, '4': 2, '5': 9, '10': 'text'},
    {
      '1': 'results',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.AbstractItem.List',
      '10': 'results'
    },
    {
      '1': 'skill_description',
      '3': 4,
      '4': 2,
      '5': 9,
      '10': 'skillDescription'
    },
  ],
};

/// Descriptor for `TemplateGeneral`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateGeneralDescriptor = $convert.base64Decode(
    'Cg9UZW1wbGF0ZUdlbmVyYWwSJQoFdGl0bGUYASACKAsyDy5wcm90b2NvbC5UaXRsZVIFdGl0bG'
    'USEgoEdGV4dBgCIAIoCVIEdGV4dBI1CgdyZXN1bHRzGAMgASgLMhsucHJvdG9jb2wuQWJzdHJh'
    'Y3RJdGVtLkxpc3RSB3Jlc3VsdHMSKwoRc2tpbGxfZGVzY3JpcHRpb24YBCACKAlSEHNraWxsRG'
    'VzY3JpcHRpb24=');

@$core.Deprecated('Use templateGeneral2Descriptor instead')
const TemplateGeneral2$json = {
  '1': 'TemplateGeneral2',
  '2': [
    {
      '1': 'main_title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.RichText',
      '10': 'mainTitle'
    },
    {
      '1': 'sub_titles',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.RichText.List',
      '10': 'subTitles'
    },
    {
      '1': 'texts',
      '3': 3,
      '4': 2,
      '5': 11,
      '6': '.protocol.RichText.List',
      '10': 'texts'
    },
    {
      '1': 'skill_description',
      '3': 4,
      '4': 2,
      '5': 9,
      '10': 'skillDescription'
    },
  ],
};

/// Descriptor for `TemplateGeneral2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateGeneral2Descriptor = $convert.base64Decode(
    'ChBUZW1wbGF0ZUdlbmVyYWwyEjEKCm1haW5fdGl0bGUYASACKAsyEi5wcm90b2NvbC5SaWNoVG'
    'V4dFIJbWFpblRpdGxlEjYKCnN1Yl90aXRsZXMYAiACKAsyFy5wcm90b2NvbC5SaWNoVGV4dC5M'
    'aXN0UglzdWJUaXRsZXMSLQoFdGV4dHMYAyACKAsyFy5wcm90b2NvbC5SaWNoVGV4dC5MaXN0Ug'
    'V0ZXh0cxIrChFza2lsbF9kZXNjcmlwdGlvbhgEIAIoCVIQc2tpbGxEZXNjcmlwdGlvbg==');

@$core.Deprecated('Use templateWeatherDescriptor instead')
const TemplateWeather$json = {
  '1': 'TemplateWeather',
  '2': [
    {
      '1': 'weather',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.WeatherItem.List',
      '10': 'weather'
    },
    {
      '1': 'skill_description',
      '3': 2,
      '4': 2,
      '5': 9,
      '10': 'skillDescription'
    },
  ],
};

/// Descriptor for `TemplateWeather`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateWeatherDescriptor = $convert.base64Decode(
    'Cg9UZW1wbGF0ZVdlYXRoZXISNAoHd2VhdGhlchgBIAIoCzIaLnByb3RvY29sLldlYXRoZXJJdG'
    'VtLkxpc3RSB3dlYXRoZXISKwoRc2tpbGxfZGVzY3JpcHRpb24YAiACKAlSEHNraWxsRGVzY3Jp'
    'cHRpb24=');

@$core.Deprecated('Use templatePlayInfoDescriptor instead')
const TemplatePlayInfo$json = {
  '1': 'TemplatePlayInfo',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.PlayInfoItem.List',
      '10': 'items'
    },
    {
      '1': 'type',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.PlayInfoType',
      '10': 'type'
    },
    {
      '1': 'skill_description',
      '3': 3,
      '4': 2,
      '5': 9,
      '10': 'skillDescription'
    },
  ],
};

/// Descriptor for `TemplatePlayInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templatePlayInfoDescriptor = $convert.base64Decode(
    'ChBUZW1wbGF0ZVBsYXlJbmZvEjEKBWl0ZW1zGAEgAigLMhsucHJvdG9jb2wuUGxheUluZm9JdG'
    'VtLkxpc3RSBWl0ZW1zEioKBHR5cGUYAiACKA4yFi5wcm90b2NvbC5QbGF5SW5mb1R5cGVSBHR5'
    'cGUSKwoRc2tpbGxfZGVzY3JpcHRpb24YAyACKAlSEHNraWxsRGVzY3JpcHRpb24=');

@$core.Deprecated('Use templateListsDescriptor instead')
const TemplateLists$json = {
  '1': 'TemplateLists',
  '2': [
    {
      '1': 'skill_description',
      '3': 1,
      '4': 2,
      '5': 9,
      '10': 'skillDescription'
    },
    {
      '1': 'items',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.ListsItem.List',
      '10': 'items'
    },
    {
      '1': 'title',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Title',
      '10': 'title'
    },
  ],
};

/// Descriptor for `TemplateLists`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateListsDescriptor = $convert.base64Decode(
    'Cg1UZW1wbGF0ZUxpc3RzEisKEXNraWxsX2Rlc2NyaXB0aW9uGAEgAigJUhBza2lsbERlc2NyaX'
    'B0aW9uEi4KBWl0ZW1zGAIgAigLMhgucHJvdG9jb2wuTGlzdHNJdGVtLkxpc3RSBWl0ZW1zEiUK'
    'BXRpdGxlGAMgASgLMg8ucHJvdG9jb2wuVGl0bGVSBXRpdGxl');

@$core.Deprecated('Use templateSwitchPanelDescriptor instead')
const TemplateSwitchPanel$json = {
  '1': 'TemplateSwitchPanel',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Title',
      '10': 'title'
    },
    {
      '1': 'skill_description',
      '3': 2,
      '4': 2,
      '5': 9,
      '10': 'skillDescription'
    },
    {'1': 'status', '3': 3, '4': 2, '5': 9, '10': 'status'},
    {
      '1': 'type',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.protocol.SwitchPanelType',
      '10': 'type'
    },
  ],
};

/// Descriptor for `TemplateSwitchPanel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateSwitchPanelDescriptor = $convert.base64Decode(
    'ChNUZW1wbGF0ZVN3aXRjaFBhbmVsEiUKBXRpdGxlGAEgAigLMg8ucHJvdG9jb2wuVGl0bGVSBX'
    'RpdGxlEisKEXNraWxsX2Rlc2NyaXB0aW9uGAIgAigJUhBza2lsbERlc2NyaXB0aW9uEhYKBnN0'
    'YXR1cxgDIAIoCVIGc3RhdHVzEi0KBHR5cGUYBCABKA4yGS5wcm90b2NvbC5Td2l0Y2hQYW5lbF'
    'R5cGVSBHR5cGU=');

@$core.Deprecated('Use templateSwitchPanelListDescriptor instead')
const TemplateSwitchPanelList$json = {
  '1': 'TemplateSwitchPanelList',
  '2': [
    {
      '1': 'titles',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.SwitchItem.List',
      '10': 'titles'
    },
    {
      '1': 'skill_description',
      '3': 2,
      '4': 2,
      '5': 9,
      '10': 'skillDescription'
    },
    {
      '1': 'type',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.protocol.SwitchPanelType',
      '10': 'type'
    },
    {
      '1': 'items',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.SwitchItem.List',
      '10': 'items'
    },
  ],
};

/// Descriptor for `TemplateSwitchPanelList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateSwitchPanelListDescriptor = $convert.base64Decode(
    'ChdUZW1wbGF0ZVN3aXRjaFBhbmVsTGlzdBIxCgZ0aXRsZXMYASACKAsyGS5wcm90b2NvbC5Td2'
    'l0Y2hJdGVtLkxpc3RSBnRpdGxlcxIrChFza2lsbF9kZXNjcmlwdGlvbhgCIAIoCVIQc2tpbGxE'
    'ZXNjcmlwdGlvbhItCgR0eXBlGAMgASgOMhkucHJvdG9jb2wuU3dpdGNoUGFuZWxUeXBlUgR0eX'
    'BlEi8KBWl0ZW1zGAQgASgLMhkucHJvdG9jb2wuU3dpdGNoSXRlbS5MaXN0UgVpdGVtcw==');

@$core.Deprecated('Use switchItemDescriptor instead')
const SwitchItem$json = {
  '1': 'SwitchItem',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Title',
      '10': 'title'
    },
    {'1': 'status', '3': 2, '4': 2, '5': 9, '10': 'status'},
  ],
  '3': [SwitchItem_List$json],
};

@$core.Deprecated('Use switchItemDescriptor instead')
const SwitchItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.SwitchItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `SwitchItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List switchItemDescriptor = $convert.base64Decode(
    'CgpTd2l0Y2hJdGVtEiUKBXRpdGxlGAEgAigLMg8ucHJvdG9jb2wuVGl0bGVSBXRpdGxlEhYKBn'
    'N0YXR1cxgCIAIoCVIGc3RhdHVzGjAKBExpc3QSKAoEbGlzdBgBIAMoCzIULnByb3RvY29sLlN3'
    'aXRjaEl0ZW1SBGxpc3Q=');

@$core.Deprecated('Use alertsSetAlertDescriptor instead')
const AlertsSetAlert$json = {
  '1': 'AlertsSetAlert',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {
      '1': 'type',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.AlertType',
      '10': 'type'
    },
    {'1': 'datetime', '3': 3, '4': 2, '5': 9, '10': 'datetime'},
    {
      '1': 'circle',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.protocol.AlertCircleType',
      '10': 'circle'
    },
    {'1': 'circle_extra', '3': 5, '4': 2, '5': 9, '10': 'circleExtra'},
    {'1': 'offset', '3': 6, '4': 2, '5': 9, '10': 'offset'},
    {'1': 'event', '3': 7, '4': 2, '5': 9, '10': 'event'},
  ],
};

/// Descriptor for `AlertsSetAlert`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alertsSetAlertDescriptor = $convert.base64Decode(
    'Cg5BbGVydHNTZXRBbGVydBIOCgJpZBgBIAIoCVICaWQSJwoEdHlwZRgCIAIoDjITLnByb3RvY2'
    '9sLkFsZXJ0VHlwZVIEdHlwZRIaCghkYXRldGltZRgDIAIoCVIIZGF0ZXRpbWUSMQoGY2lyY2xl'
    'GAQgASgOMhkucHJvdG9jb2wuQWxlcnRDaXJjbGVUeXBlUgZjaXJjbGUSIQoMY2lyY2xlX2V4dH'
    'JhGAUgAigJUgtjaXJjbGVFeHRyYRIWCgZvZmZzZXQYBiACKAlSBm9mZnNldBIUCgVldmVudBgH'
    'IAIoCVIFZXZlbnQ=');

@$core.Deprecated('Use alertsDeliverAlertIntentionDescriptor instead')
const AlertsDeliverAlertIntention$json = {
  '1': 'AlertsDeliverAlertIntention',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.AlertType',
      '10': 'type'
    },
    {
      '1': 'operation',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.AlertOperation',
      '10': 'operation'
    },
    {'1': 'operate_all', '3': 3, '4': 2, '5': 8, '10': 'operateAll'},
    {
      '1': 'circle',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.protocol.AlertCircleType',
      '10': 'circle'
    },
    {'1': 'circle_extra', '3': 5, '4': 2, '5': 9, '10': 'circleExtra'},
    {'1': 'event', '3': 6, '4': 2, '5': 9, '10': 'event'},
    {
      '1': 'filter_type',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.protocol.AlertFilterType',
      '10': 'filterType'
    },
    {
      '1': 'time',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertTimeInfo',
      '10': 'time'
    },
  ],
};

/// Descriptor for `AlertsDeliverAlertIntention`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alertsDeliverAlertIntentionDescriptor = $convert.base64Decode(
    'ChtBbGVydHNEZWxpdmVyQWxlcnRJbnRlbnRpb24SJwoEdHlwZRgBIAIoDjITLnByb3RvY29sLk'
    'FsZXJ0VHlwZVIEdHlwZRI2CglvcGVyYXRpb24YAiACKA4yGC5wcm90b2NvbC5BbGVydE9wZXJh'
    'dGlvblIJb3BlcmF0aW9uEh8KC29wZXJhdGVfYWxsGAMgAigIUgpvcGVyYXRlQWxsEjEKBmNpcm'
    'NsZRgEIAEoDjIZLnByb3RvY29sLkFsZXJ0Q2lyY2xlVHlwZVIGY2lyY2xlEiEKDGNpcmNsZV9l'
    'eHRyYRgFIAIoCVILY2lyY2xlRXh0cmESFAoFZXZlbnQYBiACKAlSBWV2ZW50EjoKC2ZpbHRlcl'
    '90eXBlGAcgASgOMhkucHJvdG9jb2wuQWxlcnRGaWx0ZXJUeXBlUgpmaWx0ZXJUeXBlEisKBHRp'
    'bWUYCCABKAsyFy5wcm90b2NvbC5BbGVydFRpbWVJbmZvUgR0aW1l');

@$core.Deprecated('Use speechSynthesizerSpeakDescriptor instead')
const SpeechSynthesizerSpeak$json = {
  '1': 'SpeechSynthesizerSpeak',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `SpeechSynthesizerSpeak`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechSynthesizerSpeakDescriptor =
    $convert.base64Decode(
        'ChZTcGVlY2hTeW50aGVzaXplclNwZWFrEhIKBHRleHQYASACKAlSBHRleHQ=');

@$core.Deprecated('Use speechRecognizeResultItemDescriptor instead')
const SpeechRecognizeResultItem$json = {
  '1': 'SpeechRecognizeResultItem',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
  ],
  '3': [SpeechRecognizeResultItem_List$json],
};

@$core.Deprecated('Use speechRecognizeResultItemDescriptor instead')
const SpeechRecognizeResultItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.SpeechRecognizeResultItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `SpeechRecognizeResultItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speechRecognizeResultItemDescriptor = $convert.base64Decode(
    'ChlTcGVlY2hSZWNvZ25pemVSZXN1bHRJdGVtEhIKBHRleHQYASACKAlSBHRleHQaPwoETGlzdB'
    'I3CgRsaXN0GAEgAygLMiMucHJvdG9jb2wuU3BlZWNoUmVjb2duaXplUmVzdWx0SXRlbVIEbGlz'
    'dA==');

@$core.Deprecated('Use systemSetPropertyDescriptor instead')
const SystemSetProperty$json = {
  '1': 'SystemSetProperty',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 2, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `SystemSetProperty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemSetPropertyDescriptor = $convert.base64Decode(
    'ChFTeXN0ZW1TZXRQcm9wZXJ0eRISCgRuYW1lGAEgAigJUgRuYW1lEhQKBXZhbHVlGAIgAigJUg'
    'V2YWx1ZQ==');

@$core.Deprecated('Use launcherLaunchAppDescriptor instead')
const LauncherLaunchApp$json = {
  '1': 'LauncherLaunchApp',
  '2': [
    {
      '1': 'intent',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.AndroidIntent',
      '10': 'intent'
    },
  ],
};

/// Descriptor for `LauncherLaunchApp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List launcherLaunchAppDescriptor = $convert.base64Decode(
    'ChFMYXVuY2hlckxhdW5jaEFwcBIvCgZpbnRlbnQYASACKAsyFy5wcm90b2NvbC5BbmRyb2lkSW'
    '50ZW50UgZpbnRlbnQ=');

@$core.Deprecated('Use executeDeviceSkillDescriptor instead')
const ExecuteDeviceSkill$json = {
  '1': 'ExecuteDeviceSkill',
  '2': [
    {
      '1': 'intent',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.AndroidIntent',
      '10': 'intent'
    },
  ],
};

/// Descriptor for `ExecuteDeviceSkill`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeDeviceSkillDescriptor = $convert.base64Decode(
    'ChJFeGVjdXRlRGV2aWNlU2tpbGwSLwoGaW50ZW50GAEgAigLMhcucHJvdG9jb2wuQW5kcm9pZE'
    'ludGVudFIGaW50ZW50');

@$core.Deprecated('Use brightnessControllerAjustBrightnessDescriptor instead')
const BrightnessControllerAjustBrightness$json = {
  '1': 'BrightnessControllerAjustBrightness',
  '2': [
    {'1': 'brightness_delta', '3': 1, '4': 2, '5': 5, '10': 'brightnessDelta'},
  ],
};

/// Descriptor for `BrightnessControllerAjustBrightness`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List brightnessControllerAjustBrightnessDescriptor =
    $convert.base64Decode(
        'CiNCcmlnaHRuZXNzQ29udHJvbGxlckFqdXN0QnJpZ2h0bmVzcxIpChBicmlnaHRuZXNzX2RlbH'
        'RhGAEgAigFUg9icmlnaHRuZXNzRGVsdGE=');

@$core.Deprecated('Use applicationOperateDescriptor instead')
const ApplicationOperate$json = {
  '1': 'ApplicationOperate',
  '2': [
    {
      '1': 'operation',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ApplictionOp',
      '10': 'operation'
    },
    {'1': 'keyword', '3': 2, '4': 2, '5': 9, '10': 'keyword'},
    {'1': 'app_pkg_name', '3': 3, '4': 2, '5': 9, '10': 'appPkgName'},
  ],
};

/// Descriptor for `ApplicationOperate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationOperateDescriptor = $convert.base64Decode(
    'ChJBcHBsaWNhdGlvbk9wZXJhdGUSNAoJb3BlcmF0aW9uGAEgAigOMhYucHJvdG9jb2wuQXBwbG'
    'ljdGlvbk9wUglvcGVyYXRpb24SGAoHa2V5d29yZBgCIAIoCVIHa2V5d29yZBIgCgxhcHBfcGtn'
    'X25hbWUYAyACKAlSCmFwcFBrZ05hbWU=');

@$core.Deprecated('Use androidIntentDescriptor instead')
const AndroidIntent$json = {
  '1': 'AndroidIntent',
  '2': [
    {'1': 'pkg_name', '3': 1, '4': 2, '5': 9, '10': 'pkgName'},
    {'1': 'uri', '3': 2, '4': 2, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `AndroidIntent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List androidIntentDescriptor = $convert.base64Decode(
    'Cg1BbmRyb2lkSW50ZW50EhkKCHBrZ19uYW1lGAEgAigJUgdwa2dOYW1lEhAKA3VyaRgCIAIoCV'
    'IDdXJp');

@$core.Deprecated('Use abstractItemDescriptor instead')
const AbstractItem$json = {
  '1': 'AbstractItem',
  '2': [
    {'1': 'k', '3': 1, '4': 2, '5': 9, '10': 'k'},
    {'1': 'v', '3': 2, '4': 2, '5': 9, '10': 'v'},
  ],
  '3': [AbstractItem_List$json],
};

@$core.Deprecated('Use abstractItemDescriptor instead')
const AbstractItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AbstractItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `AbstractItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List abstractItemDescriptor = $convert.base64Decode(
    'CgxBYnN0cmFjdEl0ZW0SDAoBaxgBIAIoCVIBaxIMCgF2GAIgAigJUgF2GjIKBExpc3QSKgoEbG'
    'lzdBgBIAMoCzIWLnByb3RvY29sLkFic3RyYWN0SXRlbVIEbGlzdA==');

@$core.Deprecated('Use titleDescriptor instead')
const Title$json = {
  '1': 'Title',
  '2': [
    {'1': 'main_title', '3': 1, '4': 2, '5': 9, '10': 'mainTitle'},
    {'1': 'sub_title', '3': 2, '4': 2, '5': 9, '10': 'subTitle'},
  ],
};

/// Descriptor for `Title`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List titleDescriptor = $convert.base64Decode(
    'CgVUaXRsZRIdCgptYWluX3RpdGxlGAEgAigJUgltYWluVGl0bGUSGwoJc3ViX3RpdGxlGAIgAi'
    'gJUghzdWJUaXRsZQ==');

@$core.Deprecated('Use richTextDescriptor instead')
const RichText$json = {
  '1': 'RichText',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
    {'1': 'color', '3': 2, '4': 2, '5': 9, '10': 'color'},
    {'1': 'bg_color', '3': 3, '4': 2, '5': 9, '10': 'bgColor'},
  ],
  '3': [RichText_List$json],
};

@$core.Deprecated('Use richTextDescriptor instead')
const RichText_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.RichText',
      '10': 'list'
    },
  ],
};

/// Descriptor for `RichText`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List richTextDescriptor = $convert.base64Decode(
    'CghSaWNoVGV4dBISCgR0ZXh0GAEgAigJUgR0ZXh0EhQKBWNvbG9yGAIgAigJUgVjb2xvchIZCg'
    'hiZ19jb2xvchgDIAIoCVIHYmdDb2xvchouCgRMaXN0EiYKBGxpc3QYASADKAsyEi5wcm90b2Nv'
    'bC5SaWNoVGV4dFIEbGlzdA==');

@$core.Deprecated('Use weatherItemDescriptor instead')
const WeatherItem$json = {
  '1': 'WeatherItem',
  '2': [
    {'1': 'date', '3': 1, '4': 2, '5': 9, '10': 'date'},
    {'1': 'location', '3': 2, '4': 2, '5': 9, '10': 'location'},
    {'1': 'aqi', '3': 3, '4': 2, '5': 9, '10': 'aqi'},
    {
      '1': 'current_temperature',
      '3': 4,
      '4': 2,
      '5': 9,
      '10': 'currentTemperature'
    },
    {'1': 'high_temperature', '3': 5, '4': 2, '5': 9, '10': 'highTemperature'},
    {'1': 'low_temperature', '3': 6, '4': 2, '5': 9, '10': 'lowTemperature'},
    {'1': 'icon_description', '3': 7, '4': 2, '5': 9, '10': 'iconDescription'},
    {
      '1': 'weather_code',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.WeatherCode',
      '10': 'weatherCode'
    },
    {
      '1': 'wind',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.WeatherWind',
      '10': 'wind'
    },
    {'1': 'weekday', '3': 10, '4': 2, '5': 9, '10': 'weekday'},
  ],
  '3': [WeatherItem_List$json],
};

@$core.Deprecated('Use weatherItemDescriptor instead')
const WeatherItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WeatherItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `WeatherItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherItemDescriptor = $convert.base64Decode(
    'CgtXZWF0aGVySXRlbRISCgRkYXRlGAEgAigJUgRkYXRlEhoKCGxvY2F0aW9uGAIgAigJUghsb2'
    'NhdGlvbhIQCgNhcWkYAyACKAlSA2FxaRIvChNjdXJyZW50X3RlbXBlcmF0dXJlGAQgAigJUhJj'
    'dXJyZW50VGVtcGVyYXR1cmUSKQoQaGlnaF90ZW1wZXJhdHVyZRgFIAIoCVIPaGlnaFRlbXBlcm'
    'F0dXJlEicKD2xvd190ZW1wZXJhdHVyZRgGIAIoCVIObG93VGVtcGVyYXR1cmUSKQoQaWNvbl9k'
    'ZXNjcmlwdGlvbhgHIAIoCVIPaWNvbkRlc2NyaXB0aW9uEjgKDHdlYXRoZXJfY29kZRgIIAEoCz'
    'IVLnByb3RvY29sLldlYXRoZXJDb2RlUgt3ZWF0aGVyQ29kZRIpCgR3aW5kGAkgASgLMhUucHJv'
    'dG9jb2wuV2VhdGhlcldpbmRSBHdpbmQSGAoHd2Vla2RheRgKIAIoCVIHd2Vla2RheRoxCgRMaX'
    'N0EikKBGxpc3QYASADKAsyFS5wcm90b2NvbC5XZWF0aGVySXRlbVIEbGlzdA==');

@$core.Deprecated('Use weatherCodeDescriptor instead')
const WeatherCode$json = {
  '1': 'WeatherCode',
  '2': [
    {'1': 'current', '3': 1, '4': 2, '5': 9, '10': 'current'},
    {'1': 'from', '3': 2, '4': 2, '5': 9, '10': 'from'},
    {'1': 'to', '3': 3, '4': 2, '5': 9, '10': 'to'},
  ],
};

/// Descriptor for `WeatherCode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherCodeDescriptor = $convert.base64Decode(
    'CgtXZWF0aGVyQ29kZRIYCgdjdXJyZW50GAEgAigJUgdjdXJyZW50EhIKBGZyb20YAiACKAlSBG'
    'Zyb20SDgoCdG8YAyACKAlSAnRv');

@$core.Deprecated('Use weatherWindDescriptor instead')
const WeatherWind$json = {
  '1': 'WeatherWind',
  '2': [
    {
      '1': 'direction',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.WeatherWindDirection',
      '10': 'direction'
    },
    {
      '1': 'speed',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.WeatherWindSpeed',
      '10': 'speed'
    },
  ],
};

/// Descriptor for `WeatherWind`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherWindDescriptor = $convert.base64Decode(
    'CgtXZWF0aGVyV2luZBI8CglkaXJlY3Rpb24YASABKAsyHi5wcm90b2NvbC5XZWF0aGVyV2luZE'
    'RpcmVjdGlvblIJZGlyZWN0aW9uEjAKBXNwZWVkGAIgASgLMhoucHJvdG9jb2wuV2VhdGhlcldp'
    'bmRTcGVlZFIFc3BlZWQ=');

@$core.Deprecated('Use weatherWindDirectionDescriptor instead')
const WeatherWindDirection$json = {
  '1': 'WeatherWindDirection',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
    {'1': 'current', '3': 2, '4': 2, '5': 9, '10': 'current'},
    {'1': 'from', '3': 3, '4': 2, '5': 9, '10': 'from'},
    {'1': 'to', '3': 4, '4': 2, '5': 9, '10': 'to'},
  ],
};

/// Descriptor for `WeatherWindDirection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherWindDirectionDescriptor = $convert.base64Decode(
    'ChRXZWF0aGVyV2luZERpcmVjdGlvbhISCgR0ZXh0GAEgAigJUgR0ZXh0EhgKB2N1cnJlbnQYAi'
    'ACKAlSB2N1cnJlbnQSEgoEZnJvbRgDIAIoCVIEZnJvbRIOCgJ0bxgEIAIoCVICdG8=');

@$core.Deprecated('Use weatherWindSpeedDescriptor instead')
const WeatherWindSpeed$json = {
  '1': 'WeatherWindSpeed',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
    {'1': 'current', '3': 2, '4': 2, '5': 9, '10': 'current'},
    {'1': 'from', '3': 3, '4': 2, '5': 9, '10': 'from'},
    {'1': 'to', '3': 4, '4': 2, '5': 9, '10': 'to'},
  ],
};

/// Descriptor for `WeatherWindSpeed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherWindSpeedDescriptor = $convert.base64Decode(
    'ChBXZWF0aGVyV2luZFNwZWVkEhIKBHRleHQYASACKAlSBHRleHQSGAoHY3VycmVudBgCIAIoCV'
    'IHY3VycmVudBISCgRmcm9tGAMgAigJUgRmcm9tEg4KAnRvGAQgAigJUgJ0bw==');

@$core.Deprecated('Use playInfoItemDescriptor instead')
const PlayInfoItem$json = {
  '1': 'PlayInfoItem',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Title',
      '10': 'title'
    },
    {'1': 'duration_in_ms', '3': 2, '4': 1, '5': 13, '10': 'durationInMs'},
    {'1': 'text', '3': 3, '4': 2, '5': 9, '10': 'text'},
  ],
  '3': [PlayInfoItem_List$json],
};

@$core.Deprecated('Use playInfoItemDescriptor instead')
const PlayInfoItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.PlayInfoItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `PlayInfoItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playInfoItemDescriptor = $convert.base64Decode(
    'CgxQbGF5SW5mb0l0ZW0SJQoFdGl0bGUYASACKAsyDy5wcm90b2NvbC5UaXRsZVIFdGl0bGUSJA'
    'oOZHVyYXRpb25faW5fbXMYAiABKA1SDGR1cmF0aW9uSW5NcxISCgR0ZXh0GAMgAigJUgR0ZXh0'
    'GjIKBExpc3QSKgoEbGlzdBgBIAMoCzIWLnByb3RvY29sLlBsYXlJbmZvSXRlbVIEbGlzdA==');

@$core.Deprecated('Use listsItemDescriptor instead')
const ListsItem$json = {
  '1': 'ListsItem',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Title',
      '10': 'title'
    },
    {'1': 'text', '3': 2, '4': 2, '5': 9, '10': 'text'},
    {
      '1': 'skill_description',
      '3': 3,
      '4': 2,
      '5': 9,
      '10': 'skillDescription'
    },
  ],
  '3': [ListsItem_List$json],
};

@$core.Deprecated('Use listsItemDescriptor instead')
const ListsItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.ListsItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `ListsItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listsItemDescriptor = $convert.base64Decode(
    'CglMaXN0c0l0ZW0SJQoFdGl0bGUYASACKAsyDy5wcm90b2NvbC5UaXRsZVIFdGl0bGUSEgoEdG'
    'V4dBgCIAIoCVIEdGV4dBIrChFza2lsbF9kZXNjcmlwdGlvbhgDIAIoCVIQc2tpbGxEZXNjcmlw'
    'dGlvbhovCgRMaXN0EicKBGxpc3QYASADKAsyEy5wcm90b2NvbC5MaXN0c0l0ZW1SBGxpc3Q=');

@$core.Deprecated('Use alertTimeInfoDescriptor instead')
const AlertTimeInfo$json = {
  '1': 'AlertTimeInfo',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.AlertTimeType',
      '10': 'type'
    },
    {'1': 'token', '3': 2, '4': 2, '5': 9, '10': 'token'},
    {
      '1': 'datetime',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertDateTime',
      '10': 'datetime'
    },
    {
      '1': 'start_datetime',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertDateTime',
      '10': 'startDatetime'
    },
    {
      '1': 'end_datetime',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlertDateTime',
      '10': 'endDatetime'
    },
  ],
};

/// Descriptor for `AlertTimeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alertTimeInfoDescriptor = $convert.base64Decode(
    'Cg1BbGVydFRpbWVJbmZvEisKBHR5cGUYASACKA4yFy5wcm90b2NvbC5BbGVydFRpbWVUeXBlUg'
    'R0eXBlEhQKBXRva2VuGAIgAigJUgV0b2tlbhIzCghkYXRldGltZRgDIAEoCzIXLnByb3RvY29s'
    'LkFsZXJ0RGF0ZVRpbWVSCGRhdGV0aW1lEj4KDnN0YXJ0X2RhdGV0aW1lGAQgASgLMhcucHJvdG'
    '9jb2wuQWxlcnREYXRlVGltZVINc3RhcnREYXRldGltZRI6CgxlbmRfZGF0ZXRpbWUYBSABKAsy'
    'Fy5wcm90b2NvbC5BbGVydERhdGVUaW1lUgtlbmREYXRldGltZQ==');

@$core.Deprecated('Use alertDateTimeDescriptor instead')
const AlertDateTime$json = {
  '1': 'AlertDateTime',
  '2': [
    {'1': 'value', '3': 1, '4': 2, '5': 9, '10': 'value'},
    {'1': 'timestamp', '3': 2, '4': 2, '5': 3, '10': 'timestamp'},
  ],
};

/// Descriptor for `AlertDateTime`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alertDateTimeDescriptor = $convert.base64Decode(
    'Cg1BbGVydERhdGVUaW1lEhQKBXZhbHVlGAEgAigJUgV2YWx1ZRIcCgl0aW1lc3RhbXAYAiACKA'
    'NSCXRpbWVzdGFtcA==');

@$core.Deprecated('Use speakerSetMuteDescriptor instead')
const SpeakerSetMute$json = {
  '1': 'SpeakerSetMute',
  '2': [
    {'1': 'mute', '3': 1, '4': 2, '5': 8, '10': 'mute'},
  ],
};

/// Descriptor for `SpeakerSetMute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speakerSetMuteDescriptor =
    $convert.base64Decode('Cg5TcGVha2VyU2V0TXV0ZRISCgRtdXRlGAEgAigIUgRtdXRl');

@$core.Deprecated('Use speakerSetVolumeDescriptor instead')
const SpeakerSetVolume$json = {
  '1': 'SpeakerSetVolume',
  '2': [
    {'1': 'volume', '3': 1, '4': 2, '5': 5, '10': 'volume'},
    {
      '1': 'type',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.SpeakerVolumeType',
      '10': 'type'
    },
    {
      '1': 'unit',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.SpeakerUnitDef',
      '10': 'unit'
    },
    {'1': 'once', '3': 4, '4': 1, '5': 8, '10': 'once'},
  ],
};

/// Descriptor for `SpeakerSetVolume`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speakerSetVolumeDescriptor = $convert.base64Decode(
    'ChBTcGVha2VyU2V0Vm9sdW1lEhYKBnZvbHVtZRgBIAIoBVIGdm9sdW1lEi8KBHR5cGUYAiACKA'
    '4yGy5wcm90b2NvbC5TcGVha2VyVm9sdW1lVHlwZVIEdHlwZRIsCgR1bml0GAMgAigOMhgucHJv'
    'dG9jb2wuU3BlYWtlclVuaXREZWZSBHVuaXQSEgoEb25jZRgEIAEoCFIEb25jZQ==');

@$core.Deprecated('Use speakerAjustVolumeDescriptor instead')
const SpeakerAjustVolume$json = {
  '1': 'SpeakerAjustVolume',
  '2': [
    {'1': 'volume_delta', '3': 1, '4': 2, '5': 5, '10': 'volumeDelta'},
    {
      '1': 'type',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.SpeakerVolumeType',
      '10': 'type'
    },
    {
      '1': 'unit',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.SpeakerUnitDef',
      '10': 'unit'
    },
  ],
};

/// Descriptor for `SpeakerAjustVolume`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speakerAjustVolumeDescriptor = $convert.base64Decode(
    'ChJTcGVha2VyQWp1c3RWb2x1bWUSIQoMdm9sdW1lX2RlbHRhGAEgAigFUgt2b2x1bWVEZWx0YR'
    'IvCgR0eXBlGAIgAigOMhsucHJvdG9jb2wuU3BlYWtlclZvbHVtZVR5cGVSBHR5cGUSLAoEdW5p'
    'dBgDIAIoDjIYLnByb3RvY29sLlNwZWFrZXJVbml0RGVmUgR1bml0');

@$core.Deprecated('Use templateDeviceListDescriptor instead')
const TemplateDeviceList$json = {
  '1': 'TemplateDeviceList',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.DeviceItem.List',
      '10': 'items'
    },
    {'1': 'exceed_max_items', '3': 2, '4': 2, '5': 8, '10': 'exceedMaxItems'},
    {'1': 'show_index', '3': 3, '4': 2, '5': 8, '10': 'showIndex'},
  ],
};

/// Descriptor for `TemplateDeviceList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateDeviceListDescriptor = $convert.base64Decode(
    'ChJUZW1wbGF0ZURldmljZUxpc3QSLwoFaXRlbXMYASACKAsyGS5wcm90b2NvbC5EZXZpY2VJdG'
    'VtLkxpc3RSBWl0ZW1zEigKEGV4Y2VlZF9tYXhfaXRlbXMYAiACKAhSDmV4Y2VlZE1heEl0ZW1z'
    'Eh0KCnNob3dfaW5kZXgYAyACKAhSCXNob3dJbmRleA==');

@$core.Deprecated('Use deviceItemDescriptor instead')
const DeviceItem$json = {
  '1': 'DeviceItem',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Title',
      '10': 'title'
    },
  ],
  '3': [DeviceItem_List$json],
};

@$core.Deprecated('Use deviceItemDescriptor instead')
const DeviceItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.DeviceItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `DeviceItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceItemDescriptor = $convert.base64Decode(
    'CgpEZXZpY2VJdGVtEiUKBXRpdGxlGAEgAigLMg8ucHJvdG9jb2wuVGl0bGVSBXRpdGxlGjAKBE'
    'xpc3QSKAoEbGlzdBgBIAMoCzIULnByb3RvY29sLkRldmljZUl0ZW1SBGxpc3Q=');

@$core.Deprecated('Use showContactsDescriptor instead')
const ShowContacts$json = {
  '1': 'ShowContacts',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ShowContacts.Code',
      '10': 'code'
    },
    {
      '1': 'list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.ShowContacts.ContactData',
      '10': 'list'
    },
  ],
  '3': [ShowContacts_ContactData$json],
  '4': [ShowContacts_Code$json],
};

@$core.Deprecated('Use showContactsDescriptor instead')
const ShowContacts_ContactData$json = {
  '1': 'ContactData',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {'1': 'number', '3': 2, '4': 2, '5': 9, '10': 'number'},
  ],
};

@$core.Deprecated('Use showContactsDescriptor instead')
const ShowContacts_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'NO_PERMISSION', '2': 1},
  ],
};

/// Descriptor for `ShowContacts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List showContactsDescriptor = $convert.base64Decode(
    'CgxTaG93Q29udGFjdHMSLwoEY29kZRgBIAIoDjIbLnByb3RvY29sLlNob3dDb250YWN0cy5Db2'
    'RlUgRjb2RlEjYKBGxpc3QYAiADKAsyIi5wcm90b2NvbC5TaG93Q29udGFjdHMuQ29udGFjdERh'
    'dGFSBGxpc3QaOQoLQ29udGFjdERhdGESEgoEbmFtZRgBIAIoCVIEbmFtZRIWCgZudW1iZXIYAi'
    'ACKAlSBm51bWJlciIhCgRDb2RlEgYKAk9LEAASEQoNTk9fUEVSTUlTU0lPThAB');

@$core.Deprecated('Use wearableControllerDescriptor instead')
const WearableController$json = {
  '1': 'WearableController',
  '3': [
    WearableController_Switch$json,
    WearableController_Execute$json,
    WearableController_Action$json
  ],
};

@$core.Deprecated('Use wearableControllerDescriptor instead')
const WearableController_Switch$json = {
  '1': 'Switch',
  '2': [
    {
      '1': 'sport_state',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportState',
      '10': 'sportState'
    },
    {
      '1': 'sport_type',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'sportType'
    },
  ],
};

@$core.Deprecated('Use wearableControllerDescriptor instead')
const WearableController_Execute$json = {
  '1': 'Execute',
  '2': [
    {'1': 'directive', '3': 1, '4': 2, '5': 9, '10': 'directive'},
  ],
};

@$core.Deprecated('Use wearableControllerDescriptor instead')
const WearableController_Action$json = {
  '1': 'Action',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {'1': 'payload', '3': 2, '4': 2, '5': 9, '10': 'payload'},
  ],
};

/// Descriptor for `WearableController`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearableControllerDescriptor = $convert.base64Decode(
    'ChJXZWFyYWJsZUNvbnRyb2xsZXIacwoGU3dpdGNoEjUKC3Nwb3J0X3N0YXRlGAEgAigOMhQucH'
    'JvdG9jb2wuU3BvcnRTdGF0ZVIKc3BvcnRTdGF0ZRIyCgpzcG9ydF90eXBlGAIgAigOMhMucHJv'
    'dG9jb2wuU3BvcnRUeXBlUglzcG9ydFR5cGUaJwoHRXhlY3V0ZRIcCglkaXJlY3RpdmUYASACKA'
    'lSCWRpcmVjdGl2ZRo2CgZBY3Rpb24SEgoEbmFtZRgBIAIoCVIEbmFtZRIYCgdwYXlsb2FkGAIg'
    'AigJUgdwYXlsb2Fk');

@$core.Deprecated('Use lLMDescriptor instead')
const LLM$json = {
  '1': 'LLM',
  '3': [
    LLM_LoadingCard$json,
    LLM_DeclarationContent$json,
    LLM_IllegalContent$json,
    LLM_ToastStream$json,
    LLM_IssueImage$json
  ],
};

@$core.Deprecated('Use lLMDescriptor instead')
const LLM_LoadingCard$json = {
  '1': 'LoadingCard',
  '2': [
    {'1': 'timeout', '3': 1, '4': 2, '5': 13, '10': 'timeout'},
  ],
};

@$core.Deprecated('Use lLMDescriptor instead')
const LLM_DeclarationContent$json = {
  '1': 'DeclarationContent',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
  ],
};

@$core.Deprecated('Use lLMDescriptor instead')
const LLM_IllegalContent$json = {
  '1': 'IllegalContent',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
  ],
};

@$core.Deprecated('Use lLMDescriptor instead')
const LLM_ToastStream$json = {
  '1': 'ToastStream',
  '2': [
    {'1': 'markdown_text', '3': 1, '4': 2, '5': 9, '10': 'markdownText'},
  ],
};

@$core.Deprecated('Use lLMDescriptor instead')
const LLM_IssueImage$json = {
  '1': 'IssueImage',
  '3': [LLM_IssueImage_Request$json, LLM_IssueImage_Response$json],
};

@$core.Deprecated('Use lLMDescriptor instead')
const LLM_IssueImage_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'session_id', '3': 1, '4': 2, '5': 13, '10': 'sessionId'},
  ],
};

@$core.Deprecated('Use lLMDescriptor instead')
const LLM_IssueImage_Response$json = {
  '1': 'Response',
  '2': [
    {
      '1': 'prepare_status',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.PrepareStatus',
      '10': 'prepareStatus'
    },
    {
      '1': 'support_image_format',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protocol.ImageFormat',
      '10': 'supportImageFormat'
    },
    {
      '1': 'expected_slice_length',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'expectedSliceLength'
    },
  ],
};

/// Descriptor for `LLM`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lLMDescriptor = $convert.base64Decode(
    'CgNMTE0aJwoLTG9hZGluZ0NhcmQSGAoHdGltZW91dBgBIAIoDVIHdGltZW91dBooChJEZWNsYX'
    'JhdGlvbkNvbnRlbnQSEgoEdGV4dBgBIAIoCVIEdGV4dBokCg5JbGxlZ2FsQ29udGVudBISCgR0'
    'ZXh0GAEgAigJUgR0ZXh0GjIKC1RvYXN0U3RyZWFtEiMKDW1hcmtkb3duX3RleHQYASACKAlSDG'
    '1hcmtkb3duVGV4dBqAAgoKSXNzdWVJbWFnZRooCgdSZXF1ZXN0Eh0KCnNlc3Npb25faWQYASAC'
    'KA1SCXNlc3Npb25JZBrHAQoIUmVzcG9uc2USPgoOcHJlcGFyZV9zdGF0dXMYASACKA4yFy5wcm'
    '90b2NvbC5QcmVwYXJlU3RhdHVzUg1wcmVwYXJlU3RhdHVzEkcKFHN1cHBvcnRfaW1hZ2VfZm9y'
    'bWF0GAIgASgOMhUucHJvdG9jb2wuSW1hZ2VGb3JtYXRSEnN1cHBvcnRJbWFnZUZvcm1hdBIyCh'
    'VleHBlY3RlZF9zbGljZV9sZW5ndGgYAyABKA1SE2V4cGVjdGVkU2xpY2VMZW5ndGg=');

@$core.Deprecated('Use mediaConfigDescriptor instead')
const MediaConfig$json = {
  '1': 'MediaConfig',
  '2': [
    {'1': 'img_width', '3': 1, '4': 2, '5': 13, '10': 'imgWidth'},
    {'1': 'img_height', '3': 2, '4': 2, '5': 13, '10': 'imgHeight'},
    {'1': 'img_format', '3': 3, '4': 2, '5': 13, '10': 'imgFormat'},
    {'1': 'standby_freq', '3': 4, '4': 2, '5': 13, '10': 'standbyFreq'},
  ],
};

/// Descriptor for `MediaConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaConfigDescriptor = $convert.base64Decode(
    'CgtNZWRpYUNvbmZpZxIbCglpbWdfd2lkdGgYASACKA1SCGltZ1dpZHRoEh0KCmltZ19oZWlnaH'
    'QYAiACKA1SCWltZ0hlaWdodBIdCgppbWdfZm9ybWF0GAMgAigNUglpbWdGb3JtYXQSIQoMc3Rh'
    'bmRieV9mcmVxGAQgAigNUgtzdGFuZGJ5RnJlcQ==');

@$core.Deprecated('Use aivsRequestInfoDescriptor instead')
const AivsRequestInfo$json = {
  '1': 'AivsRequestInfo',
  '2': [
    {'1': 'request_id', '3': 1, '4': 2, '5': 12, '10': 'requestId'},
    {'1': 'transaction_id', '3': 2, '4': 2, '5': 12, '10': 'transactionId'},
  ],
};

/// Descriptor for `AivsRequestInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aivsRequestInfoDescriptor = $convert.base64Decode(
    'Cg9BaXZzUmVxdWVzdEluZm8SHQoKcmVxdWVzdF9pZBgBIAIoDFIJcmVxdWVzdElkEiUKDnRyYW'
    '5zYWN0aW9uX2lkGAIgAigMUg10cmFuc2FjdGlvbklk');

@$core.Deprecated('Use multiModalDescriptor instead')
const MultiModal$json = {
  '1': 'MultiModal',
  '2': [
    {
      '1': 'request_info',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.AivsRequestInfo',
      '10': 'requestInfo'
    },
    {'1': 'cmd', '3': 2, '4': 2, '5': 13, '10': 'cmd'},
  ],
};

/// Descriptor for `MultiModal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiModalDescriptor = $convert.base64Decode(
    'CgpNdWx0aU1vZGFsEjwKDHJlcXVlc3RfaW5mbxgBIAIoCzIZLnByb3RvY29sLkFpdnNSZXF1ZX'
    'N0SW5mb1ILcmVxdWVzdEluZm8SEAoDY21kGAIgAigNUgNjbWQ=');

@$core.Deprecated('Use aivsStatusDescriptor instead')
const AivsStatus$json = {
  '1': 'AivsStatus',
  '2': [
    {
      '1': 'voice_status',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.AivsStatus.VoiceStatus',
      '10': 'voiceStatus'
    },
    {
      '1': 'tts_status',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.AivsStatus.TtsStatus',
      '10': 'ttsStatus'
    },
    {
      '1': 'media_play_status',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.AivsStatus.MediaPlayStatus',
      '10': 'mediaPlayStatus'
    },
    {
      '1': 'image_status',
      '3': 4,
      '4': 2,
      '5': 14,
      '6': '.protocol.AivsStatus.ImageStatus',
      '10': 'imageStatus'
    },
    {
      '1': 'operating_status',
      '3': 5,
      '4': 2,
      '5': 14,
      '6': '.protocol.AivsStatus.OperatingStatus',
      '10': 'operatingStatus'
    },
    {
      '1': 'device_status',
      '3': 6,
      '4': 2,
      '5': 14,
      '6': '.protocol.AivsStatus.DeviceStatus',
      '10': 'deviceStatus'
    },
  ],
  '4': [
    AivsStatus_VoiceStatus$json,
    AivsStatus_TtsStatus$json,
    AivsStatus_MediaPlayStatus$json,
    AivsStatus_ImageStatus$json,
    AivsStatus_OperatingStatus$json,
    AivsStatus_DeviceStatus$json
  ],
};

@$core.Deprecated('Use aivsStatusDescriptor instead')
const AivsStatus_VoiceStatus$json = {
  '1': 'VoiceStatus',
  '2': [
    {'1': 'VOICE_IDLE', '2': 0},
    {'1': 'WAKE_UP', '2': 1},
    {'1': 'RECORDING', '2': 2},
    {'1': 'STANDBY', '2': 3},
  ],
};

@$core.Deprecated('Use aivsStatusDescriptor instead')
const AivsStatus_TtsStatus$json = {
  '1': 'TtsStatus',
  '2': [
    {'1': 'TTS_IDLE', '2': 0},
    {'1': 'TTS_PLAYING', '2': 1},
  ],
};

@$core.Deprecated('Use aivsStatusDescriptor instead')
const AivsStatus_MediaPlayStatus$json = {
  '1': 'MediaPlayStatus',
  '2': [
    {'1': 'MEDIA_IDLE', '2': 0},
    {'1': 'MEDIA_PLAYING', '2': 1},
    {'1': 'MEDIA_PAUSED', '2': 2},
    {'1': 'MEDIA_STOPPED', '2': 3},
  ],
};

@$core.Deprecated('Use aivsStatusDescriptor instead')
const AivsStatus_ImageStatus$json = {
  '1': 'ImageStatus',
  '2': [
    {'1': 'IMAGE_IDLE', '2': 0},
    {'1': 'IMAGE_PREPARE', '2': 1},
    {'1': 'IMAGE_UPLOADING', '2': 2},
  ],
};

@$core.Deprecated('Use aivsStatusDescriptor instead')
const AivsStatus_OperatingStatus$json = {
  '1': 'OperatingStatus',
  '2': [
    {'1': 'OPERATING_IDLE', '2': 0},
    {'1': 'EXECUTING', '2': 1},
  ],
};

@$core.Deprecated('Use aivsStatusDescriptor instead')
const AivsStatus_DeviceStatus$json = {
  '1': 'DeviceStatus',
  '2': [
    {'1': 'CONNECTED_ONLINE', '2': 0},
    {'1': 'CONNECTED_OFFLINE', '2': 1},
    {'1': 'DISCONNECTED_OFFLINE', '2': 2},
  ],
};

/// Descriptor for `AivsStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aivsStatusDescriptor = $convert.base64Decode(
    'CgpBaXZzU3RhdHVzEkMKDHZvaWNlX3N0YXR1cxgBIAIoDjIgLnByb3RvY29sLkFpdnNTdGF0dX'
    'MuVm9pY2VTdGF0dXNSC3ZvaWNlU3RhdHVzEj0KCnR0c19zdGF0dXMYAiACKA4yHi5wcm90b2Nv'
    'bC5BaXZzU3RhdHVzLlR0c1N0YXR1c1IJdHRzU3RhdHVzElAKEW1lZGlhX3BsYXlfc3RhdHVzGA'
    'MgAigOMiQucHJvdG9jb2wuQWl2c1N0YXR1cy5NZWRpYVBsYXlTdGF0dXNSD21lZGlhUGxheVN0'
    'YXR1cxJDCgxpbWFnZV9zdGF0dXMYBCACKA4yIC5wcm90b2NvbC5BaXZzU3RhdHVzLkltYWdlU3'
    'RhdHVzUgtpbWFnZVN0YXR1cxJPChBvcGVyYXRpbmdfc3RhdHVzGAUgAigOMiQucHJvdG9jb2wu'
    'QWl2c1N0YXR1cy5PcGVyYXRpbmdTdGF0dXNSD29wZXJhdGluZ1N0YXR1cxJGCg1kZXZpY2Vfc3'
    'RhdHVzGAYgAigOMiEucHJvdG9jb2wuQWl2c1N0YXR1cy5EZXZpY2VTdGF0dXNSDGRldmljZVN0'
    'YXR1cyJGCgtWb2ljZVN0YXR1cxIOCgpWT0lDRV9JRExFEAASCwoHV0FLRV9VUBABEg0KCVJFQ0'
    '9SRElORxACEgsKB1NUQU5EQlkQAyIqCglUdHNTdGF0dXMSDAoIVFRTX0lETEUQABIPCgtUVFNf'
    'UExBWUlORxABIlkKD01lZGlhUGxheVN0YXR1cxIOCgpNRURJQV9JRExFEAASEQoNTUVESUFfUE'
    'xBWUlORxABEhAKDE1FRElBX1BBVVNFRBACEhEKDU1FRElBX1NUT1BQRUQQAyJFCgtJbWFnZVN0'
    'YXR1cxIOCgpJTUFHRV9JRExFEAASEQoNSU1BR0VfUFJFUEFSRRABEhMKD0lNQUdFX1VQTE9BRE'
    'lORxACIjQKD09wZXJhdGluZ1N0YXR1cxISCg5PUEVSQVRJTkdfSURMRRAAEg0KCUVYRUNVVElO'
    'RxABIlUKDERldmljZVN0YXR1cxIUChBDT05ORUNURURfT05MSU5FEAASFQoRQ09OTkVDVEVEX0'
    '9GRkxJTkUQARIYChRESVNDT05ORUNURURfT0ZGTElORRAC');

@$core.Deprecated('Use aivsErrorDescriptor instead')
const AivsError$json = {
  '1': 'AivsError',
  '2': [
    {'1': 'error_code', '3': 1, '4': 2, '5': 13, '10': 'errorCode'},
    {'1': 'error_msg', '3': 2, '4': 2, '5': 9, '10': 'errorMsg'},
  ],
};

/// Descriptor for `AivsError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aivsErrorDescriptor = $convert.base64Decode(
    'CglBaXZzRXJyb3ISHQoKZXJyb3JfY29kZRgBIAIoDVIJZXJyb3JDb2RlEhsKCWVycm9yX21zZx'
    'gCIAIoCVIIZXJyb3JNc2c=');

@$core.Deprecated('Use aFlashDescriptor instead')
const AFlash$json = {
  '1': 'AFlash',
  '3': [AFlash_SupportedLanguage$json, AFlash_ConfirmResult$json],
  '4': [AFlash_Scene$json],
};

@$core.Deprecated('Use aFlashDescriptor instead')
const AFlash_SupportedLanguage$json = {
  '1': 'SupportedLanguage',
  '2': [
    {'1': 'languages', '3': 1, '4': 2, '5': 9, '10': 'languages'},
  ],
};

@$core.Deprecated('Use aFlashDescriptor instead')
const AFlash_ConfirmResult$json = {
  '1': 'ConfirmResult',
  '2': [
    {
      '1': 'scene',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.AFlash.Scene',
      '10': 'scene'
    },
    {'1': 'confirm', '3': 2, '4': 2, '5': 8, '10': 'confirm'},
    {'1': 'content', '3': 3, '4': 2, '5': 9, '10': 'content'},
    {
      '1': 'album_wf',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.AFlash.ConfirmResult.AlbumWF',
      '10': 'albumWf'
    },
  ],
  '3': [AFlash_ConfirmResult_AlbumWF$json],
};

@$core.Deprecated('Use aFlashDescriptor instead')
const AFlash_ConfirmResult_AlbumWF$json = {
  '1': 'AlbumWF',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {
      '1': 'image_format',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.ImageFormat',
      '10': 'imageFormat'
    },
  ],
};

@$core.Deprecated('Use aFlashDescriptor instead')
const AFlash_Scene$json = {
  '1': 'Scene',
  '2': [
    {'1': 'QUESTION_AND_ANSWER', '2': 0},
    {'1': 'TEXT_TO_IMAGE', '2': 1},
  ],
};

/// Descriptor for `AFlash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aFlashDescriptor = $convert.base64Decode(
    'CgZBRmxhc2gaMQoRU3VwcG9ydGVkTGFuZ3VhZ2USHAoJbGFuZ3VhZ2VzGAEgAigJUglsYW5ndW'
    'FnZXMaiQIKDUNvbmZpcm1SZXN1bHQSLAoFc2NlbmUYASACKA4yFi5wcm90b2NvbC5BRmxhc2gu'
    'U2NlbmVSBXNjZW5lEhgKB2NvbmZpcm0YAiACKAhSB2NvbmZpcm0SGAoHY29udGVudBgDIAIoCV'
    'IHY29udGVudBJBCghhbGJ1bV93ZhgEIAEoCzImLnByb3RvY29sLkFGbGFzaC5Db25maXJtUmVz'
    'dWx0LkFsYnVtV0ZSB2FsYnVtV2YaUwoHQWxidW1XRhIOCgJpZBgBIAIoCVICaWQSOAoMaW1hZ2'
    'VfZm9ybWF0GAIgAigOMhUucHJvdG9jb2wuSW1hZ2VGb3JtYXRSC2ltYWdlRm9ybWF0IjMKBVNj'
    'ZW5lEhcKE1FVRVNUSU9OX0FORF9BTlNXRVIQABIRCg1URVhUX1RPX0lNQUdFEAE=');
