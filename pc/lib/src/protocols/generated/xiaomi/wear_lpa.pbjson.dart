// This is a generated file - do not edit.
//
// Generated from wear_lpa.proto.

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

@$core.Deprecated('Use telecomOperatorDescriptor instead')
const TelecomOperator$json = {
  '1': 'TelecomOperator',
  '2': [
    {'1': 'CHINA_MOBILE', '2': 1},
    {'1': 'CHINA_UNICOM', '2': 2},
    {'1': 'CHINA_TELECOM', '2': 3},
  ],
};

/// Descriptor for `TelecomOperator`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List telecomOperatorDescriptor = $convert.base64Decode(
    'Cg9UZWxlY29tT3BlcmF0b3ISEAoMQ0hJTkFfTU9CSUxFEAESEAoMQ0hJTkFfVU5JQ09NEAISEQ'
    'oNQ0hJTkFfVEVMRUNPTRAD');

@$core.Deprecated('Use lpaDescriptor instead')
const Lpa$json = {
  '1': 'Lpa',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'data'},
    {
      '1': 'euicc_info',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.EuiccInfo',
      '9': 0,
      '10': 'euiccInfo'
    },
    {
      '1': 'profile_list',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Profile.List',
      '9': 0,
      '10': 'profileList'
    },
    {
      '1': 'profile_operator',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProfileOperator',
      '9': 0,
      '10': 'profileOperator'
    },
    {
      '1': 'operate_result',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.OperateResult',
      '9': 0,
      '10': 'operateResult'
    },
    {
      '1': 'profile_prepare',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProfilePrepare',
      '9': 0,
      '10': 'profilePrepare'
    },
    {
      '1': 'profile_download',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProfileDownload',
      '9': 0,
      '10': 'profileDownload'
    },
    {
      '1': 'download_result',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.DownloadProgress',
      '9': 0,
      '10': 'downloadResult'
    },
    {
      '1': 'http_request',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.HttpRequest',
      '9': 0,
      '10': 'httpRequest'
    },
    {
      '1': 'http_response',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.HttpResponse',
      '9': 0,
      '10': 'httpResponse'
    },
  ],
  '4': [Lpa_LpaID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use lpaDescriptor instead')
const Lpa_LpaID$json = {
  '1': 'LpaID',
  '2': [
    {'1': 'COMMAND', '2': 0},
    {'1': 'GET_EUICC_INFO', '2': 1},
    {'1': 'GET_PROFILE_LIST', '2': 2},
    {'1': 'OPERATE_PROFILE', '2': 3},
    {'1': 'REPORT_OPERATE_RESULT', '2': 4},
    {'1': 'PREPARE_DOWNLOAD_PROFILE', '2': 5},
    {'1': 'DOWNLOAD_PROFILE', '2': 6},
    {'1': 'REPORT_DOWNLOAD_PROGRESS', '2': 7},
    {'1': 'REQUEST_HTTP', '2': 8},
    {'1': 'RESPONSE_HTTP', '2': 9},
  ],
};

/// Descriptor for `Lpa`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lpaDescriptor = $convert.base64Decode(
    'CgNMcGESFAoEZGF0YRgBIAEoCUgAUgRkYXRhEjQKCmV1aWNjX2luZm8YAiABKAsyEy5wcm90b2'
    'NvbC5FdWljY0luZm9IAFIJZXVpY2NJbmZvEjsKDHByb2ZpbGVfbGlzdBgDIAEoCzIWLnByb3Rv'
    'Y29sLlByb2ZpbGUuTGlzdEgAUgtwcm9maWxlTGlzdBJGChBwcm9maWxlX29wZXJhdG9yGAQgAS'
    'gLMhkucHJvdG9jb2wuUHJvZmlsZU9wZXJhdG9ySABSD3Byb2ZpbGVPcGVyYXRvchJACg5vcGVy'
    'YXRlX3Jlc3VsdBgFIAEoCzIXLnByb3RvY29sLk9wZXJhdGVSZXN1bHRIAFINb3BlcmF0ZVJlc3'
    'VsdBJDCg9wcm9maWxlX3ByZXBhcmUYBiABKAsyGC5wcm90b2NvbC5Qcm9maWxlUHJlcGFyZUgA'
    'Ug5wcm9maWxlUHJlcGFyZRJGChBwcm9maWxlX2Rvd25sb2FkGAcgASgLMhkucHJvdG9jb2wuUH'
    'JvZmlsZURvd25sb2FkSABSD3Byb2ZpbGVEb3dubG9hZBJFCg9kb3dubG9hZF9yZXN1bHQYCCAB'
    'KAsyGi5wcm90b2NvbC5Eb3dubG9hZFByb2dyZXNzSABSDmRvd25sb2FkUmVzdWx0EjoKDGh0dH'
    'BfcmVxdWVzdBgJIAEoCzIVLnByb3RvY29sLkh0dHBSZXF1ZXN0SABSC2h0dHBSZXF1ZXN0Ej0K'
    'DWh0dHBfcmVzcG9uc2UYCiABKAsyFi5wcm90b2NvbC5IdHRwUmVzcG9uc2VIAFIMaHR0cFJlc3'
    'BvbnNlIuUBCgVMcGFJRBILCgdDT01NQU5EEAASEgoOR0VUX0VVSUNDX0lORk8QARIUChBHRVRf'
    'UFJPRklMRV9MSVNUEAISEwoPT1BFUkFURV9QUk9GSUxFEAMSGQoVUkVQT1JUX09QRVJBVEVfUk'
    'VTVUxUEAQSHAoYUFJFUEFSRV9ET1dOTE9BRF9QUk9GSUxFEAUSFAoQRE9XTkxPQURfUFJPRklM'
    'RRAGEhwKGFJFUE9SVF9ET1dOTE9BRF9QUk9HUkVTUxAHEhAKDFJFUVVFU1RfSFRUUBAIEhEKDV'
    'JFU1BPTlNFX0hUVFAQCUIJCgdwYXlsb2Fk');

