// This is a generated file - do not edit.
//
// Generated from wear_alexa.proto.

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

@$core.Deprecated('Use alexaResultTypeDescriptor instead')
const AlexaResultType$json = {
  '1': 'AlexaResultType',
  '2': [
    {'1': 'ALEXA_START_LISTENING', '2': 0},
    {'1': 'ALEXA_END_LISTENING', '2': 1},
    {'1': 'ALEXA_AUTH_STATUS', '2': 3},
    {'1': 'ALEXA_ERROR_NETWORK', '2': 80},
    {'1': 'ALEXA_ERROR_AUTH', '2': 81},
    {'1': 'ALEXA_ERROR_CONTENT_TOO_LONG', '2': 82},
    {'1': 'ALEXA_ERROR_UNRECOGNIZABLE_SPEECH', '2': 83},
    {'1': 'ALEXA_ERROR_UNSUPPORTED_AREA', '2': 84},
    {'1': 'ALEXA_ERROR_IOS_DEVICE_NOT_SUPPORT', '2': 85},
    {'1': 'ALEXA_ERROR_ANDROID_DEVICE_NOT_SUPPORT', '2': 86},
    {'1': 'ALEXA_ERROR_PLAY_NOT_SUPPORT', '2': 87},
    {'1': 'ALEXA_TEMPLATE_GENERAL', '2': 257},
    {'1': 'ALEXA_TEMPLATE_WEATHER', '2': 258},
    {'1': 'ALEXA_TEMPLATE_LISTS', '2': 259},
    {'1': 'ALEXA_ALERTS_SETALERT', '2': 260},
    {'1': 'ALEXA_ALERTS_DELETEALERTS', '2': 261},
    {'1': 'ALEXA_SPEECHSYNTHESIZER_SPEAK', '2': 262},
    {'1': 'ALEXA_SPEECHRECOGNIZER_EXPECTSPEECH', '2': 263},
    {'1': 'ALEXA_NOTIFICATIONS_SETINDICATOR', '2': 264},
    {'1': 'ALEXA_NOTIFICATIONS_CLEARINDICATOR', '2': 265},
  ],
};

/// Descriptor for `AlexaResultType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alexaResultTypeDescriptor = $convert.base64Decode(
    'Cg9BbGV4YVJlc3VsdFR5cGUSGQoVQUxFWEFfU1RBUlRfTElTVEVOSU5HEAASFwoTQUxFWEFfRU'
    '5EX0xJU1RFTklORxABEhUKEUFMRVhBX0FVVEhfU1RBVFVTEAMSFwoTQUxFWEFfRVJST1JfTkVU'
    'V09SSxBQEhQKEEFMRVhBX0VSUk9SX0FVVEgQURIgChxBTEVYQV9FUlJPUl9DT05URU5UX1RPT1'
    '9MT05HEFISJQohQUxFWEFfRVJST1JfVU5SRUNPR05JWkFCTEVfU1BFRUNIEFMSIAocQUxFWEFf'
    'RVJST1JfVU5TVVBQT1JURURfQVJFQRBUEiYKIkFMRVhBX0VSUk9SX0lPU19ERVZJQ0VfTk9UX1'
    'NVUFBPUlQQVRIqCiZBTEVYQV9FUlJPUl9BTkRST0lEX0RFVklDRV9OT1RfU1VQUE9SVBBWEiAK'
    'HEFMRVhBX0VSUk9SX1BMQVlfTk9UX1NVUFBPUlQQVxIbChZBTEVYQV9URU1QTEFURV9HRU5FUk'
    'FMEIECEhsKFkFMRVhBX1RFTVBMQVRFX1dFQVRIRVIQggISGQoUQUxFWEFfVEVNUExBVEVfTElT'
    'VFMQgwISGgoVQUxFWEFfQUxFUlRTX1NFVEFMRVJUEIQCEh4KGUFMRVhBX0FMRVJUU19ERUxFVE'
    'VBTEVSVFMQhQISIgodQUxFWEFfU1BFRUNIU1lOVEhFU0laRVJfU1BFQUsQhgISKAojQUxFWEFf'
    'U1BFRUNIUkVDT0dOSVpFUl9FWFBFQ1RTUEVFQ0gQhwISJQogQUxFWEFfTk9USUZJQ0FUSU9OU1'
    '9TRVRJTkRJQ0FUT1IQiAISJwoiQUxFWEFfTk9USUZJQ0FUSU9OU19DTEVBUklORElDQVRPUhCJ'
    'Ag==');

