// This is a generated file - do not edit.
//
// Generated from wear_account.proto.

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

@$core.Deprecated('Use verifyModeDescriptor instead')
const VerifyMode$json = {
  '1': 'VerifyMode',
  '2': [
    {'1': 'SERVER_PSK', '2': 1},
    {'1': 'APP_LOCAL', '2': 2},
  ],
};

/// Descriptor for `VerifyMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List verifyModeDescriptor = $convert.base64Decode(
    'CgpWZXJpZnlNb2RlEg4KClNFUlZFUl9QU0sQARINCglBUFBfTE9DQUwQAg==');

@$core.Deprecated('Use oOBModeDescriptor instead')
const OOBMode$json = {
  '1': 'OOBMode',
  '2': [
    {'1': 'NO_OOB', '2': 0},
    {'1': 'NUMERIC_COMPARISON', '2': 1},
    {'1': 'DYNAMIC_CODE', '2': 2},
    {'1': 'BUTTON_CONFIRM', '2': 3},
  ],
};

/// Descriptor for `OOBMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List oOBModeDescriptor = $convert.base64Decode(
    'CgdPT0JNb2RlEgoKBk5PX09PQhAAEhYKEk5VTUVSSUNfQ09NUEFSSVNPThABEhAKDERZTkFNSU'
    'NfQ09ERRACEhIKDkJVVFRPTl9DT05GSVJNEAM=');

