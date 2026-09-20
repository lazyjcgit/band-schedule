// This is a generated file - do not edit.
//
// Generated from wear_factory.proto.

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

@$core.Deprecated('Use factoryModeDescriptor instead')
const FactoryMode$json = {
  '1': 'FactoryMode',
  '2': [
    {'1': 'USER', '2': 0},
    {'1': 'USERDEBUG', '2': 1},
    {'1': 'ENG', '2': 2},
    {'1': 'SELE_CHECKING', '2': 3},
    {'1': 'MEDICAL_METER', '2': 4},
  ],
};

/// Descriptor for `FactoryMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List factoryModeDescriptor = $convert.base64Decode(
    'CgtGYWN0b3J5TW9kZRIICgRVU0VSEAASDQoJVVNFUkRFQlVHEAESBwoDRU5HEAISEQoNU0VMRV'
    '9DSEVDS0lORxADEhEKDU1FRElDQUxfTUVURVIQBA==');

@$core.Deprecated('Use factoryDescriptor instead')
const Factory$json = {
  '1': 'Factory',
  '2': [
    {
      '1': 'mode',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.protocol.FactoryMode',
      '9': 0,
      '10': 'mode'
    },
    {
      '1': 'nfc_list',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.NfcInfo.List',
      '9': 0,
      '10': 'nfcList'
    },
    {
      '1': 'file',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.FileInfo',
      '9': 0,
      '10': 'file'
    },
    {
      '1': 'image_request',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.PreviewImageRequest',
      '9': 0,
      '10': 'imageRequest'
    },
    {
      '1': 'image_response',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.PreviewImageResponse',
      '9': 0,
      '10': 'imageResponse'
    },
    {'1': 'brightness', '3': 6, '4': 1, '5': 13, '9': 0, '10': 'brightness'},
    {
      '1': 'self_checking_request',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.SelfChecking.Request',
      '9': 0,
      '10': 'selfCheckingRequest'
    },
    {
      '1': 'self_checking_response',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.SelfChecking.Response',
      '9': 0,
      '10': 'selfCheckingResponse'
    },
    {
      '1': 'self_checking_result',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.SelfChecking.Result',
      '9': 0,
      '10': 'selfCheckingResult'
    },
    {
      '1': 'sensor_capture_request',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.SensorCaptureRequest',
      '9': 0,
      '10': 'sensorCaptureRequest'
    },
    {
      '1': 'sensor_capture_response',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.SensorCaptureResponse',
      '9': 0,
      '10': 'sensorCaptureResponse'
    },
    {
      '1': 'sensor_confirm_request',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.SensorConfirmRequest',
      '9': 0,
      '10': 'sensorConfirmRequest'
    },
    {
      '1': 'sensor_confirm_response',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.SensorConfirmResponse',
      '9': 0,
      '10': 'sensorConfirmResponse'
    },
    {
      '1': 'app_info_list',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.CTA.AppInfo.List',
      '9': 0,
      '10': 'appInfoList'
    },
    {
      '1': 'app_behavior',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.CTA.AppBehavior',
      '9': 0,
      '10': 'appBehavior'
    },
    {
      '1': 'sensor_replay_request',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.SensorReplayRequest',
      '9': 0,
      '10': 'sensorReplayRequest'
    },
    {
      '1': 'sensor_replay_response',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.SensorReplayResponse',
      '9': 0,
      '10': 'sensorReplayResponse'
    },
    {
      '1': 'self_checking_step_request',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.SelfChecking.StepRequest',
      '9': 0,
      '10': 'selfCheckingStepRequest'
    },
    {
      '1': 'self_checking_step_result',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.SelfChecking.StepResult',
      '9': 0,
      '10': 'selfCheckingStepResult'
    },
    {'1': 'attp', '3': 128, '4': 1, '5': 9, '9': 0, '10': 'attp'},
  ],
  '4': [Factory_FactoryID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use factoryDescriptor instead')
const Factory_FactoryID$json = {
  '1': 'FactoryID',
  '2': [
    {'1': 'SET_MODE', '2': 0},
    {'1': 'GET_MODE', '2': 6},
    {'1': 'CONFIG_NFC', '2': 1},
    {'1': 'DUMP_FILE', '2': 2},
    {'1': 'PREVIEW_IMAGE', '2': 3},
    {'1': 'DUMP_MEDIA', '2': 4},
    {'1': 'SET_BRIGHTNESS', '2': 5},
    {'1': 'SELF_CHECKING_REQUEST', '2': 7},
    {'1': 'REPORT_SELF_CHECKING_RESULT', '2': 8},
    {'1': 'SELF_CHECKING_STEP_REQUEST', '2': 16},
    {'1': 'REPORT_SELF_CHECKING_STEP_RESULT', '2': 17},
    {'1': 'SENSOR_CAPTURE_REQUEST', '2': 10},
    {'1': 'SENSOR_CONFIRM_REQUEST', '2': 11},
    {'1': 'SENSOR_REPLAY_REQUEST', '2': 15},
    {'1': 'GET_APP_INFO_LIST', '2': 9},
    {'1': 'SUBSCRIBE_APP_BEHAVIOR', '2': 12},
    {'1': 'UNSUBSCRIBE_APP_BEHAVIOR', '2': 13},
    {'1': 'REPORT_APP_BEHAVIOR', '2': 14},
    {'1': 'SET_ATTP', '2': 128},
  ],
};

/// Descriptor for `Factory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List factoryDescriptor = $convert.base64Decode(
    'CgdGYWN0b3J5EisKBG1vZGUYASABKA4yFS5wcm90b2NvbC5GYWN0b3J5TW9kZUgAUgRtb2RlEj'
    'MKCG5mY19saXN0GAIgASgLMhYucHJvdG9jb2wuTmZjSW5mby5MaXN0SABSB25mY0xpc3QSKAoE'
    'ZmlsZRgDIAEoCzISLnByb3RvY29sLkZpbGVJbmZvSABSBGZpbGUSRAoNaW1hZ2VfcmVxdWVzdB'
    'gEIAEoCzIdLnByb3RvY29sLlByZXZpZXdJbWFnZVJlcXVlc3RIAFIMaW1hZ2VSZXF1ZXN0EkcK'
    'DmltYWdlX3Jlc3BvbnNlGAUgASgLMh4ucHJvdG9jb2wuUHJldmlld0ltYWdlUmVzcG9uc2VIAF'
    'INaW1hZ2VSZXNwb25zZRIgCgpicmlnaHRuZXNzGAYgASgNSABSCmJyaWdodG5lc3MSVAoVc2Vs'
    'Zl9jaGVja2luZ19yZXF1ZXN0GAcgASgLMh4ucHJvdG9jb2wuU2VsZkNoZWNraW5nLlJlcXVlc3'
    'RIAFITc2VsZkNoZWNraW5nUmVxdWVzdBJXChZzZWxmX2NoZWNraW5nX3Jlc3BvbnNlGAggASgL'
    'Mh8ucHJvdG9jb2wuU2VsZkNoZWNraW5nLlJlc3BvbnNlSABSFHNlbGZDaGVja2luZ1Jlc3Bvbn'
    'NlElEKFHNlbGZfY2hlY2tpbmdfcmVzdWx0GAkgASgLMh0ucHJvdG9jb2wuU2VsZkNoZWNraW5n'
    'LlJlc3VsdEgAUhJzZWxmQ2hlY2tpbmdSZXN1bHQSVgoWc2Vuc29yX2NhcHR1cmVfcmVxdWVzdB'
    'gKIAEoCzIeLnByb3RvY29sLlNlbnNvckNhcHR1cmVSZXF1ZXN0SABSFHNlbnNvckNhcHR1cmVS'
    'ZXF1ZXN0ElkKF3NlbnNvcl9jYXB0dXJlX3Jlc3BvbnNlGAsgASgLMh8ucHJvdG9jb2wuU2Vuc2'
    '9yQ2FwdHVyZVJlc3BvbnNlSABSFXNlbnNvckNhcHR1cmVSZXNwb25zZRJWChZzZW5zb3JfY29u'
    'ZmlybV9yZXF1ZXN0GAwgASgLMh4ucHJvdG9jb2wuU2Vuc29yQ29uZmlybVJlcXVlc3RIAFIUc2'
    'Vuc29yQ29uZmlybVJlcXVlc3QSWQoXc2Vuc29yX2NvbmZpcm1fcmVzcG9uc2UYDSABKAsyHy5w'
    'cm90b2NvbC5TZW5zb3JDb25maXJtUmVzcG9uc2VIAFIVc2Vuc29yQ29uZmlybVJlc3BvbnNlEk'
    'AKDWFwcF9pbmZvX2xpc3QYDiABKAsyGi5wcm90b2NvbC5DVEEuQXBwSW5mby5MaXN0SABSC2Fw'
    'cEluZm9MaXN0Ej4KDGFwcF9iZWhhdmlvchgPIAEoCzIZLnByb3RvY29sLkNUQS5BcHBCZWhhdm'
    'lvckgAUgthcHBCZWhhdmlvchJTChVzZW5zb3JfcmVwbGF5X3JlcXVlc3QYECABKAsyHS5wcm90'
    'b2NvbC5TZW5zb3JSZXBsYXlSZXF1ZXN0SABSE3NlbnNvclJlcGxheVJlcXVlc3QSVgoWc2Vuc2'
    '9yX3JlcGxheV9yZXNwb25zZRgRIAEoCzIeLnByb3RvY29sLlNlbnNvclJlcGxheVJlc3BvbnNl'
    'SABSFHNlbnNvclJlcGxheVJlc3BvbnNlEmEKGnNlbGZfY2hlY2tpbmdfc3RlcF9yZXF1ZXN0GB'
    'IgASgLMiIucHJvdG9jb2wuU2VsZkNoZWNraW5nLlN0ZXBSZXF1ZXN0SABSF3NlbGZDaGVja2lu'
    'Z1N0ZXBSZXF1ZXN0El4KGXNlbGZfY2hlY2tpbmdfc3RlcF9yZXN1bHQYEyABKAsyIS5wcm90b2'
    'NvbC5TZWxmQ2hlY2tpbmcuU3RlcFJlc3VsdEgAUhZzZWxmQ2hlY2tpbmdTdGVwUmVzdWx0EhUK'
    'BGF0dHAYgAEgASgJSABSBGF0dHAiywMKCUZhY3RvcnlJRBIMCghTRVRfTU9ERRAAEgwKCEdFVF'
    '9NT0RFEAYSDgoKQ09ORklHX05GQxABEg0KCURVTVBfRklMRRACEhEKDVBSRVZJRVdfSU1BR0UQ'
    'AxIOCgpEVU1QX01FRElBEAQSEgoOU0VUX0JSSUdIVE5FU1MQBRIZChVTRUxGX0NIRUNLSU5HX1'
    'JFUVVFU1QQBxIfChtSRVBPUlRfU0VMRl9DSEVDS0lOR19SRVNVTFQQCBIeChpTRUxGX0NIRUNL'
    'SU5HX1NURVBfUkVRVUVTVBAQEiQKIFJFUE9SVF9TRUxGX0NIRUNLSU5HX1NURVBfUkVTVUxUEB'
    'ESGgoWU0VOU09SX0NBUFRVUkVfUkVRVUVTVBAKEhoKFlNFTlNPUl9DT05GSVJNX1JFUVVFU1QQ'
    'CxIZChVTRU5TT1JfUkVQTEFZX1JFUVVFU1QQDxIVChFHRVRfQVBQX0lORk9fTElTVBAJEhoKFl'
    'NVQlNDUklCRV9BUFBfQkVIQVZJT1IQDBIcChhVTlNVQlNDUklCRV9BUFBfQkVIQVZJT1IQDRIX'
    'ChNSRVBPUlRfQVBQX0JFSEFWSU9SEA4SDQoIU0VUX0FUVFAQgAFCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use nfcInfoDescriptor instead')
const NfcInfo$json = {
  '1': 'NfcInfo',
  '2': [
    {'1': 'key', '3': 1, '4': 2, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 2, '5': 12, '10': 'value'},
  ],
  '3': [NfcInfo_List$json],
};

@$core.Deprecated('Use nfcInfoDescriptor instead')
const NfcInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.NfcInfo',
      '10': 'list'
    },
  ],
};