@$core.Deprecated('Use alexaAlertTypeDescriptor instead')
const AlexaAlertType$json = {
  '1': 'AlexaAlertType',
  '2': [
    {'1': 'ALEXA_AlertType_UNKNOWN', '2': -1},
    {'1': 'ALEXA_ALARM', '2': 0},
    {'1': 'ALEXA_REMINDER', '2': 1},
    {'1': 'ALEXA_TIMER', '2': 2},
  ],
};

/// Descriptor for `AlexaAlertType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alexaAlertTypeDescriptor = $convert.base64Decode(
    'Cg5BbGV4YUFsZXJ0VHlwZRIkChdBTEVYQV9BbGVydFR5cGVfVU5LTk9XThD///////////8BEg'
    '8KC0FMRVhBX0FMQVJNEAASEgoOQUxFWEFfUkVNSU5ERVIQARIPCgtBTEVYQV9USU1FUhAC');

@$core.Deprecated('Use alexaAuthStatusDescriptor instead')
const AlexaAuthStatus$json = {
  '1': 'AlexaAuthStatus',
  '2': [
    {'1': 'ALEXA_AUTH', '2': 0},
    {'1': 'ALEXA_NO_AUTH', '2': 1},
  ],
};

/// Descriptor for `AlexaAuthStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List alexaAuthStatusDescriptor = $convert.base64Decode(
    'Cg9BbGV4YUF1dGhTdGF0dXMSDgoKQUxFWEFfQVVUSBAAEhEKDUFMRVhBX05PX0FVVEgQAQ==');

@$core.Deprecated('Use alexaDescriptor instead')
const Alexa$json = {
  '1': 'Alexa',
  '2': [
    {
      '1': 'instruction_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaInstruction.List',
      '9': 0,
      '10': 'instructionList'
    },
    {
      '1': 'config',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaConfig',
      '9': 0,
      '10': 'config'
    },
    {
      '1': 'quiet_mode',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaQuietMode',
      '9': 0,
      '10': 'quietMode'
    },
  ],
  '4': [Alexa_AlexaID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use alexaDescriptor instead')
const Alexa_AlexaID$json = {
  '1': 'AlexaID',
  '2': [
    {'1': 'SYNC_INSTRUCTION_LIST', '2': 0},
    {'1': 'SET_CONFIG', '2': 1},
    {'1': 'GET_CONFIG', '2': 2},
    {'1': 'REPORT_QUIET_MODE', '2': 3},
  ],
};

/// Descriptor for `Alexa`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaDescriptor = $convert.base64Decode(
    'CgVBbGV4YRJMChBpbnN0cnVjdGlvbl9saXN0GAEgASgLMh8ucHJvdG9jb2wuQWxleGFJbnN0cn'
    'VjdGlvbi5MaXN0SABSD2luc3RydWN0aW9uTGlzdBIvCgZjb25maWcYAiABKAsyFS5wcm90b2Nv'
    'bC5BbGV4YUNvbmZpZ0gAUgZjb25maWcSOQoKcXVpZXRfbW9kZRgDIAEoCzIYLnByb3RvY29sLk'
    'FsZXhhUXVpZXRNb2RlSABSCXF1aWV0TW9kZSJbCgdBbGV4YUlEEhkKFVNZTkNfSU5TVFJVQ1RJ'
    'T05fTElTVBAAEg4KClNFVF9DT05GSUcQARIOCgpHRVRfQ09ORklHEAISFQoRUkVQT1JUX1FVSU'
    'VUX01PREUQA0IJCgdwYXlsb2Fk');

@$core.Deprecated('Use alexaConfigDescriptor instead')
const AlexaConfig$json = {
  '1': 'AlexaConfig',
  '2': [
    {'1': 'client_id', '3': 1, '4': 2, '5': 9, '10': 'clientId'},
    {'1': 'refresh_token', '3': 2, '4': 2, '5': 9, '10': 'refreshToken'},
    {'1': 'language', '3': 3, '4': 2, '5': 9, '10': 'language'},
  ],
};

/// Descriptor for `AlexaConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaConfigDescriptor = $convert.base64Decode(
    'CgtBbGV4YUNvbmZpZxIbCgljbGllbnRfaWQYASACKAlSCGNsaWVudElkEiMKDXJlZnJlc2hfdG'
    '9rZW4YAiACKAlSDHJlZnJlc2hUb2tlbhIaCghsYW5ndWFnZRgDIAIoCVIIbGFuZ3VhZ2U=');