@$core.Deprecated('Use accountDescriptor instead')
const Account$json = {
  '1': 'Account',
  '2': [
    {'1': 'bind_status', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'bindStatus'},
    {'1': 'bind_key', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'bindKey'},
    {
      '1': 'error_code',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.protocol.Account.ErrorCode',
      '9': 0,
      '10': 'errorCode'
    },
    {
      '1': 'bind_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindInfo',
      '9': 0,
      '10': 'bindInfo'
    },
    {
      '1': 'bind_result',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindResult',
      '9': 0,
      '10': 'bindResult'
    },
    {'1': 'login_status', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'loginStatus'},
    {'1': 'verify_key', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'verifyKey'},
    {
      '1': 'verify_result',
      '3': 8,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'verifyResult'
    },
    {
      '1': 'bond_apply',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.BondApply',
      '9': 0,
      '10': 'bondApply'
    },
    {
      '1': 'bond_reply',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.BondReply',
      '9': 0,
      '10': 'bondReply'
    },
    {
      '1': 'bind_start_v2',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindStartV2',
      '9': 0,
      '10': 'bindStartV2'
    },
    {
      '1': 'bind_info_v2',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindInfoV2',
      '9': 0,
      '10': 'bindInfoV2'
    },
    {
      '1': 'psk_server_verify',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindPsk.ServerVerify',
      '9': 0,
      '10': 'pskServerVerify'
    },
    {
      '1': 'psk_device_verify',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindPsk.DeviceVerify',
      '9': 0,
      '10': 'pskDeviceVerify'
    },
    {
      '1': 'psk_app_confirm',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindPsk.AppConfirm',
      '9': 0,
      '10': 'pskAppConfirm'
    },
    {
      '1': 'psk_device_confirm',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindPsk.DeviceConfirm',
      '9': 0,
      '10': 'pskDeviceConfirm'
    },
    {
      '1': 'local_app_verify',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindLocal.AppVerify',
      '9': 0,
      '10': 'localAppVerify'
    },
    {
      '1': 'local_device_verify',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindLocal.DeviceVerify',
      '9': 0,
      '10': 'localDeviceVerify'
    },
    {
      '1': 'local_app_confirm',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindLocal.AppConfirm',
      '9': 0,
      '10': 'localAppConfirm'
    },
    {
      '1': 'local_device_confirm',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindLocal.DeviceConfirm',
      '9': 0,
      '10': 'localDeviceConfirm'
    },
    {
      '1': 'bind_result_v2',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.protocol.BindResultV2',
      '9': 0,
      '10': 'bindResultV2'
    },
    {
      '1': 'auth_app_verify',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.protocol.Auth.AppVerify',
      '9': 0,
      '10': 'authAppVerify'
    },
    {
      '1': 'auth_device_verify',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.protocol.Auth.DeviceVerify',
      '9': 0,
      '10': 'authDeviceVerify'
    },
    {
      '1': 'auth_app_confirm',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.protocol.Auth.AppConfirm',
      '9': 0,
      '10': 'authAppConfirm'
    },
    {
      '1': 'auth_device_confirm',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.protocol.Auth.DeviceConfirm',
      '9': 0,
      '10': 'authDeviceConfirm'
    },
    {
      '1': 'pass_token_apply',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.protocol.Login.PassTokenApply',
      '9': 0,
      '10': 'passTokenApply'
    },
    {
      '1': 'pass_token_reply',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.protocol.Login.PassTokenReply',
      '9': 0,
      '10': 'passTokenReply'
    },
    {
      '1': 'status_change',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.protocol.Login.StatusChange',
      '9': 0,
      '10': 'statusChange'
    },
  ],
  '4': [Account_AccountID$json, Account_ErrorCode$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use accountDescriptor instead')
const Account_AccountID$json = {
  '1': 'AccountID',
  '2': [
    {'1': 'BIND_STATUS', '2': 0},
    {'1': 'BIND_START', '2': 1},
    {'1': 'BIND_RESULT', '2': 2},
    {'1': 'LOGIN_STATUS', '2': 3},
    {'1': 'LOGIN_START', '2': 4},
    {'1': 'ACCOUNT_VERIFY', '2': 5},
    {'1': 'BOND_APPLY', '2': 16},
    {'1': 'BIND_START_V2', '2': 17},
    {'1': 'BIND_VERIFY', '2': 18},
    {'1': 'BIND_CONFIRM', '2': 19},
    {'1': 'BIND_RESULT_V2', '2': 25},
    {'1': 'AUTH_VERIFY', '2': 26},
    {'1': 'AUTH_CONFIRM', '2': 27},
    {'1': 'APPLY_DEVICE_PASSTOKEN', '2': 28},
    {'1': 'REPLY_DEVICE_PASSTOKEN', '2': 29},
    {'1': 'NOTIFY_LOGIN_STATUS_CHANGED', '2': 30},
  ],
};

@$core.Deprecated('Use accountDescriptor instead')
const Account_ErrorCode$json = {
  '1': 'ErrorCode',
  '2': [
    {'1': 'NO_ERROR', '2': 0},
    {'1': 'HAVE_BOUND', '2': 1},
    {'1': 'INFO_MISSING', '2': 2},
    {'1': 'INVALID_PARAM', '2': 3},
    {'1': 'NO_BOUND', '2': 4},
    {'1': 'SERVER_ERROR', '2': 5},
    {'1': 'CANCEL', '2': 6},
    {'1': 'VERIFY_ERROR', '2': 7},
    {'1': 'STATE_NOT_MATCH', '2': 8},
    {'1': 'USER_CHANGED', '2': 9},
    {'1': 'CONNECTION_REACH_LIMIT', '2': 10},
    {'1': 'UNKNOWN', '2': 100},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode(
    'CgdBY2NvdW50EiEKC2JpbmRfc3RhdHVzGAEgASgISABSCmJpbmRTdGF0dXMSGwoIYmluZF9rZX'
    'kYAiABKAlIAFIHYmluZEtleRI8CgplcnJvcl9jb2RlGAMgASgOMhsucHJvdG9jb2wuQWNjb3Vu'
    'dC5FcnJvckNvZGVIAFIJZXJyb3JDb2RlEjEKCWJpbmRfaW5mbxgEIAEoCzISLnByb3RvY29sLk'
    'JpbmRJbmZvSABSCGJpbmRJbmZvEjcKC2JpbmRfcmVzdWx0GAUgASgLMhQucHJvdG9jb2wuQmlu'
    'ZFJlc3VsdEgAUgpiaW5kUmVzdWx0EiMKDGxvZ2luX3N0YXR1cxgGIAEoCEgAUgtsb2dpblN0YX'
    'R1cxIfCgp2ZXJpZnlfa2V5GAcgASgJSABSCXZlcmlmeUtleRIlCg12ZXJpZnlfcmVzdWx0GAgg'
    'ASgISABSDHZlcmlmeVJlc3VsdBI0Cgpib25kX2FwcGx5GAkgASgLMhMucHJvdG9jb2wuQm9uZE'
    'FwcGx5SABSCWJvbmRBcHBseRI0Cgpib25kX3JlcGx5GAogASgLMhMucHJvdG9jb2wuQm9uZFJl'
    'cGx5SABSCWJvbmRSZXBseRI7Cg1iaW5kX3N0YXJ0X3YyGAsgASgLMhUucHJvdG9jb2wuQmluZF'
    'N0YXJ0VjJIAFILYmluZFN0YXJ0VjISOAoMYmluZF9pbmZvX3YyGAwgASgLMhQucHJvdG9jb2wu'
    'QmluZEluZm9WMkgAUgpiaW5kSW5mb1YyEkwKEXBza19zZXJ2ZXJfdmVyaWZ5GA0gASgLMh4ucH'
    'JvdG9jb2wuQmluZFBzay5TZXJ2ZXJWZXJpZnlIAFIPcHNrU2VydmVyVmVyaWZ5EkwKEXBza19k'
    'ZXZpY2VfdmVyaWZ5GA4gASgLMh4ucHJvdG9jb2wuQmluZFBzay5EZXZpY2VWZXJpZnlIAFIPcH'
    'NrRGV2aWNlVmVyaWZ5EkYKD3Bza19hcHBfY29uZmlybRgPIAEoCzIcLnByb3RvY29sLkJpbmRQ'
    'c2suQXBwQ29uZmlybUgAUg1wc2tBcHBDb25maXJtEk8KEnBza19kZXZpY2VfY29uZmlybRgQIA'
    'EoCzIfLnByb3RvY29sLkJpbmRQc2suRGV2aWNlQ29uZmlybUgAUhBwc2tEZXZpY2VDb25maXJt'
    'EkkKEGxvY2FsX2FwcF92ZXJpZnkYESABKAsyHS5wcm90b2NvbC5CaW5kTG9jYWwuQXBwVmVyaW'
    'Z5SABSDmxvY2FsQXBwVmVyaWZ5ElIKE2xvY2FsX2RldmljZV92ZXJpZnkYEiABKAsyIC5wcm90'
    'b2NvbC5CaW5kTG9jYWwuRGV2aWNlVmVyaWZ5SABSEWxvY2FsRGV2aWNlVmVyaWZ5EkwKEWxvY2'
    'FsX2FwcF9jb25maXJtGBMgASgLMh4ucHJvdG9jb2wuQmluZExvY2FsLkFwcENvbmZpcm1IAFIP'
    'bG9jYWxBcHBDb25maXJtElUKFGxvY2FsX2RldmljZV9jb25maXJtGBQgASgLMiEucHJvdG9jb2'
    'wuQmluZExvY2FsLkRldmljZUNvbmZpcm1IAFISbG9jYWxEZXZpY2VDb25maXJtEj4KDmJpbmRf'
    'cmVzdWx0X3YyGB0gASgLMhYucHJvdG9jb2wuQmluZFJlc3VsdFYySABSDGJpbmRSZXN1bHRWMh'
    'JCCg9hdXRoX2FwcF92ZXJpZnkYHiABKAsyGC5wcm90b2NvbC5BdXRoLkFwcFZlcmlmeUgAUg1h'
    'dXRoQXBwVmVyaWZ5EksKEmF1dGhfZGV2aWNlX3ZlcmlmeRgfIAEoCzIbLnByb3RvY29sLkF1dG'
    'guRGV2aWNlVmVyaWZ5SABSEGF1dGhEZXZpY2VWZXJpZnkSRQoQYXV0aF9hcHBfY29uZmlybRgg'
    'IAEoCzIZLnByb3RvY29sLkF1dGguQXBwQ29uZmlybUgAUg5hdXRoQXBwQ29uZmlybRJOChNhdX'
    'RoX2RldmljZV9jb25maXJtGCEgASgLMhwucHJvdG9jb2wuQXV0aC5EZXZpY2VDb25maXJtSABS'
    'EWF1dGhEZXZpY2VDb25maXJtEkoKEHBhc3NfdG9rZW5fYXBwbHkYIiABKAsyHi5wcm90b2NvbC'
    '5Mb2dpbi5QYXNzVG9rZW5BcHBseUgAUg5wYXNzVG9rZW5BcHBseRJKChBwYXNzX3Rva2VuX3Jl'
    'cGx5GCMgASgLMh4ucHJvdG9jb2wuTG9naW4uUGFzc1Rva2VuUmVwbHlIAFIOcGFzc1Rva2VuUm'
    'VwbHkSQwoNc3RhdHVzX2NoYW5nZRgkIAEoCzIcLnByb3RvY29sLkxvZ2luLlN0YXR1c0NoYW5n'
    'ZUgAUgxzdGF0dXNDaGFuZ2UiygIKCUFjY291bnRJRBIPCgtCSU5EX1NUQVRVUxAAEg4KCkJJTk'
    'RfU1RBUlQQARIPCgtCSU5EX1JFU1VMVBACEhAKDExPR0lOX1NUQVRVUxADEg8KC0xPR0lOX1NU'
    'QVJUEAQSEgoOQUNDT1VOVF9WRVJJRlkQBRIOCgpCT05EX0FQUExZEBASEQoNQklORF9TVEFSVF'
    '9WMhAREg8KC0JJTkRfVkVSSUZZEBISEAoMQklORF9DT05GSVJNEBMSEgoOQklORF9SRVNVTFRf'
    'VjIQGRIPCgtBVVRIX1ZFUklGWRAaEhAKDEFVVEhfQ09ORklSTRAbEhoKFkFQUExZX0RFVklDRV'
    '9QQVNTVE9LRU4QHBIaChZSRVBMWV9ERVZJQ0VfUEFTU1RPS0VOEB0SHwobTk9USUZZX0xPR0lO'
    'X1NUQVRVU19DSEFOR0VEEB4i3AEKCUVycm9yQ29kZRIMCghOT19FUlJPUhAAEg4KCkhBVkVfQk'
    '9VTkQQARIQCgxJTkZPX01JU1NJTkcQAhIRCg1JTlZBTElEX1BBUkFNEAMSDAoITk9fQk9VTkQQ'
    'BBIQCgxTRVJWRVJfRVJST1IQBRIKCgZDQU5DRUwQBhIQCgxWRVJJRllfRVJST1IQBxITCg9TVE'
    'FURV9OT1RfTUFUQ0gQCBIQCgxVU0VSX0NIQU5HRUQQCRIaChZDT05ORUNUSU9OX1JFQUNIX0xJ'
    'TUlUEAoSCwoHVU5LTk9XThBkQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use bindInfoDescriptor instead')
const BindInfo$json = {
  '1': 'BindInfo',
  '2': [
    {'1': 'bind_key', '3': 1, '4': 2, '5': 9, '10': 'bindKey'},
    {'1': 'did', '3': 2, '4': 2, '5': 9, '10': 'did'},
    {'1': 'model', '3': 3, '4': 2, '5': 9, '10': 'model'},
    {'1': 'mac', '3': 4, '4': 2, '5': 9, '10': 'mac'},
    {'1': 'sign', '3': 5, '4': 2, '5': 9, '10': 'sign'},
    {'1': 'serial_number', '3': 6, '4': 2, '5': 9, '10': 'serialNumber'},
  ],
};

/// Descriptor for `BindInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindInfoDescriptor = $convert.base64Decode(
    'CghCaW5kSW5mbxIZCghiaW5kX2tleRgBIAIoCVIHYmluZEtleRIQCgNkaWQYAiACKAlSA2RpZB'
    'IUCgVtb2RlbBgDIAIoCVIFbW9kZWwSEAoDbWFjGAQgAigJUgNtYWMSEgoEc2lnbhgFIAIoCVIE'
    'c2lnbhIjCg1zZXJpYWxfbnVtYmVyGAYgAigJUgxzZXJpYWxOdW1iZXI=');

@$core.Deprecated('Use bindResultDescriptor instead')
const BindResult$json = {
  '1': 'BindResult',
  '2': [
    {'1': 'user_id', '3': 1, '4': 2, '5': 9, '10': 'userId'},
    {'1': 'token', '3': 2, '4': 2, '5': 9, '10': 'token'},
    {
      '1': 'companion_device',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.CompanionDevice',
      '10': 'companionDevice'
    },
  ],
};

/// Descriptor for `BindResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindResultDescriptor = $convert.base64Decode(
    'CgpCaW5kUmVzdWx0EhcKB3VzZXJfaWQYASACKAlSBnVzZXJJZBIUCgV0b2tlbhgCIAIoCVIFdG'
    '9rZW4SRAoQY29tcGFuaW9uX2RldmljZRgDIAEoCzIZLnByb3RvY29sLkNvbXBhbmlvbkRldmlj'
    'ZVIPY29tcGFuaW9uRGV2aWNl');

@$core.Deprecated('Use companionDeviceDescriptor instead')
const CompanionDevice$json = {
  '1': 'CompanionDevice',
  '2': [
    {
      '1': 'device_type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.CompanionDevice.DeviceType',
      '10': 'deviceType'
    },
    {'1': 'system_version', '3': 2, '4': 1, '5': 2, '10': 'systemVersion'},
    {'1': 'device_name', '3': 3, '4': 2, '5': 9, '10': 'deviceName'},
    {'1': 'app_capability', '3': 4, '4': 1, '5': 13, '10': 'appCapability'},
    {'1': 'region', '3': 5, '4': 1, '5': 9, '10': 'region'},
    {'1': 'server_prefix', '3': 6, '4': 1, '5': 9, '10': 'serverPrefix'},
  ],
  '4': [CompanionDevice_DeviceType$json],
};

@$core.Deprecated('Use companionDeviceDescriptor instead')
const CompanionDevice_DeviceType$json = {
  '1': 'DeviceType',
  '2': [
    {'1': 'ANDROID', '2': 0},
    {'1': 'IOS', '2': 1},
    {'1': 'VELA', '2': 2},
    {'1': 'OTHER', '2': 15},
  ],
};

/// Descriptor for `CompanionDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List companionDeviceDescriptor = $convert.base64Decode(
    'Cg9Db21wYW5pb25EZXZpY2USRQoLZGV2aWNlX3R5cGUYASACKA4yJC5wcm90b2NvbC5Db21wYW'
    '5pb25EZXZpY2UuRGV2aWNlVHlwZVIKZGV2aWNlVHlwZRIlCg5zeXN0ZW1fdmVyc2lvbhgCIAEo'
    'AlINc3lzdGVtVmVyc2lvbhIfCgtkZXZpY2VfbmFtZRgDIAIoCVIKZGV2aWNlTmFtZRIlCg5hcH'
    'BfY2FwYWJpbGl0eRgEIAEoDVINYXBwQ2FwYWJpbGl0eRIWCgZyZWdpb24YBSABKAlSBnJlZ2lv'
    'bhIjCg1zZXJ2ZXJfcHJlZml4GAYgASgJUgxzZXJ2ZXJQcmVmaXgiNwoKRGV2aWNlVHlwZRILCg'
    'dBTkRST0lEEAASBwoDSU9TEAESCAoEVkVMQRACEgkKBU9USEVSEA8=');

@$core.Deprecated('Use bondApplyDescriptor instead')
const BondApply$json = {
  '1': 'BondApply',
  '2': [
    {'1': 'hash_user_id', '3': 1, '4': 2, '5': 12, '10': 'hashUserId'},
  ],
};

/// Descriptor for `BondApply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bondApplyDescriptor = $convert.base64Decode(
    'CglCb25kQXBwbHkSIAoMaGFzaF91c2VyX2lkGAEgAigMUgpoYXNoVXNlcklk');