/// Descriptor for `NfcInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nfcInfoDescriptor = $convert.base64Decode(
    'CgdOZmNJbmZvEhAKA2tleRgBIAIoCVIDa2V5EhQKBXZhbHVlGAIgAigMUgV2YWx1ZRotCgRMaX'
    'N0EiUKBGxpc3QYASADKAsyES5wcm90b2NvbC5OZmNJbmZvUgRsaXN0');

@$core.Deprecated('Use fileInfoDescriptor instead')
const FileInfo$json = {
  '1': 'FileInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {'1': 'is_append', '3': 2, '4': 2, '5': 8, '10': 'isAppend'},
    {'1': 'data', '3': 3, '4': 2, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `FileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileInfoDescriptor = $convert.base64Decode(
    'CghGaWxlSW5mbxISCgRuYW1lGAEgAigJUgRuYW1lEhsKCWlzX2FwcGVuZBgCIAIoCFIIaXNBcH'
    'BlbmQSEgoEZGF0YRgDIAIoDFIEZGF0YQ==');

@$core.Deprecated('Use previewImageRequestDescriptor instead')
const PreviewImageRequest$json = {
  '1': 'PreviewImageRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `PreviewImageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List previewImageRequestDescriptor = $convert.base64Decode(
    'ChNQcmV2aWV3SW1hZ2VSZXF1ZXN0Eg4KAmlkGAEgAigJUgJpZBISCgRuYW1lGAIgAigJUgRuYW'
    '1l');

@$core.Deprecated('Use previewImageResponseDescriptor instead')
const PreviewImageResponse$json = {
  '1': 'PreviewImageResponse',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.PrepareStatus',
      '10': 'status'
    },
    {
      '1': 'expected_image_format',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protocol.ImageFormat',
      '10': 'expectedImageFormat'
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

/// Descriptor for `PreviewImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List previewImageResponseDescriptor = $convert.base64Decode(
    'ChRQcmV2aWV3SW1hZ2VSZXNwb25zZRIvCgZzdGF0dXMYASACKA4yFy5wcm90b2NvbC5QcmVwYX'
    'JlU3RhdHVzUgZzdGF0dXMSSQoVZXhwZWN0ZWRfaW1hZ2VfZm9ybWF0GAIgASgOMhUucHJvdG9j'
    'b2wuSW1hZ2VGb3JtYXRSE2V4cGVjdGVkSW1hZ2VGb3JtYXQSMgoVZXhwZWN0ZWRfc2xpY2VfbG'
    'VuZ3RoGAMgASgNUhNleHBlY3RlZFNsaWNlTGVuZ3Ro');

@$core.Deprecated('Use sensorCaptureRequestDescriptor instead')
const SensorCaptureRequest$json = {
  '1': 'SensorCaptureRequest',
  '2': [
    {
      '1': 'state',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SensorCaptureRequest.State',
      '10': 'state'
    },
    {
      '1': 'mode',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.SensorCaptureRequest.Mode',
      '10': 'mode'
    },
    {'1': 'timestamp', '3': 3, '4': 1, '5': 13, '10': 'timestamp'},
    {
      '1': 'meta_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.SensorCaptureRequest.MetaInfo',
      '10': 'metaInfo'
    },
    {
      '1': 'sensor_list',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.SensorCaptureRequest.Sensor.List',
      '10': 'sensorList'
    },
    {'1': 'setting_info', '3': 6, '4': 2, '5': 12, '10': 'settingInfo'},
  ],
  '3': [SensorCaptureRequest_MetaInfo$json, SensorCaptureRequest_Sensor$json],
  '4': [SensorCaptureRequest_State$json, SensorCaptureRequest_Mode$json],
};

@$core.Deprecated('Use sensorCaptureRequestDescriptor instead')
const SensorCaptureRequest_MetaInfo$json = {
  '1': 'MetaInfo',
  '2': [
    {'1': 'user_id', '3': 1, '4': 2, '5': 9, '10': 'userId'},
    {'1': 'sex', '3': 2, '4': 2, '5': 14, '6': '.protocol.Sex', '10': 'sex'},
    {'1': 'user_age', '3': 3, '4': 2, '5': 13, '10': 'userAge'},
    {'1': 'height', '3': 4, '4': 2, '5': 13, '10': 'height'},
    {'1': 'weight', '3': 5, '4': 2, '5': 2, '10': 'weight'},
    {'1': 'main_scene', '3': 6, '4': 2, '5': 9, '10': 'mainScene'},
    {'1': 'sub_scene', '3': 7, '4': 2, '5': 9, '10': 'subScene'},
  ],
};

@$core.Deprecated('Use sensorCaptureRequestDescriptor instead')
const SensorCaptureRequest_Sensor$json = {
  '1': 'Sensor',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    {'1': 'frequence', '3': 2, '4': 2, '5': 13, '10': 'frequence'},
  ],
  '3': [SensorCaptureRequest_Sensor_List$json],
};

@$core.Deprecated('Use sensorCaptureRequestDescriptor instead')
const SensorCaptureRequest_Sensor_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.SensorCaptureRequest.Sensor',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use sensorCaptureRequestDescriptor instead')
const SensorCaptureRequest_State$json = {
  '1': 'State',
  '2': [
    {'1': 'START_CAPTURE', '2': 1},
    {'1': 'STOP_CAPTURE', '2': 2},
    {'1': 'SYNC_CAPTURE', '2': 3},
    {'1': 'SET_CAPTURE', '2': 4},
  ],
};