@$core.Deprecated('Use euiccInfoDescriptor instead')
const EuiccInfo$json = {
  '1': 'EuiccInfo',
  '2': [
    {'1': 'eid', '3': 1, '4': 2, '5': 12, '10': 'eid'},
    {'1': 'imei', '3': 2, '4': 2, '5': 9, '10': 'imei'},
  ],
};

/// Descriptor for `EuiccInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List euiccInfoDescriptor = $convert.base64Decode(
    'CglFdWljY0luZm8SEAoDZWlkGAEgAigMUgNlaWQSEgoEaW1laRgCIAIoCVIEaW1laQ==');

@$core.Deprecated('Use profileDescriptor instead')
const Profile$json = {
  '1': 'Profile',
  '2': [
    {'1': 'iccid', '3': 1, '4': 2, '5': 12, '10': 'iccid'},
    {'1': 'imei', '3': 2, '4': 2, '5': 9, '10': 'imei'},
    {'1': 'name', '3': 3, '4': 2, '5': 9, '10': 'name'},
    {'1': 'enable', '3': 4, '4': 2, '5': 8, '10': 'enable'},
  ],
  '3': [Profile_List$json],
};

@$core.Deprecated('Use profileDescriptor instead')
const Profile_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.Profile',
      '10': 'list'
    },
  ],
};

/// Descriptor for `Profile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDescriptor = $convert.base64Decode(
    'CgdQcm9maWxlEhQKBWljY2lkGAEgAigMUgVpY2NpZBISCgRpbWVpGAIgAigJUgRpbWVpEhIKBG'
    '5hbWUYAyACKAlSBG5hbWUSFgoGZW5hYmxlGAQgAigIUgZlbmFibGUaLQoETGlzdBIlCgRsaXN0'
    'GAEgAygLMhEucHJvdG9jb2wuUHJvZmlsZVIEbGlzdA==');

@$core.Deprecated('Use profileOperatorDescriptor instead')
const ProfileOperator$json = {
  '1': 'ProfileOperator',
  '2': [
    {
      '1': 'cmd',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ProfileOperator.Cmd',
      '10': 'cmd'
    },
    {'1': 'iccid', '3': 2, '4': 2, '5': 12, '10': 'iccid'},
  ],
  '4': [ProfileOperator_Cmd$json],
};

@$core.Deprecated('Use profileOperatorDescriptor instead')
const ProfileOperator_Cmd$json = {
  '1': 'Cmd',
  '2': [
    {'1': 'ENABLE', '2': 0},
    {'1': 'DISABLE', '2': 1},
    {'1': 'DELETE', '2': 2},
  ],
};