@$core.Deprecated('Use bondReplyDescriptor instead')
const BondReply$json = {
  '1': 'BondReply',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.BondReply.Status',
      '10': 'status'
    },
  ],
  '4': [BondReply_Status$json],
};

@$core.Deprecated('Use bondReplyDescriptor instead')
const BondReply_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'NOT_SUPPORT', '2': 1},
    {'1': 'BOND_SUCCESS', '2': 2},
    {'1': 'BOND_FAIL', '2': 3},
  ],
};

/// Descriptor for `BondReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bondReplyDescriptor = $convert.base64Decode(
    'CglCb25kUmVwbHkSMgoGc3RhdHVzGAEgAigOMhoucHJvdG9jb2wuQm9uZFJlcGx5LlN0YXR1c1'
    'IGc3RhdHVzIjoKBlN0YXR1cxIPCgtOT1RfU1VQUE9SVBABEhAKDEJPTkRfU1VDQ0VTUxACEg0K'
    'CUJPTkRfRkFJTBAD');

@$core.Deprecated('Use bindStartV2Descriptor instead')
const BindStartV2$json = {
  '1': 'BindStartV2',
  '2': [
    {
      '1': 'check_dynamic_code',
      '3': 1,
      '4': 2,
      '5': 8,
      '10': 'checkDynamicCode'
    },
    {'1': 'hash_user_id', '3': 2, '4': 2, '5': 12, '10': 'hashUserId'},
    {'1': 'device_name', '3': 3, '4': 2, '5': 9, '10': 'deviceName'},
    {'1': 'pid', '3': 4, '4': 1, '5': 13, '10': 'pid'},
  ],
};