@$core.Deprecated('Use sensorCaptureRequestDescriptor instead')
const SensorCaptureRequest_Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'ONLINE_CAPTURE', '2': 1},
    {'1': 'OFFLINE_CAPTURE', '2': 2},
    {'1': 'REALTIME_CAPTURE', '2': 3},
  ],
};

/// Descriptor for `SensorCaptureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorCaptureRequestDescriptor = $convert.base64Decode(
    'ChRTZW5zb3JDYXB0dXJlUmVxdWVzdBI6CgVzdGF0ZRgBIAIoDjIkLnByb3RvY29sLlNlbnNvck'
    'NhcHR1cmVSZXF1ZXN0LlN0YXRlUgVzdGF0ZRI3CgRtb2RlGAIgAigOMiMucHJvdG9jb2wuU2Vu'
    'c29yQ2FwdHVyZVJlcXVlc3QuTW9kZVIEbW9kZRIcCgl0aW1lc3RhbXAYAyABKA1SCXRpbWVzdG'
    'FtcBJECgltZXRhX2luZm8YBCABKAsyJy5wcm90b2NvbC5TZW5zb3JDYXB0dXJlUmVxdWVzdC5N'
    'ZXRhSW5mb1IIbWV0YUluZm8SSwoLc2Vuc29yX2xpc3QYBSABKAsyKi5wcm90b2NvbC5TZW5zb3'
    'JDYXB0dXJlUmVxdWVzdC5TZW5zb3IuTGlzdFIKc2Vuc29yTGlzdBIhCgxzZXR0aW5nX2luZm8Y'
    'BiACKAxSC3NldHRpbmdJbmZvGssBCghNZXRhSW5mbxIXCgd1c2VyX2lkGAEgAigJUgZ1c2VySW'
    'QSHwoDc2V4GAIgAigOMg0ucHJvdG9jb2wuU2V4UgNzZXgSGQoIdXNlcl9hZ2UYAyACKA1SB3Vz'
    'ZXJBZ2USFgoGaGVpZ2h0GAQgAigNUgZoZWlnaHQSFgoGd2VpZ2h0GAUgAigCUgZ3ZWlnaHQSHQ'
    'oKbWFpbl9zY2VuZRgGIAIoCVIJbWFpblNjZW5lEhsKCXN1Yl9zY2VuZRgHIAIoCVIIc3ViU2Nl'
    'bmUafQoGU2Vuc29yEhIKBHR5cGUYASACKA1SBHR5cGUSHAoJZnJlcXVlbmNlGAIgAigNUglmcm'
    'VxdWVuY2UaQQoETGlzdBI5CgRsaXN0GAEgAygLMiUucHJvdG9jb2wuU2Vuc29yQ2FwdHVyZVJl'
    'cXVlc3QuU2Vuc29yUgRsaXN0Ik8KBVN0YXRlEhEKDVNUQVJUX0NBUFRVUkUQARIQCgxTVE9QX0'
    'NBUFRVUkUQAhIQCgxTWU5DX0NBUFRVUkUQAxIPCgtTRVRfQ0FQVFVSRRAEIkUKBE1vZGUSEgoO'
    'T05MSU5FX0NBUFRVUkUQARITCg9PRkZMSU5FX0NBUFRVUkUQAhIUChBSRUFMVElNRV9DQVBUVV'
    'JFEAM=');

