// This is a generated file - do not edit.
//
// Generated from wear_market.proto.

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

@$core.Deprecated('Use apkTypeDescriptor instead')
const ApkType$json = {
  '1': 'ApkType',
  '2': [
    {'1': 'APP', '2': 0},
    {'1': 'WATCH_FACE', '2': 1},
  ],
};

/// Descriptor for `ApkType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List apkTypeDescriptor =
    $convert.base64Decode('CgdBcGtUeXBlEgcKA0FQUBAAEg4KCldBVENIX0ZBQ0UQAQ==');

@$core.Deprecated('Use installCodeDescriptor instead')
const InstallCode$json = {
  '1': 'InstallCode',
  '2': [
    {'1': 'VERSION_DOWNGRADE', '2': 0},
    {'1': 'LATEST_VERSION', '2': 1},
    {'1': 'APK_NOT_FOUND', '2': 2},
    {'1': 'WAITING_DOWNLOAD', '2': 3},
    {'1': 'DOWNLOADING', '2': 4},
    {'1': 'DOWNLOAD_FAILED', '2': 5},
    {'1': 'INSTALLING', '2': 6},
    {'1': 'INSTALL_SUCCESS', '2': 7},
    {'1': 'INSTALL_FAILED', '2': 8},
    {'1': 'CANCELLED', '2': 9},
  ],
};

/// Descriptor for `InstallCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List installCodeDescriptor = $convert.base64Decode(
    'CgtJbnN0YWxsQ29kZRIVChFWRVJTSU9OX0RPV05HUkFERRAAEhIKDkxBVEVTVF9WRVJTSU9OEA'
    'ESEQoNQVBLX05PVF9GT1VORBACEhQKEFdBSVRJTkdfRE9XTkxPQUQQAxIPCgtET1dOTE9BRElO'
    'RxAEEhMKD0RPV05MT0FEX0ZBSUxFRBAFEg4KCklOU1RBTExJTkcQBhITCg9JTlNUQUxMX1NVQ0'
    'NFU1MQBxISCg5JTlNUQUxMX0ZBSUxFRBAIEg0KCUNBTkNFTExFRBAJ');

@$core.Deprecated('Use marketDescriptor instead')
const Market$json = {
  '1': 'Market',
  '2': [
    {
      '1': 'apk',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.Apk',
      '9': 0,
      '10': 'apk'
    },
    {
      '1': 'apk_list',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.Apk.List',
      '9': 0,
      '10': 'apkList'
    },
    {
      '1': 'install_progress',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.InstallProgress',
      '9': 0,
      '10': 'installProgress'
    },
    {
      '1': 'market_message',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.MarketMessage',
      '9': 0,
      '10': 'marketMessage'
    },
  ],
  '4': [Market_MarketID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use marketDescriptor instead')
const Market_MarketID$json = {
  '1': 'MarketID',
  '2': [
    {'1': 'TRY_INSTALL_APK', '2': 0},
    {'1': 'TRY_INSTALL_APKS', '2': 1},
    {'1': 'REPORT_INSTALL_PROGRESS', '2': 2},
    {'1': 'TRY_INSTALL_APK_NEW', '2': 3},
    {'1': 'TRY_INSTALL_APKS_NEW', '2': 4},
    {'1': 'SEND_PHONE_MESSAGE', '2': 5},
    {'1': 'SEND_WEAR_MESSAGE', '2': 6},
  ],
};

/// Descriptor for `Market`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketDescriptor = $convert.base64Decode(
    'CgZNYXJrZXQSIQoDYXBrGAEgASgLMg0ucHJvdG9jb2wuQXBrSABSA2FwaxIvCghhcGtfbGlzdB'
    'gCIAEoCzISLnByb3RvY29sLkFway5MaXN0SABSB2Fwa0xpc3QSRgoQaW5zdGFsbF9wcm9ncmVz'
    'cxgDIAEoCzIZLnByb3RvY29sLkluc3RhbGxQcm9ncmVzc0gAUg9pbnN0YWxsUHJvZ3Jlc3MSQA'
    'oObWFya2V0X21lc3NhZ2UYBCABKAsyFy5wcm90b2NvbC5NYXJrZXRNZXNzYWdlSABSDW1hcmtl'
    'dE1lc3NhZ2UitAEKCE1hcmtldElEEhMKD1RSWV9JTlNUQUxMX0FQSxAAEhQKEFRSWV9JTlNUQU'
    'xMX0FQS1MQARIbChdSRVBPUlRfSU5TVEFMTF9QUk9HUkVTUxACEhcKE1RSWV9JTlNUQUxMX0FQ'
    'S19ORVcQAxIYChRUUllfSU5TVEFMTF9BUEtTX05FVxAEEhYKElNFTkRfUEhPTkVfTUVTU0FHRR'
    'AFEhUKEVNFTkRfV0VBUl9NRVNTQUdFEAZCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use apkDescriptor instead')
const Apk$json = {
  '1': 'Apk',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ApkType',
      '10': 'type'
    },
    {'1': 'package_name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'packageName'},
    {'1': 'url', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'url'},
    {
      '1': 'apk_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.ApkInfo',
      '9': 0,
      '10': 'apkInfo'
    },
  ],
  '3': [Apk_List$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use apkDescriptor instead')
const Apk_List$json = {
  '1': 'List',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.protocol.Apk', '10': 'list'},
  ],
};

/// Descriptor for `Apk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apkDescriptor = $convert.base64Decode(
    'CgNBcGsSJQoEdHlwZRgBIAIoDjIRLnByb3RvY29sLkFwa1R5cGVSBHR5cGUSIwoMcGFja2FnZV'
    '9uYW1lGAIgASgJSABSC3BhY2thZ2VOYW1lEhIKA3VybBgDIAEoCUgAUgN1cmwSLgoIYXBrX2lu'
    'Zm8YBCABKAsyES5wcm90b2NvbC5BcGtJbmZvSABSB2Fwa0luZm8aKQoETGlzdBIhCgRsaXN0GA'
    'EgAygLMg0ucHJvdG9jb2wuQXBrUgRsaXN0QgkKB3BheWxvYWQ=');