/// Descriptor for `BindStartV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindStartV2Descriptor = $convert.base64Decode(
    'CgtCaW5kU3RhcnRWMhIsChJjaGVja19keW5hbWljX2NvZGUYASACKAhSEGNoZWNrRHluYW1pY0'
    'NvZGUSIAoMaGFzaF91c2VyX2lkGAIgAigMUgpoYXNoVXNlcklkEh8KC2RldmljZV9uYW1lGAMg'
    'AigJUgpkZXZpY2VOYW1lEhAKA3BpZBgEIAEoDVIDcGlk');

@$core.Deprecated('Use bindInfoV2Descriptor instead')
const BindInfoV2$json = {
  '1': 'BindInfoV2',
  '2': [
    {
      '1': 'verify_mode',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.VerifyMode',
      '10': 'verifyMode'
    },
    {'1': 'serial_number', '3': 2, '4': 2, '5': 9, '10': 'serialNumber'},
    {'1': 'mac', '3': 3, '4': 2, '5': 9, '10': 'mac'},
    {'1': 'model', '3': 4, '4': 2, '5': 9, '10': 'model'},
    {
      '1': 'oob_mode',
      '3': 5,
      '4': 2,
      '5': 14,
      '6': '.protocol.OOBMode',
      '10': 'oobMode'
    },
    {'1': 'device_random', '3': 6, '4': 2, '5': 12, '10': 'deviceRandom'},
    {'1': 'did', '3': 7, '4': 2, '5': 9, '10': 'did'},
  ],
};