@$core.Deprecated('Use sensorCaptureResponseDescriptor instead')
const SensorCaptureResponse$json = {
  '1': 'SensorCaptureResponse',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 13, '10': 'code'},
    {'1': 'setting_info', '3': 2, '4': 2, '5': 12, '10': 'settingInfo'},
  ],
};

/// Descriptor for `SensorCaptureResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorCaptureResponseDescriptor = $convert.base64Decode(
    'ChVTZW5zb3JDYXB0dXJlUmVzcG9uc2USEgoEY29kZRgBIAIoDVIEY29kZRIhCgxzZXR0aW5nX2'
    'luZm8YAiACKAxSC3NldHRpbmdJbmZv');

@$core.Deprecated('Use sensorConfirmRequestDescriptor instead')
const SensorConfirmRequest$json = {
  '1': 'SensorConfirmRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 2, '5': 12, '10': 'dataId'},
    {'1': 'status', '3': 2, '4': 2, '5': 13, '10': 'status'},
  ],
};

/// Descriptor for `SensorConfirmRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorConfirmRequestDescriptor = $convert.base64Decode(
    'ChRTZW5zb3JDb25maXJtUmVxdWVzdBIXCgdkYXRhX2lkGAEgAigMUgZkYXRhSWQSFgoGc3RhdH'
    'VzGAIgAigNUgZzdGF0dXM=');