@$core.Deprecated('Use alexaQuietModeDescriptor instead')
const AlexaQuietMode$json = {
  '1': 'AlexaQuietMode',
  '2': [
    {'1': 'on', '3': 1, '4': 2, '5': 8, '10': 'on'},
  ],
};

/// Descriptor for `AlexaQuietMode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaQuietModeDescriptor =
    $convert.base64Decode('Cg5BbGV4YVF1aWV0TW9kZRIOCgJvbhgBIAIoCFICb24=');

@$core.Deprecated('Use alexaInstructionDescriptor instead')
const AlexaInstruction$json = {
  '1': 'AlexaInstruction',
  '2': [
    {
      '1': 'result_type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.AlexaResultType',
      '10': 'resultType'
    },
    {
      '1': 'template_general',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaTemplateGeneral',
      '10': 'templateGeneral'
    },
    {
      '1': 'template_weather',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaTemplateWeather',
      '10': 'templateWeather'
    },
    {
      '1': 'template_lists',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaTemplateLists',
      '10': 'templateLists'
    },
    {
      '1': 'alerts_setalert',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaAlertsSetAlert',
      '10': 'alertsSetalert'
    },
    {
      '1': 'speechsynthesizer_speak',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaSpeechSynthesizerSpeak',
      '10': 'speechsynthesizerSpeak'
    },
    {
      '1': 'auth_status',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.protocol.AlexaAuthStatus',
      '10': 'authStatus'
    },
    {
      '1': 'alerts_deletealerts',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaAlertsDeleteAlert.List',
      '10': 'alertsDeletealerts'
    },
    {
      '1': 'notifications_setindicator',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.AlexaNotificationsSetIndicator',
      '10': 'notificationsSetindicator'
    },
  ],
  '3': [AlexaInstruction_List$json],
};

@$core.Deprecated('Use alexaInstructionDescriptor instead')
const AlexaInstruction_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AlexaInstruction',
      '10': 'list'
    },
  ],
};

/// Descriptor for `AlexaInstruction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaInstructionDescriptor = $convert.base64Decode(
    'ChBBbGV4YUluc3RydWN0aW9uEjoKC3Jlc3VsdF90eXBlGAEgAigOMhkucHJvdG9jb2wuQWxleG'
    'FSZXN1bHRUeXBlUgpyZXN1bHRUeXBlEkkKEHRlbXBsYXRlX2dlbmVyYWwYAiABKAsyHi5wcm90'
    'b2NvbC5BbGV4YVRlbXBsYXRlR2VuZXJhbFIPdGVtcGxhdGVHZW5lcmFsEkkKEHRlbXBsYXRlX3'
    'dlYXRoZXIYAyABKAsyHi5wcm90b2NvbC5BbGV4YVRlbXBsYXRlV2VhdGhlclIPdGVtcGxhdGVX'
    'ZWF0aGVyEkMKDnRlbXBsYXRlX2xpc3RzGAQgASgLMhwucHJvdG9jb2wuQWxleGFUZW1wbGF0ZU'
    'xpc3RzUg10ZW1wbGF0ZUxpc3RzEkYKD2FsZXJ0c19zZXRhbGVydBgFIAEoCzIdLnByb3RvY29s'
    'LkFsZXhhQWxlcnRzU2V0QWxlcnRSDmFsZXJ0c1NldGFsZXJ0El4KF3NwZWVjaHN5bnRoZXNpem'
    'VyX3NwZWFrGAYgASgLMiUucHJvdG9jb2wuQWxleGFTcGVlY2hTeW50aGVzaXplclNwZWFrUhZz'
    'cGVlY2hzeW50aGVzaXplclNwZWFrEjoKC2F1dGhfc3RhdHVzGAcgASgOMhkucHJvdG9jb2wuQW'
    'xleGFBdXRoU3RhdHVzUgphdXRoU3RhdHVzElYKE2FsZXJ0c19kZWxldGVhbGVydHMYDCABKAsy'
    'JS5wcm90b2NvbC5BbGV4YUFsZXJ0c0RlbGV0ZUFsZXJ0Lkxpc3RSEmFsZXJ0c0RlbGV0ZWFsZX'
    'J0cxJnChpub3RpZmljYXRpb25zX3NldGluZGljYXRvchgNIAEoCzIoLnByb3RvY29sLkFsZXhh'
    'Tm90aWZpY2F0aW9uc1NldEluZGljYXRvclIZbm90aWZpY2F0aW9uc1NldGluZGljYXRvcho2Cg'
    'RMaXN0Ei4KBGxpc3QYASADKAsyGi5wcm90b2NvbC5BbGV4YUluc3RydWN0aW9uUgRsaXN0');