/// Descriptor for `BindInfoV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindInfoV2Descriptor = $convert.base64Decode(
    'CgpCaW5kSW5mb1YyEjUKC3ZlcmlmeV9tb2RlGAEgAigOMhQucHJvdG9jb2wuVmVyaWZ5TW9kZV'
    'IKdmVyaWZ5TW9kZRIjCg1zZXJpYWxfbnVtYmVyGAIgAigJUgxzZXJpYWxOdW1iZXISEAoDbWFj'
    'GAMgAigJUgNtYWMSFAoFbW9kZWwYBCACKAlSBW1vZGVsEiwKCG9vYl9tb2RlGAUgAigOMhEucH'
    'JvdG9jb2wuT09CTW9kZVIHb29iTW9kZRIjCg1kZXZpY2VfcmFuZG9tGAYgAigMUgxkZXZpY2VS'
    'YW5kb20SEAoDZGlkGAcgAigJUgNkaWQ=');

@$core.Deprecated('Use bindPskDescriptor instead')
const BindPsk$json = {
  '1': 'BindPsk',
  '3': [
    BindPsk_ServerVerify$json,
    BindPsk_DeviceVerify$json,
    BindPsk_AppConfirm$json,
    BindPsk_DeviceConfirm$json,
    BindPsk_ResultInfo$json
  ],
};