@$core.Deprecated('Use sensorConfirmResponseDescriptor instead')
const SensorConfirmResponse$json = {
  '1': 'SensorConfirmResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 2, '5': 13, '10': 'result'},
  ],
};

/// Descriptor for `SensorConfirmResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorConfirmResponseDescriptor =
    $convert.base64Decode(
        'ChVTZW5zb3JDb25maXJtUmVzcG9uc2USFgoGcmVzdWx0GAEgAigNUgZyZXN1bHQ=');

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking$json = {
  '1': 'SelfChecking',
  '3': [
    SelfChecking_Request$json,
    SelfChecking_Response$json,
    SelfChecking_Item$json,
    SelfChecking_Result$json,
    SelfChecking_StepRequest$json,
    SelfChecking_StepResult$json
  ],
  '4': [
    SelfChecking_Cmd$json,
    SelfChecking_Status$json,
    SelfChecking_Func$json
  ],
};

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking_Request$json = {
  '1': 'Request',
  '2': [
    {
      '1': 'cmd',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SelfChecking.Cmd',
      '10': 'cmd'
    },
  ],
};

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking_Response$json = {
  '1': 'Response',
  '2': [
    {
      '1': 'cmd',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SelfChecking.Cmd',
      '10': 'cmd'
    },
    {
      '1': 'status',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.SelfChecking.Status',
      '10': 'status'
    },
  ],
};

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking_Item$json = {
  '1': 'Item',
  '2': [
    {
      '1': 'func',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SelfChecking.Func',
      '10': 'func'
    },
    {'1': 'pass', '3': 2, '4': 2, '5': 8, '10': 'pass'},
  ],
};

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking_Result$json = {
  '1': 'Result',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.SelfChecking.Item',
      '10': 'items'
    },
    {'1': 'partial', '3': 2, '4': 1, '5': 8, '10': 'partial'},
  ],
};

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking_StepRequest$json = {
  '1': 'StepRequest',
  '2': [
    {
      '1': 'func',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SelfChecking.Func',
      '10': 'func'
    },
    {'1': 'step', '3': 2, '4': 2, '5': 13, '10': 'step'},
  ],
};

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking_StepResult$json = {
  '1': 'StepResult',
  '2': [
    {
      '1': 'func',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SelfChecking.Func',
      '10': 'func'
    },
    {'1': 'step', '3': 2, '4': 2, '5': 13, '10': 'step'},
    {'1': 'result', '3': 3, '4': 2, '5': 13, '10': 'result'},
  ],
};

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking_Cmd$json = {
  '1': 'Cmd',
  '2': [
    {'1': 'ENTER', '2': 0},
    {'1': 'START', '2': 1},
    {'1': 'EXIT', '2': 2},
  ],
};

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'OK', '2': 0},
    {'1': 'WILL_REBOOT', '2': 1},
    {'1': 'FAIL', '2': 2},
  ],
};