@$core.Deprecated('Use alexaTemplateGeneralDescriptor instead')
const AlexaTemplateGeneral$json = {
  '1': 'AlexaTemplateGeneral',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.AlexaTitle',
      '10': 'title'
    },
    {'1': 'text', '3': 2, '4': 2, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `AlexaTemplateGeneral`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaTemplateGeneralDescriptor = $convert.base64Decode(
    'ChRBbGV4YVRlbXBsYXRlR2VuZXJhbBIqCgV0aXRsZRgBIAIoCzIULnByb3RvY29sLkFsZXhhVG'
    'l0bGVSBXRpdGxlEhIKBHRleHQYAiACKAlSBHRleHQ=');

@$core.Deprecated('Use alexaTemplateWeatherDescriptor instead')
const AlexaTemplateWeather$json = {
  '1': 'AlexaTemplateWeather',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.AlexaTitle',
      '10': 'title'
    },
    {'1': 'current_weather', '3': 2, '4': 2, '5': 9, '10': 'currentWeather'},
    {'1': 'description', '3': 3, '4': 2, '5': 9, '10': 'description'},
    {'1': 'high_temperature', '3': 4, '4': 2, '5': 9, '10': 'highTemperature'},
    {'1': 'low_temperature', '3': 5, '4': 2, '5': 9, '10': 'lowTemperature'},
    {'1': 'image', '3': 6, '4': 2, '5': 9, '10': 'image'},
    {
      '1': 'weatherForecast',
      '3': 7,
      '4': 2,
      '5': 11,
      '6': '.protocol.AlexaWeatherItem.List',
      '10': 'weatherForecast'
    },
    {'1': 'weather_code', '3': 8, '4': 2, '5': 5, '10': 'weatherCode'},
  ],
};

/// Descriptor for `AlexaTemplateWeather`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaTemplateWeatherDescriptor = $convert.base64Decode(
    'ChRBbGV4YVRlbXBsYXRlV2VhdGhlchIqCgV0aXRsZRgBIAIoCzIULnByb3RvY29sLkFsZXhhVG'
    'l0bGVSBXRpdGxlEicKD2N1cnJlbnRfd2VhdGhlchgCIAIoCVIOY3VycmVudFdlYXRoZXISIAoL'
    'ZGVzY3JpcHRpb24YAyACKAlSC2Rlc2NyaXB0aW9uEikKEGhpZ2hfdGVtcGVyYXR1cmUYBCACKA'
    'lSD2hpZ2hUZW1wZXJhdHVyZRInCg9sb3dfdGVtcGVyYXR1cmUYBSACKAlSDmxvd1RlbXBlcmF0'
    'dXJlEhQKBWltYWdlGAYgAigJUgVpbWFnZRJJCg93ZWF0aGVyRm9yZWNhc3QYByACKAsyHy5wcm'
    '90b2NvbC5BbGV4YVdlYXRoZXJJdGVtLkxpc3RSD3dlYXRoZXJGb3JlY2FzdBIhCgx3ZWF0aGVy'
    'X2NvZGUYCCACKAVSC3dlYXRoZXJDb2Rl');