@$core.Deprecated('Use apkInfoDescriptor instead')
const ApkInfo$json = {
  '1': 'ApkInfo',
  '2': [
    {'1': 'package_name', '3': 1, '4': 2, '5': 9, '10': 'packageName'},
    {'1': 'package_hash', '3': 2, '4': 2, '5': 9, '10': 'packageHash'},
    {'1': 'version_code', '3': 3, '4': 2, '5': 4, '10': 'versionCode'},
  ],
};

/// Descriptor for `ApkInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apkInfoDescriptor = $convert.base64Decode(
    'CgdBcGtJbmZvEiEKDHBhY2thZ2VfbmFtZRgBIAIoCVILcGFja2FnZU5hbWUSIQoMcGFja2FnZV'
    '9oYXNoGAIgAigJUgtwYWNrYWdlSGFzaBIhCgx2ZXJzaW9uX2NvZGUYAyACKARSC3ZlcnNpb25D'
    'b2Rl');

@$core.Deprecated('Use installProgressDescriptor instead')
const InstallProgress$json = {
  '1': 'InstallProgress',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.InstallCode',
      '10': 'code'
    },
    {'1': 'package_name', '3': 2, '4': 2, '5': 9, '10': 'packageName'},
    {
      '1': 'download_progress',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'downloadProgress'
    },
  ],
};

/// Descriptor for `InstallProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List installProgressDescriptor = $convert.base64Decode(
    'Cg9JbnN0YWxsUHJvZ3Jlc3MSKQoEY29kZRgBIAIoDjIVLnByb3RvY29sLkluc3RhbGxDb2RlUg'
    'Rjb2RlEiEKDHBhY2thZ2VfbmFtZRgCIAIoCVILcGFja2FnZU5hbWUSKwoRZG93bmxvYWRfcHJv'
    'Z3Jlc3MYAyABKA1SEGRvd25sb2FkUHJvZ3Jlc3M=');

@$core.Deprecated('Use marketMessageDescriptor instead')
const MarketMessage$json = {
  '1': 'MarketMessage',
  '2': [
    {'1': 'content', '3': 1, '4': 2, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `MarketMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marketMessageDescriptor = $convert
    .base64Decode('Cg1NYXJrZXRNZXNzYWdlEhgKB2NvbnRlbnQYASACKAxSB2NvbnRlbnQ=');