/// Descriptor for `ProfileOperator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileOperatorDescriptor = $convert.base64Decode(
    'Cg9Qcm9maWxlT3BlcmF0b3ISLwoDY21kGAEgAigOMh0ucHJvdG9jb2wuUHJvZmlsZU9wZXJhdG'
    '9yLkNtZFIDY21kEhQKBWljY2lkGAIgAigMUgVpY2NpZCIqCgNDbWQSCgoGRU5BQkxFEAASCwoH'
    'RElTQUJMRRABEgoKBkRFTEVURRAC');

@$core.Deprecated('Use operateResultDescriptor instead')
const OperateResult$json = {
  '1': 'OperateResult',
  '2': [
    {'1': 'success', '3': 1, '4': 2, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `OperateResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operateResultDescriptor = $convert
    .base64Decode('Cg1PcGVyYXRlUmVzdWx0EhgKB3N1Y2Nlc3MYASACKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use profilePrepareDescriptor instead')
const ProfilePrepare$json = {
  '1': 'ProfilePrepare',
  '2': [
    {
      '1': 'telecom_operator',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.TelecomOperator',
      '10': 'telecomOperator'
    },
  ],
};

/// Descriptor for `ProfilePrepare`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profilePrepareDescriptor = $convert.base64Decode(
    'Cg5Qcm9maWxlUHJlcGFyZRJEChB0ZWxlY29tX29wZXJhdG9yGAEgAigOMhkucHJvdG9jb2wuVG'
    'VsZWNvbU9wZXJhdG9yUg90ZWxlY29tT3BlcmF0b3I=');

@$core.Deprecated('Use profileDownloadDescriptor instead')
const ProfileDownload$json = {
  '1': 'ProfileDownload',
  '2': [
    {'1': 'activation_code', '3': 1, '4': 2, '5': 9, '10': 'activationCode'},
    {
      '1': 'confirmation_code',
      '3': 2,
      '4': 2,
      '5': 9,
      '10': 'confirmationCode'
    },
  ],
};

/// Descriptor for `ProfileDownload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDownloadDescriptor = $convert.base64Decode(
    'Cg9Qcm9maWxlRG93bmxvYWQSJwoPYWN0aXZhdGlvbl9jb2RlGAEgAigJUg5hY3RpdmF0aW9uQ2'
    '9kZRIrChFjb25maXJtYXRpb25fY29kZRgCIAIoCVIQY29uZmlybWF0aW9uQ29kZQ==');

@$core.Deprecated('Use downloadProgressDescriptor instead')
const DownloadProgress$json = {
  '1': 'DownloadProgress',
  '2': [
    {'1': 'progress', '3': 1, '4': 2, '5': 5, '10': 'progress'},
  ],
};

/// Descriptor for `DownloadProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadProgressDescriptor = $convert.base64Decode(
    'ChBEb3dubG9hZFByb2dyZXNzEhoKCHByb2dyZXNzGAEgAigFUghwcm9ncmVzcw==');

@$core.Deprecated('Use httpRequestDescriptor instead')
const HttpRequest$json = {
  '1': 'HttpRequest',
  '2': [
    {'1': 'xid', '3': 1, '4': 2, '5': 4, '10': 'xid'},
    {'1': 'url', '3': 2, '4': 2, '5': 9, '10': 'url'},
    {'1': 'payload', '3': 3, '4': 2, '5': 9, '10': 'payload'},
  ],
};

/// Descriptor for `HttpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpRequestDescriptor = $convert.base64Decode(
    'CgtIdHRwUmVxdWVzdBIQCgN4aWQYASACKARSA3hpZBIQCgN1cmwYAiACKAlSA3VybBIYCgdwYX'
    'lsb2FkGAMgAigJUgdwYXlsb2Fk');

@$core.Deprecated('Use httpResponseDescriptor instead')
const HttpResponse$json = {
  '1': 'HttpResponse',
  '2': [
    {'1': 'xid', '3': 1, '4': 2, '5': 4, '10': 'xid'},
    {'1': 'status_code', '3': 2, '4': 2, '5': 5, '10': 'statusCode'},
    {'1': 'result', '3': 3, '4': 2, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `HttpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpResponseDescriptor = $convert.base64Decode(
    'CgxIdHRwUmVzcG9uc2USEAoDeGlkGAEgAigEUgN4aWQSHwoLc3RhdHVzX2NvZGUYAiACKAVSCn'
    'N0YXR1c0NvZGUSFgoGcmVzdWx0GAMgAigJUgZyZXN1bHQ=');