@$core.Deprecated('Use bindPskDescriptor instead')
const BindPsk_ServerVerify$json = {
  '1': 'ServerVerify',
  '2': [
    {
      '1': 'server_public_key',
      '3': 1,
      '4': 2,
      '5': 12,
      '10': 'serverPublicKey'
    },
    {'1': 'server_sign', '3': 2, '4': 2, '5': 12, '10': 'serverSign'},
    {'1': 'server_random', '3': 3, '4': 2, '5': 12, '10': 'serverRandom'},
  ],
};

@$core.Deprecated('Use bindPskDescriptor instead')
const BindPsk_DeviceVerify$json = {
  '1': 'DeviceVerify',
  '2': [
    {
      '1': 'device_public_key',
      '3': 1,
      '4': 2,
      '5': 12,
      '10': 'devicePublicKey'
    },
    {'1': 'device_sign', '3': 2, '4': 2, '5': 12, '10': 'deviceSign'},
  ],
};

@$core.Deprecated('Use bindPskDescriptor instead')
const BindPsk_AppConfirm$json = {
  '1': 'AppConfirm',
  '2': [
    {'1': 'app_random', '3': 1, '4': 2, '5': 12, '10': 'appRandom'},
    {'1': 'app_sign', '3': 2, '4': 2, '5': 12, '10': 'appSign'},
    {'1': 'bind_key', '3': 3, '4': 2, '5': 12, '10': 'bindKey'},
  ],
};

@$core.Deprecated('Use bindPskDescriptor instead')
const BindPsk_DeviceConfirm$json = {
  '1': 'DeviceConfirm',
  '2': [
    {'1': 'device_random', '3': 1, '4': 2, '5': 12, '10': 'deviceRandom'},
    {'1': 'device_sign', '3': 2, '4': 2, '5': 12, '10': 'deviceSign'},
    {'1': 'bind_sign', '3': 3, '4': 2, '5': 12, '10': 'bindSign'},
  ],
};

@$core.Deprecated('Use bindPskDescriptor instead')
const BindPsk_ResultInfo$json = {
  '1': 'ResultInfo',
  '2': [
    {'1': 'user_id', '3': 1, '4': 2, '5': 9, '10': 'userId'},
    {
      '1': 'companion_device',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.CompanionDevice',
      '10': 'companionDevice'
    },
  ],
};

/// Descriptor for `BindPsk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindPskDescriptor = $convert.base64Decode(
    'CgdCaW5kUHNrGoABCgxTZXJ2ZXJWZXJpZnkSKgoRc2VydmVyX3B1YmxpY19rZXkYASACKAxSD3'
    'NlcnZlclB1YmxpY0tleRIfCgtzZXJ2ZXJfc2lnbhgCIAIoDFIKc2VydmVyU2lnbhIjCg1zZXJ2'
    'ZXJfcmFuZG9tGAMgAigMUgxzZXJ2ZXJSYW5kb20aWwoMRGV2aWNlVmVyaWZ5EioKEWRldmljZV'
    '9wdWJsaWNfa2V5GAEgAigMUg9kZXZpY2VQdWJsaWNLZXkSHwoLZGV2aWNlX3NpZ24YAiACKAxS'
    'CmRldmljZVNpZ24aYQoKQXBwQ29uZmlybRIdCgphcHBfcmFuZG9tGAEgAigMUglhcHBSYW5kb2'
    '0SGQoIYXBwX3NpZ24YAiACKAxSB2FwcFNpZ24SGQoIYmluZF9rZXkYAyACKAxSB2JpbmRLZXka'
    'cgoNRGV2aWNlQ29uZmlybRIjCg1kZXZpY2VfcmFuZG9tGAEgAigMUgxkZXZpY2VSYW5kb20SHw'
    'oLZGV2aWNlX3NpZ24YAiACKAxSCmRldmljZVNpZ24SGwoJYmluZF9zaWduGAMgAigMUghiaW5k'
    'U2lnbhprCgpSZXN1bHRJbmZvEhcKB3VzZXJfaWQYASACKAlSBnVzZXJJZBJEChBjb21wYW5pb2'
    '5fZGV2aWNlGAIgASgLMhkucHJvdG9jb2wuQ29tcGFuaW9uRGV2aWNlUg9jb21wYW5pb25EZXZp'
    'Y2U=');

@$core.Deprecated('Use bindLocalDescriptor instead')
const BindLocal$json = {
  '1': 'BindLocal',
  '3': [
    BindLocal_AppVerify$json,
    BindLocal_DeviceVerify$json,
    BindLocal_AppConfirm$json,
    BindLocal_DeviceConfirm$json,
    BindLocal_ResultInfo$json
  ],
};

@$core.Deprecated('Use bindLocalDescriptor instead')
const BindLocal_AppVerify$json = {
  '1': 'AppVerify',
  '2': [
    {'1': 'app_device_id', '3': 1, '4': 2, '5': 9, '10': 'appDeviceId'},
    {'1': 'app_public_key', '3': 2, '4': 2, '5': 12, '10': 'appPublicKey'},
  ],
};