@$core.Deprecated('Use selfCheckingDescriptor instead')
const SelfChecking_Func$json = {
  '1': 'Func',
  '2': [
    {'1': 'BLUETOOTH', '2': 1},
    {'1': 'GNSS', '2': 2},
    {'1': 'NFC', '2': 3},
    {'1': 'WIFI', '2': 4},
    {'1': 'ESIM', '2': 5},
    {'1': 'ACC', '2': 6},
    {'1': 'GYRO', '2': 7},
    {'1': 'MAG', '2': 8},
    {'1': 'BARO', '2': 9},
    {'1': 'LIGHT', '2': 10},
    {'1': 'PPG', '2': 11},
    {'1': 'CAP', '2': 12},
    {'1': 'TEMP', '2': 13},
    {'1': 'CHARGE', '2': 14},
    {'1': 'BATTERY', '2': 15},
    {'1': 'DP', '2': 16},
    {'1': 'TP', '2': 17},
    {'1': 'KEY', '2': 18},
    {'1': 'ROTARY', '2': 19},
    {'1': 'MOTOR', '2': 20},
    {'1': 'STORAGE', '2': 21},
    {'1': 'AUDIO', '2': 22},
    {'1': 'DOU', '2': 23},
    {'1': 'MIC', '2': 24},
    {'1': 'PA', '2': 25},
    {'1': 'CAMERA', '2': 26},
    {'1': 'IMU', '2': 27},
    {'1': 'INDICATOR_LIGHT', '2': 28},
    {'1': 'PRIVACY_LIGHT', '2': 29},
    {'1': 'RANGE', '2': 30},
    {'1': 'HEART_RATE', '2': 31},
    {'1': 'BLOOD_OXYGEN', '2': 32},
    {'1': 'ECG', '2': 33},
  ],
};