@$core.Deprecated('Use alexaWeatherItemDescriptor instead')
const AlexaWeatherItem$json = {
  '1': 'AlexaWeatherItem',
  '2': [
    {'1': 'date', '3': 1, '4': 2, '5': 9, '10': 'date'},
    {'1': 'weekday', '3': 2, '4': 2, '5': 9, '10': 'weekday'},
    {'1': 'high_temperature', '3': 3, '4': 2, '5': 9, '10': 'highTemperature'},
    {'1': 'low_temperature', '3': 4, '4': 2, '5': 9, '10': 'lowTemperature'},
    {'1': 'image', '3': 5, '4': 2, '5': 9, '10': 'image'},
    {'1': 'weather_code', '3': 6, '4': 2, '5': 5, '10': 'weatherCode'},
  ],
  '3': [AlexaWeatherItem_List$json],
};

@$core.Deprecated('Use alexaWeatherItemDescriptor instead')
const AlexaWeatherItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AlexaWeatherItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `AlexaWeatherItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaWeatherItemDescriptor = $convert.base64Decode(
    'ChBBbGV4YVdlYXRoZXJJdGVtEhIKBGRhdGUYASACKAlSBGRhdGUSGAoHd2Vla2RheRgCIAIoCV'
    'IHd2Vla2RheRIpChBoaWdoX3RlbXBlcmF0dXJlGAMgAigJUg9oaWdoVGVtcGVyYXR1cmUSJwoP'
    'bG93X3RlbXBlcmF0dXJlGAQgAigJUg5sb3dUZW1wZXJhdHVyZRIUCgVpbWFnZRgFIAIoCVIFaW'
    '1hZ2USIQoMd2VhdGhlcl9jb2RlGAYgAigFUgt3ZWF0aGVyQ29kZRo2CgRMaXN0Ei4KBGxpc3QY'
    'ASADKAsyGi5wcm90b2NvbC5BbGV4YVdlYXRoZXJJdGVtUgRsaXN0');

@$core.Deprecated('Use alexaTemplateListsDescriptor instead')
const AlexaTemplateLists$json = {
  '1': 'AlexaTemplateLists',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.AlexaTitle',
      '10': 'title'
    },
    {
      '1': 'items',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.AlexaListsItem.List',
      '10': 'items'
    },
    {'1': 'exceed_max_items', '3': 3, '4': 2, '5': 8, '10': 'exceedMaxItems'},
  ],
};

/// Descriptor for `AlexaTemplateLists`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaTemplateListsDescriptor = $convert.base64Decode(
    'ChJBbGV4YVRlbXBsYXRlTGlzdHMSKgoFdGl0bGUYASACKAsyFC5wcm90b2NvbC5BbGV4YVRpdG'
    'xlUgV0aXRsZRIzCgVpdGVtcxgCIAIoCzIdLnByb3RvY29sLkFsZXhhTGlzdHNJdGVtLkxpc3RS'
    'BWl0ZW1zEigKEGV4Y2VlZF9tYXhfaXRlbXMYAyACKAhSDmV4Y2VlZE1heEl0ZW1z');

@$core.Deprecated('Use alexaListsItemDescriptor instead')
const AlexaListsItem$json = {
  '1': 'AlexaListsItem',
  '2': [
    {'1': 'left', '3': 1, '4': 2, '5': 9, '10': 'left'},
    {'1': 'right', '3': 2, '4': 2, '5': 9, '10': 'right'},
  ],
  '3': [AlexaListsItem_List$json],
};

@$core.Deprecated('Use alexaListsItemDescriptor instead')
const AlexaListsItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AlexaListsItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `AlexaListsItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaListsItemDescriptor = $convert.base64Decode(
    'Cg5BbGV4YUxpc3RzSXRlbRISCgRsZWZ0GAEgAigJUgRsZWZ0EhQKBXJpZ2h0GAIgAigJUgVyaW'
    'dodBo0CgRMaXN0EiwKBGxpc3QYASADKAsyGC5wcm90b2NvbC5BbGV4YUxpc3RzSXRlbVIEbGlz'
    'dA==');