@$core.Deprecated('Use bindLocalDescriptor instead')
const BindLocal_DeviceVerify$json = {
  '1': 'DeviceVerify',
  '2': [
    {
      '1': 'device_public_key',
      '3': 1,
      '4': 2,
      '5': 12,
      '10': 'devicePublicKey'
    },
    {'1': 'device_random', '3': 2, '4': 2, '5': 12, '10': 'deviceRandom'},
    {'1': 'device_sign', '3': 3, '4': 2, '5': 12, '10': 'deviceSign'},
  ],
};

@$core.Deprecated('Use bindLocalDescriptor instead')
const BindLocal_AppConfirm$json = {
  '1': 'AppConfirm',
  '2': [
    {'1': 'app_random', '3': 1, '4': 2, '5': 12, '10': 'appRandom'},
    {'1': 'app_sign', '3': 2, '4': 2, '5': 12, '10': 'appSign'},
  ],
};

@$core.Deprecated('Use bindLocalDescriptor instead')
const BindLocal_DeviceConfirm$json = {
  '1': 'DeviceConfirm',
  '2': [
    {'1': 'confirm_result', '3': 1, '4': 2, '5': 8, '10': 'confirmResult'},
  ],
};

@$core.Deprecated('Use bindLocalDescriptor instead')
const BindLocal_ResultInfo$json = {
  '1': 'ResultInfo',
  '2': [
    {'1': 'user_id', '3': 1, '4': 2, '5': 9, '10': 'userId'},
    {
      '1': 'companion_device',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.CompanionDevice',
      '10': 'companionDevice'
    },
  ],
};

/// Descriptor for `BindLocal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindLocalDescriptor = $convert.base64Decode(
    'CglCaW5kTG9jYWwaVQoJQXBwVmVyaWZ5EiIKDWFwcF9kZXZpY2VfaWQYASACKAlSC2FwcERldm'
    'ljZUlkEiQKDmFwcF9wdWJsaWNfa2V5GAIgAigMUgxhcHBQdWJsaWNLZXkagAEKDERldmljZVZl'
    'cmlmeRIqChFkZXZpY2VfcHVibGljX2tleRgBIAIoDFIPZGV2aWNlUHVibGljS2V5EiMKDWRldm'
    'ljZV9yYW5kb20YAiACKAxSDGRldmljZVJhbmRvbRIfCgtkZXZpY2Vfc2lnbhgDIAIoDFIKZGV2'
    'aWNlU2lnbhpGCgpBcHBDb25maXJtEh0KCmFwcF9yYW5kb20YASACKAxSCWFwcFJhbmRvbRIZCg'
    'hhcHBfc2lnbhgCIAIoDFIHYXBwU2lnbho2Cg1EZXZpY2VDb25maXJtEiUKDmNvbmZpcm1fcmVz'
    'dWx0GAEgAigIUg1jb25maXJtUmVzdWx0GmsKClJlc3VsdEluZm8SFwoHdXNlcl9pZBgBIAIoCV'
    'IGdXNlcklkEkQKEGNvbXBhbmlvbl9kZXZpY2UYAiACKAsyGS5wcm90b2NvbC5Db21wYW5pb25E'
    'ZXZpY2VSD2NvbXBhbmlvbkRldmljZQ==');

@$core.Deprecated('Use bindResultV2Descriptor instead')
const BindResultV2$json = {
  '1': 'BindResultV2',
  '2': [
    {
      '1': 'encrypt_result_info',
      '3': 1,
      '4': 2,
      '5': 12,
      '10': 'encryptResultInfo'
    },
  ],
};

/// Descriptor for `BindResultV2`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindResultV2Descriptor = $convert.base64Decode(
    'CgxCaW5kUmVzdWx0VjISLgoTZW5jcnlwdF9yZXN1bHRfaW5mbxgBIAIoDFIRZW5jcnlwdFJlc3'
    'VsdEluZm8=');

@$core.Deprecated('Use authDescriptor instead')
const Auth$json = {
  '1': 'Auth',
  '3': [
    Auth_AppVerify$json,
    Auth_DeviceVerify$json,
    Auth_AppConfirm$json,
    Auth_DeviceConfirm$json
  ],
};

@$core.Deprecated('Use authDescriptor instead')
const Auth_AppVerify$json = {
  '1': 'AppVerify',
  '2': [
    {'1': 'app_random', '3': 1, '4': 2, '5': 12, '10': 'appRandom'},
    {'1': 'app_device_id', '3': 2, '4': 1, '5': 9, '10': 'appDeviceId'},
    {
      '1': 'check_dynamic_code',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'checkDynamicCode'
    },
  ],
};

@$core.Deprecated('Use authDescriptor instead')
const Auth_DeviceVerify$json = {
  '1': 'DeviceVerify',
  '2': [
    {'1': 'device_random', '3': 1, '4': 2, '5': 12, '10': 'deviceRandom'},
    {'1': 'device_sign', '3': 2, '4': 2, '5': 12, '10': 'deviceSign'},
  ],
};