/// Descriptor for `SelfChecking`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfCheckingDescriptor = $convert.base64Decode(
    'CgxTZWxmQ2hlY2tpbmcaNwoHUmVxdWVzdBIsCgNjbWQYASACKA4yGi5wcm90b2NvbC5TZWxmQ2'
    'hlY2tpbmcuQ21kUgNjbWQabwoIUmVzcG9uc2USLAoDY21kGAEgAigOMhoucHJvdG9jb2wuU2Vs'
    'ZkNoZWNraW5nLkNtZFIDY21kEjUKBnN0YXR1cxgCIAIoDjIdLnByb3RvY29sLlNlbGZDaGVja2'
    'luZy5TdGF0dXNSBnN0YXR1cxpLCgRJdGVtEi8KBGZ1bmMYASACKA4yGy5wcm90b2NvbC5TZWxm'
    'Q2hlY2tpbmcuRnVuY1IEZnVuYxISCgRwYXNzGAIgAigIUgRwYXNzGlUKBlJlc3VsdBIxCgVpdG'
    'VtcxgBIAMoCzIbLnByb3RvY29sLlNlbGZDaGVja2luZy5JdGVtUgVpdGVtcxIYCgdwYXJ0aWFs'
    'GAIgASgIUgdwYXJ0aWFsGlIKC1N0ZXBSZXF1ZXN0Ei8KBGZ1bmMYASACKA4yGy5wcm90b2NvbC'
    '5TZWxmQ2hlY2tpbmcuRnVuY1IEZnVuYxISCgRzdGVwGAIgAigNUgRzdGVwGmkKClN0ZXBSZXN1'
    'bHQSLwoEZnVuYxgBIAIoDjIbLnByb3RvY29sLlNlbGZDaGVja2luZy5GdW5jUgRmdW5jEhIKBH'
    'N0ZXAYAiACKA1SBHN0ZXASFgoGcmVzdWx0GAMgAigNUgZyZXN1bHQiJQoDQ21kEgkKBUVOVEVS'
    'EAASCQoFU1RBUlQQARIICgRFWElUEAIiKwoGU3RhdHVzEgYKAk9LEAASDwoLV0lMTF9SRUJPT1'
    'QQARIICgRGQUlMEAIi9wIKBEZ1bmMSDQoJQkxVRVRPT1RIEAESCAoER05TUxACEgcKA05GQxAD'
    'EggKBFdJRkkQBBIICgRFU0lNEAUSBwoDQUNDEAYSCAoER1lSTxAHEgcKA01BRxAIEggKBEJBUk'
    '8QCRIJCgVMSUdIVBAKEgcKA1BQRxALEgcKA0NBUBAMEggKBFRFTVAQDRIKCgZDSEFSR0UQDhIL'
    'CgdCQVRURVJZEA8SBgoCRFAQEBIGCgJUUBAREgcKA0tFWRASEgoKBlJPVEFSWRATEgkKBU1PVE'
    '9SEBQSCwoHU1RPUkFHRRAVEgkKBUFVRElPEBYSBwoDRE9VEBcSBwoDTUlDEBgSBgoCUEEQGRIK'
    'CgZDQU1FUkEQGhIHCgNJTVUQGxITCg9JTkRJQ0FUT1JfTElHSFQQHBIRCg1QUklWQUNZX0xJR0'
    'hUEB0SCQoFUkFOR0UQHhIOCgpIRUFSVF9SQVRFEB8SEAoMQkxPT0RfT1hZR0VOECASBwoDRUNH'
    'ECE=');