@$core.Deprecated('Use alexaAlertsSetAlertDescriptor instead')
const AlexaAlertsSetAlert$json = {
  '1': 'AlexaAlertsSetAlert',
  '2': [
    {'1': 'token', '3': 1, '4': 2, '5': 9, '10': 'token'},
    {
      '1': 'type',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.AlexaAlertType',
      '10': 'type'
    },
    {'1': 'scheduledTime', '3': 3, '4': 2, '5': 9, '10': 'scheduledTime'},
    {'1': 'label', '3': 4, '4': 2, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `AlexaAlertsSetAlert`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaAlertsSetAlertDescriptor = $convert.base64Decode(
    'ChNBbGV4YUFsZXJ0c1NldEFsZXJ0EhQKBXRva2VuGAEgAigJUgV0b2tlbhIsCgR0eXBlGAIgAi'
    'gOMhgucHJvdG9jb2wuQWxleGFBbGVydFR5cGVSBHR5cGUSJAoNc2NoZWR1bGVkVGltZRgDIAIo'
    'CVINc2NoZWR1bGVkVGltZRIUCgVsYWJlbBgEIAIoCVIFbGFiZWw=');

@$core.Deprecated('Use alexaAlertsDeleteAlertDescriptor instead')
const AlexaAlertsDeleteAlert$json = {
  '1': 'AlexaAlertsDeleteAlert',
  '2': [
    {'1': 'token', '3': 1, '4': 2, '5': 9, '10': 'token'},
  ],
  '3': [AlexaAlertsDeleteAlert_List$json],
};

@$core.Deprecated('Use alexaAlertsDeleteAlertDescriptor instead')
const AlexaAlertsDeleteAlert_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AlexaAlertsDeleteAlert',
      '10': 'list'
    },
  ],
};

/// Descriptor for `AlexaAlertsDeleteAlert`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaAlertsDeleteAlertDescriptor = $convert.base64Decode(
    'ChZBbGV4YUFsZXJ0c0RlbGV0ZUFsZXJ0EhQKBXRva2VuGAEgAigJUgV0b2tlbho8CgRMaXN0Ej'
    'QKBGxpc3QYASADKAsyIC5wcm90b2NvbC5BbGV4YUFsZXJ0c0RlbGV0ZUFsZXJ0UgRsaXN0');

@$core.Deprecated('Use alexaSpeechSynthesizerSpeakDescriptor instead')
const AlexaSpeechSynthesizerSpeak$json = {
  '1': 'AlexaSpeechSynthesizerSpeak',
  '2': [
    {'1': 'text', '3': 1, '4': 2, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `AlexaSpeechSynthesizerSpeak`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaSpeechSynthesizerSpeakDescriptor =
    $convert.base64Decode(
        'ChtBbGV4YVNwZWVjaFN5bnRoZXNpemVyU3BlYWsSEgoEdGV4dBgBIAIoCVIEdGV4dA==');

@$core.Deprecated('Use alexaTitleDescriptor instead')
const AlexaTitle$json = {
  '1': 'AlexaTitle',
  '2': [
    {'1': 'main_title', '3': 1, '4': 2, '5': 9, '10': 'mainTitle'},
    {'1': 'sub_title', '3': 2, '4': 2, '5': 9, '10': 'subTitle'},
  ],
};

/// Descriptor for `AlexaTitle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaTitleDescriptor = $convert.base64Decode(
    'CgpBbGV4YVRpdGxlEh0KCm1haW5fdGl0bGUYASACKAlSCW1haW5UaXRsZRIbCglzdWJfdGl0bG'
    'UYAiACKAlSCHN1YlRpdGxl');

@$core.Deprecated('Use alexaNotificationsSetIndicatorDescriptor instead')
const AlexaNotificationsSetIndicator$json = {
  '1': 'AlexaNotificationsSetIndicator',
  '2': [
    {
      '1': 'playAudioIndicator',
      '3': 1,
      '4': 2,
      '5': 8,
      '10': 'playAudioIndicator'
    },
    {
      '1': 'persistVisualIndicator',
      '3': 2,
      '4': 2,
      '5': 8,
      '10': 'persistVisualIndicator'
    },
  ],
};

/// Descriptor for `AlexaNotificationsSetIndicator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List alexaNotificationsSetIndicatorDescriptor =
    $convert.base64Decode(
        'Ch5BbGV4YU5vdGlmaWNhdGlvbnNTZXRJbmRpY2F0b3ISLgoScGxheUF1ZGlvSW5kaWNhdG9yGA'
        'EgAigIUhJwbGF5QXVkaW9JbmRpY2F0b3ISNgoWcGVyc2lzdFZpc3VhbEluZGljYXRvchgCIAIo'
        'CFIWcGVyc2lzdFZpc3VhbEluZGljYXRvcg==');