@$core.Deprecated('Use authDescriptor instead')
const Auth_AppConfirm$json = {
  '1': 'AppConfirm',
  '2': [
    {'1': 'app_sign', '3': 1, '4': 2, '5': 12, '10': 'appSign'},
    {
      '1': 'encrypt_companion_device',
      '3': 2,
      '4': 2,
      '5': 12,
      '10': 'encryptCompanionDevice'
    },
  ],
};

@$core.Deprecated('Use authDescriptor instead')
const Auth_DeviceConfirm$json = {
  '1': 'DeviceConfirm',
  '2': [
    {'1': 'confirm_result', '3': 1, '4': 2, '5': 8, '10': 'confirmResult'},
    {
      '1': 'device_capability',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'deviceCapability'
    },
    {
      '1': 'device_capability_2',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'deviceCapability2'
    },
  ],
};

/// Descriptor for `Auth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authDescriptor = $convert.base64Decode(
    'CgRBdXRoGnwKCUFwcFZlcmlmeRIdCgphcHBfcmFuZG9tGAEgAigMUglhcHBSYW5kb20SIgoNYX'
    'BwX2RldmljZV9pZBgCIAEoCVILYXBwRGV2aWNlSWQSLAoSY2hlY2tfZHluYW1pY19jb2RlGAMg'
    'ASgIUhBjaGVja0R5bmFtaWNDb2RlGlQKDERldmljZVZlcmlmeRIjCg1kZXZpY2VfcmFuZG9tGA'
    'EgAigMUgxkZXZpY2VSYW5kb20SHwoLZGV2aWNlX3NpZ24YAiACKAxSCmRldmljZVNpZ24aYQoK'
    'QXBwQ29uZmlybRIZCghhcHBfc2lnbhgBIAIoDFIHYXBwU2lnbhI4ChhlbmNyeXB0X2NvbXBhbm'
    'lvbl9kZXZpY2UYAiACKAxSFmVuY3J5cHRDb21wYW5pb25EZXZpY2UakwEKDURldmljZUNvbmZp'
    'cm0SJQoOY29uZmlybV9yZXN1bHQYASACKAhSDWNvbmZpcm1SZXN1bHQSKwoRZGV2aWNlX2NhcG'
    'FiaWxpdHkYAiABKA1SEGRldmljZUNhcGFiaWxpdHkSLgoTZGV2aWNlX2NhcGFiaWxpdHlfMhgD'
    'IAEoDVIRZGV2aWNlQ2FwYWJpbGl0eTI=');

@$core.Deprecated('Use loginDescriptor instead')
const Login$json = {
  '1': 'Login',
  '3': [
    Login_PassTokenApply$json,
    Login_PassTokenReply$json,
    Login_StatusChange$json
  ],
};

@$core.Deprecated('Use loginDescriptor instead')
const Login_PassTokenApply$json = {
  '1': 'PassTokenApply',
  '2': [
    {'1': 'transaction_id', '3': 1, '4': 2, '5': 4, '10': 'transactionId'},
    {'1': 'ua', '3': 2, '4': 2, '5': 9, '10': 'ua'},
    {'1': 'nonce', '3': 3, '4': 2, '5': 9, '10': 'nonce'},
    {'1': 'sign', '3': 4, '4': 2, '5': 9, '10': 'sign'},
  ],
};

@$core.Deprecated('Use loginDescriptor instead')
const Login_PassTokenReply$json = {
  '1': 'PassTokenReply',
  '2': [
    {'1': 'transaction_id', '3': 1, '4': 2, '5': 4, '10': 'transactionId'},
    {'1': 'login_data', '3': 2, '4': 2, '5': 9, '10': 'loginData'},
  ],
};

@$core.Deprecated('Use loginDescriptor instead')
const Login_StatusChange$json = {
  '1': 'StatusChange',
  '2': [
    {'1': 'status', '3': 1, '4': 2, '5': 13, '10': 'status'},
  ],
};

/// Descriptor for `Login`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginDescriptor = $convert.base64Decode(
    'CgVMb2dpbhpxCg5QYXNzVG9rZW5BcHBseRIlCg50cmFuc2FjdGlvbl9pZBgBIAIoBFINdHJhbn'
    'NhY3Rpb25JZBIOCgJ1YRgCIAIoCVICdWESFAoFbm9uY2UYAyACKAlSBW5vbmNlEhIKBHNpZ24Y'
    'BCACKAlSBHNpZ24aVgoOUGFzc1Rva2VuUmVwbHkSJQoOdHJhbnNhY3Rpb25faWQYASACKARSDX'
    'RyYW5zYWN0aW9uSWQSHQoKbG9naW5fZGF0YRgCIAIoCVIJbG9naW5EYXRhGiYKDFN0YXR1c0No'
    'YW5nZRIWCgZzdGF0dXMYASACKA1SBnN0YXR1cw==');