@$core.Deprecated('Use cTADescriptor instead')
const CTA$json = {
  '1': 'CTA',
  '3': [CTA_AppInfo$json, CTA_AppBehavior$json],
};

@$core.Deprecated('Use cTADescriptor instead')
const CTA_AppInfo$json = {
  '1': 'AppInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    {'1': 'version', '3': 3, '4': 2, '5': 9, '10': 'version'},
    {'1': 'update_time', '3': 4, '4': 2, '5': 9, '10': 'updateTime'},
  ],
  '3': [CTA_AppInfo_List$json],
};

@$core.Deprecated('Use cTADescriptor instead')
const CTA_AppInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.CTA.AppInfo',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use cTADescriptor instead')
const CTA_AppBehavior$json = {
  '1': 'AppBehavior',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {
      '1': 'items',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.KeyValueStr',
      '10': 'items'
    },
  ],
};

/// Descriptor for `CTA`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cTADescriptor = $convert.base64Decode(
    'CgNDVEEamwEKB0FwcEluZm8SDgoCaWQYASACKAlSAmlkEhIKBG5hbWUYAiACKAlSBG5hbWUSGA'
    'oHdmVyc2lvbhgDIAIoCVIHdmVyc2lvbhIfCgt1cGRhdGVfdGltZRgEIAIoCVIKdXBkYXRlVGlt'
    'ZRoxCgRMaXN0EikKBGxpc3QYASADKAsyFS5wcm90b2NvbC5DVEEuQXBwSW5mb1IEbGlzdBpOCg'
    'tBcHBCZWhhdmlvchISCgRuYW1lGAEgAigJUgRuYW1lEisKBWl0ZW1zGAIgAigLMhUucHJvdG9j'
    'b2wuS2V5VmFsdWVTdHJSBWl0ZW1z');

@$core.Deprecated('Use sensorReplayRequestDescriptor instead')
const SensorReplayRequest$json = {
  '1': 'SensorReplayRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    {'1': 'instance', '3': 2, '4': 2, '5': 13, '10': 'instance'},
    {'1': 'md5', '3': 3, '4': 2, '5': 12, '10': 'md5'},
  ],
};

/// Descriptor for `SensorReplayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorReplayRequestDescriptor = $convert.base64Decode(
    'ChNTZW5zb3JSZXBsYXlSZXF1ZXN0EhIKBHR5cGUYASACKA1SBHR5cGUSGgoIaW5zdGFuY2UYAi'
    'ACKA1SCGluc3RhbmNlEhAKA21kNRgDIAIoDFIDbWQ1');

@$core.Deprecated('Use sensorReplayResponseDescriptor instead')
const SensorReplayResponse$json = {
  '1': 'SensorReplayResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 2, '5': 13, '10': 'status'},
  ],
};

/// Descriptor for `SensorReplayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorReplayResponseDescriptor =
    $convert.base64Decode(
        'ChRTZW5zb3JSZXBsYXlSZXNwb25zZRIWCgZzdGF0dXMYASACKA1SBnN0YXR1cw==');
