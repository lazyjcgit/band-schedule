// This is a generated file - do not edit.
//
// Generated from wear_thirdparty_app.proto.

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

@$core.Deprecated('Use thirdpartyAppDescriptor instead')
const ThirdpartyApp$json = {
  '1': 'ThirdpartyApp',
  '2': [
    {
      '1': 'app_item_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.AppItem.List',
      '9': 0,
      '10': 'appItemList'
    },
    {
      '1': 'install_request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.AppInstaller.Request',
      '9': 0,
      '10': 'installRequest'
    },
    {
      '1': 'install_response',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.AppInstaller.Response',
      '9': 0,
      '10': 'installResponse'
    },
    {
      '1': 'install_result',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.AppInstaller.Result',
      '9': 0,
      '10': 'installResult'
    },
    {
      '1': 'basic_info',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.BasicInfo',
      '9': 0,
      '10': 'basicInfo'
    },
    {
      '1': 'launch_info',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.LaunchInfo',
      '9': 0,
      '10': 'launchInfo'
    },
    {
      '1': 'permission_info_list',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.PermissionInfo.List',
      '9': 0,
      '10': 'permissionInfoList'
    },
    {
      '1': 'app_status',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneAppStatus',
      '9': 0,
      '10': 'appStatus'
    },
    {
      '1': 'message_content',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.MessageContent',
      '9': 0,
      '10': 'messageContent'
    },
    {
      '1': 'wechat_license_request',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.WechatLicense.Request',
      '9': 0,
      '10': 'wechatLicenseRequest'
    },
    {
      '1': 'wechat_license_response',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.WechatLicense.Response',
      '9': 0,
      '10': 'wechatLicenseResponse'
    },
    {
      '1': 'mihome_request',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiHome.Request',
      '9': 0,
      '10': 'mihomeRequest'
    },
    {
      '1': 'mihome_list',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiHome.List',
      '9': 0,
      '10': 'mihomeList'
    },
    {
      '1': 'scene_request',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiHome.Scene.Request',
      '9': 0,
      '10': 'sceneRequest'
    },
    {
      '1': 'scene_list',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiHome.Scene.List',
      '9': 0,
      '10': 'sceneList'
    },
    {
      '1': 'scene_excutor',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiHome.Scene.Executor',
      '9': 0,
      '10': 'sceneExcutor'
    },
    {
      '1': 'scene_result',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiHome.Scene.Result',
      '9': 0,
      '10': 'sceneResult'
    },
    {
      '1': 'course_table',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.CourseTable',
      '9': 0,
      '10': 'courseTable'
    },
    {
      '1': 'blood_glucose',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.protocol.BloodGlucose',
      '9': 0,
      '10': 'bloodGlucose'
    },
  ],
  '4': [ThirdpartyApp_ThirdpartyAppID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use thirdpartyAppDescriptor instead')
const ThirdpartyApp_ThirdpartyAppID$json = {
  '1': 'ThirdpartyAppID',
  '2': [
    {'1': 'GET_INSTALLED_LIST', '2': 0},
    {'1': 'PREPARE_INSTALL_APP', '2': 1},
    {'1': 'REPORT_INSTALL_RESULT', '2': 2},
    {'1': 'REMOVE_APP', '2': 3},
    {'1': 'LAUNCH_APP', '2': 4},
    {'1': 'SYNC_PERMISSION_INFO', '2': 5},
    {'1': 'REQUEST_PHONE_APP_STATUS', '2': 6},
    {'1': 'SYNC_PHONE_APP_STATUS', '2': 7},
    {'1': 'SEND_PHONE_MESSAGE', '2': 8},
    {'1': 'SEND_WEAR_MESSAGE', '2': 9},
    {'1': 'REQUEST_WECHAT_LICENSE', '2': 10},
    {'1': 'RESPONSE_WECHAT_LICENSE', '2': 11},
    {'1': 'REQUEST_MIHOME', '2': 12},
    {'1': 'RESPONSE_MIHOME', '2': 13},
    {'1': 'REQUEST_SCENE', '2': 14},
    {'1': 'RESPONSE_SCENE', '2': 15},
    {'1': 'EXECUTE_SCENE', '2': 16},
    {'1': 'RESULT_SCENE', '2': 17},
    {'1': 'REQUEST_COURSE_TABLE', '2': 18},
    {'1': 'SYNC_COURSE_TABLE', '2': 19},
    {'1': 'SYNC_CURRENT_BLOOD_GLUCOSE', '2': 20},
  ],
};

/// Descriptor for `ThirdpartyApp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thirdpartyAppDescriptor = $convert.base64Decode(
    'Cg1UaGlyZHBhcnR5QXBwEjwKDWFwcF9pdGVtX2xpc3QYASABKAsyFi5wcm90b2NvbC5BcHBJdG'
    'VtLkxpc3RIAFILYXBwSXRlbUxpc3QSSQoPaW5zdGFsbF9yZXF1ZXN0GAIgASgLMh4ucHJvdG9j'
    'b2wuQXBwSW5zdGFsbGVyLlJlcXVlc3RIAFIOaW5zdGFsbFJlcXVlc3QSTAoQaW5zdGFsbF9yZX'
    'Nwb25zZRgDIAEoCzIfLnByb3RvY29sLkFwcEluc3RhbGxlci5SZXNwb25zZUgAUg9pbnN0YWxs'
    'UmVzcG9uc2USRgoOaW5zdGFsbF9yZXN1bHQYBCABKAsyHS5wcm90b2NvbC5BcHBJbnN0YWxsZX'
    'IuUmVzdWx0SABSDWluc3RhbGxSZXN1bHQSNAoKYmFzaWNfaW5mbxgFIAEoCzITLnByb3RvY29s'
    'LkJhc2ljSW5mb0gAUgliYXNpY0luZm8SNwoLbGF1bmNoX2luZm8YBiABKAsyFC5wcm90b2NvbC'
    '5MYXVuY2hJbmZvSABSCmxhdW5jaEluZm8SUQoUcGVybWlzc2lvbl9pbmZvX2xpc3QYByABKAsy'
    'HS5wcm90b2NvbC5QZXJtaXNzaW9uSW5mby5MaXN0SABSEnBlcm1pc3Npb25JbmZvTGlzdBI5Cg'
    'phcHBfc3RhdHVzGAggASgLMhgucHJvdG9jb2wuUGhvbmVBcHBTdGF0dXNIAFIJYXBwU3RhdHVz'
    'EkMKD21lc3NhZ2VfY29udGVudBgJIAEoCzIYLnByb3RvY29sLk1lc3NhZ2VDb250ZW50SABSDm'
    '1lc3NhZ2VDb250ZW50ElcKFndlY2hhdF9saWNlbnNlX3JlcXVlc3QYCiABKAsyHy5wcm90b2Nv'
    'bC5XZWNoYXRMaWNlbnNlLlJlcXVlc3RIAFIUd2VjaGF0TGljZW5zZVJlcXVlc3QSWgoXd2VjaG'
    'F0X2xpY2Vuc2VfcmVzcG9uc2UYDCABKAsyIC5wcm90b2NvbC5XZWNoYXRMaWNlbnNlLlJlc3Bv'
    'bnNlSABSFXdlY2hhdExpY2Vuc2VSZXNwb25zZRJBCg5taWhvbWVfcmVxdWVzdBgNIAEoCzIYLn'
    'Byb3RvY29sLk1pSG9tZS5SZXF1ZXN0SABSDW1paG9tZVJlcXVlc3QSOAoLbWlob21lX2xpc3QY'
    'DiABKAsyFS5wcm90b2NvbC5NaUhvbWUuTGlzdEgAUgptaWhvbWVMaXN0EkUKDXNjZW5lX3JlcX'
    'Vlc3QYDyABKAsyHi5wcm90b2NvbC5NaUhvbWUuU2NlbmUuUmVxdWVzdEgAUgxzY2VuZVJlcXVl'
    'c3QSPAoKc2NlbmVfbGlzdBgQIAEoCzIbLnByb3RvY29sLk1pSG9tZS5TY2VuZS5MaXN0SABSCX'
    'NjZW5lTGlzdBJGCg1zY2VuZV9leGN1dG9yGBEgASgLMh8ucHJvdG9jb2wuTWlIb21lLlNjZW5l'
    'LkV4ZWN1dG9ySABSDHNjZW5lRXhjdXRvchJCCgxzY2VuZV9yZXN1bHQYEiABKAsyHS5wcm90b2'
    'NvbC5NaUhvbWUuU2NlbmUuUmVzdWx0SABSC3NjZW5lUmVzdWx0EjoKDGNvdXJzZV90YWJsZRgT'
    'IAEoCzIVLnByb3RvY29sLkNvdXJzZVRhYmxlSABSC2NvdXJzZVRhYmxlEj0KDWJsb29kX2dsdW'
    'Nvc2UYFCABKAsyFi5wcm90b2NvbC5CbG9vZEdsdWNvc2VIAFIMYmxvb2RHbHVjb3NlIv4DCg9U'
    'aGlyZHBhcnR5QXBwSUQSFgoSR0VUX0lOU1RBTExFRF9MSVNUEAASFwoTUFJFUEFSRV9JTlNUQU'
    'xMX0FQUBABEhkKFVJFUE9SVF9JTlNUQUxMX1JFU1VMVBACEg4KClJFTU9WRV9BUFAQAxIOCgpM'
    'QVVOQ0hfQVBQEAQSGAoUU1lOQ19QRVJNSVNTSU9OX0lORk8QBRIcChhSRVFVRVNUX1BIT05FX0'
    'FQUF9TVEFUVVMQBhIZChVTWU5DX1BIT05FX0FQUF9TVEFUVVMQBxIWChJTRU5EX1BIT05FX01F'
    'U1NBR0UQCBIVChFTRU5EX1dFQVJfTUVTU0FHRRAJEhoKFlJFUVVFU1RfV0VDSEFUX0xJQ0VOU0'
    'UQChIbChdSRVNQT05TRV9XRUNIQVRfTElDRU5TRRALEhIKDlJFUVVFU1RfTUlIT01FEAwSEwoP'
    'UkVTUE9OU0VfTUlIT01FEA0SEQoNUkVRVUVTVF9TQ0VORRAOEhIKDlJFU1BPTlNFX1NDRU5FEA'
    '8SEQoNRVhFQ1VURV9TQ0VORRAQEhAKDFJFU1VMVF9TQ0VORRAREhgKFFJFUVVFU1RfQ09VUlNF'
    'X1RBQkxFEBISFQoRU1lOQ19DT1VSU0VfVEFCTEUQExIeChpTWU5DX0NVUlJFTlRfQkxPT0RfR0'
    'xVQ09TRRAUQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use appItemDescriptor instead')
const AppItem$json = {
  '1': 'AppItem',
  '2': [
    {'1': 'package_name', '3': 1, '4': 2, '5': 9, '10': 'packageName'},
    {'1': 'fingerprint', '3': 2, '4': 2, '5': 12, '10': 'fingerprint'},
    {'1': 'version_code', '3': 3, '4': 2, '5': 13, '10': 'versionCode'},
    {'1': 'can_remove', '3': 4, '4': 2, '5': 8, '10': 'canRemove'},
    {'1': 'app_name', '3': 5, '4': 2, '5': 9, '10': 'appName'},
  ],
  '3': [AppItem_List$json],
};

@$core.Deprecated('Use appItemDescriptor instead')
const AppItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AppItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `AppItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appItemDescriptor = $convert.base64Decode(
    'CgdBcHBJdGVtEiEKDHBhY2thZ2VfbmFtZRgBIAIoCVILcGFja2FnZU5hbWUSIAoLZmluZ2VycH'
    'JpbnQYAiACKAxSC2ZpbmdlcnByaW50EiEKDHZlcnNpb25fY29kZRgDIAIoDVILdmVyc2lvbkNv'
    'ZGUSHQoKY2FuX3JlbW92ZRgEIAIoCFIJY2FuUmVtb3ZlEhkKCGFwcF9uYW1lGAUgAigJUgdhcH'
    'BOYW1lGi0KBExpc3QSJQoEbGlzdBgBIAMoCzIRLnByb3RvY29sLkFwcEl0ZW1SBGxpc3Q=');

@$core.Deprecated('Use appInstallerDescriptor instead')
const AppInstaller$json = {
  '1': 'AppInstaller',
  '3': [
    AppInstaller_Request$json,
    AppInstaller_Response$json,
    AppInstaller_Result$json
  ],
};

@$core.Deprecated('Use appInstallerDescriptor instead')
const AppInstaller_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'package_name', '3': 1, '4': 2, '5': 9, '10': 'packageName'},
    {'1': 'version_code', '3': 2, '4': 2, '5': 13, '10': 'versionCode'},
    {'1': 'package_size', '3': 3, '4': 2, '5': 13, '10': 'packageSize'},
  ],
};

@$core.Deprecated('Use appInstallerDescriptor instead')
const AppInstaller_Response$json = {
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
      '1': 'expected_slice_length',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'expectedSliceLength'
    },
  ],
};

@$core.Deprecated('Use appInstallerDescriptor instead')
const AppInstaller_Result$json = {
  '1': 'Result',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.AppInstaller.Result.Code',
      '10': 'code'
    },
    {'1': 'package_name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'packageName'},
    {
      '1': 'app_item',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.AppItem',
      '9': 0,
      '10': 'appItem'
    },
  ],
  '4': [AppInstaller_Result_Code$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use appInstallerDescriptor instead')
const AppInstaller_Result_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'INSTALL_SUCCESS', '2': 0},
    {'1': 'INSTALL_FAILED', '2': 1},
    {'1': 'VERIFY_FAILED', '2': 2},
  ],
};

/// Descriptor for `AppInstaller`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInstallerDescriptor = $convert.base64Decode(
    'CgxBcHBJbnN0YWxsZXIacgoHUmVxdWVzdBIhCgxwYWNrYWdlX25hbWUYASACKAlSC3BhY2thZ2'
    'VOYW1lEiEKDHZlcnNpb25fY29kZRgCIAIoDVILdmVyc2lvbkNvZGUSIQoMcGFja2FnZV9zaXpl'
    'GAMgAigNUgtwYWNrYWdlU2l6ZRp+CghSZXNwb25zZRI+Cg5wcmVwYXJlX3N0YXR1cxgBIAIoDj'
    'IXLnByb3RvY29sLlByZXBhcmVTdGF0dXNSDXByZXBhcmVTdGF0dXMSMgoVZXhwZWN0ZWRfc2xp'
    'Y2VfbGVuZ3RoGAIgASgNUhNleHBlY3RlZFNsaWNlTGVuZ3RoGuQBCgZSZXN1bHQSNgoEY29kZR'
    'gBIAIoDjIiLnByb3RvY29sLkFwcEluc3RhbGxlci5SZXN1bHQuQ29kZVIEY29kZRIjCgxwYWNr'
    'YWdlX25hbWUYAiABKAlIAFILcGFja2FnZU5hbWUSLgoIYXBwX2l0ZW0YAyABKAsyES5wcm90b2'
    'NvbC5BcHBJdGVtSABSB2FwcEl0ZW0iQgoEQ29kZRITCg9JTlNUQUxMX1NVQ0NFU1MQABISCg5J'
    'TlNUQUxMX0ZBSUxFRBABEhEKDVZFUklGWV9GQUlMRUQQAkIJCgdwYXlsb2Fk');

@$core.Deprecated('Use basicInfoDescriptor instead')
const BasicInfo$json = {
  '1': 'BasicInfo',
  '2': [
    {'1': 'package_name', '3': 1, '4': 2, '5': 9, '10': 'packageName'},
    {'1': 'fingerprint', '3': 2, '4': 2, '5': 12, '10': 'fingerprint'},
  ],
};

/// Descriptor for `BasicInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicInfoDescriptor = $convert.base64Decode(
    'CglCYXNpY0luZm8SIQoMcGFja2FnZV9uYW1lGAEgAigJUgtwYWNrYWdlTmFtZRIgCgtmaW5nZX'
    'JwcmludBgCIAIoDFILZmluZ2VycHJpbnQ=');

@$core.Deprecated('Use launchInfoDescriptor instead')
const LaunchInfo$json = {
  '1': 'LaunchInfo',
  '2': [
    {
      '1': 'basic_info',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.BasicInfo',
      '10': 'basicInfo'
    },
    {'1': 'uri', '3': 2, '4': 2, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `LaunchInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List launchInfoDescriptor = $convert.base64Decode(
    'CgpMYXVuY2hJbmZvEjIKCmJhc2ljX2luZm8YASACKAsyEy5wcm90b2NvbC5CYXNpY0luZm9SCW'
    'Jhc2ljSW5mbxIQCgN1cmkYAiACKAlSA3VyaQ==');

@$core.Deprecated('Use permissionInfoDescriptor instead')
const PermissionInfo$json = {
  '1': 'PermissionInfo',
  '2': [
    {
      '1': 'basic_info',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.BasicInfo',
      '10': 'basicInfo'
    },
    {
      '1': 'grant_permissions',
      '3': 2,
      '4': 3,
      '5': 14,
      '6': '.protocol.PermissionInfo.Permission',
      '10': 'grantPermissions'
    },
  ],
  '3': [PermissionInfo_List$json],
  '4': [PermissionInfo_Permission$json],
};

@$core.Deprecated('Use permissionInfoDescriptor instead')
const PermissionInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.PermissionInfo',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use permissionInfoDescriptor instead')
const PermissionInfo_Permission$json = {
  '1': 'Permission',
  '2': [
    {'1': 'DEVICE_STATUS', '2': 1},
    {'1': 'USER_STATUS', '2': 2},
    {'1': 'BODY_SENSOR', '2': 3},
    {'1': 'MOTION_SENSOR', '2': 4},
    {'1': 'NOTIFY', '2': 5},
  ],
};

/// Descriptor for `PermissionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List permissionInfoDescriptor = $convert.base64Decode(
    'Cg5QZXJtaXNzaW9uSW5mbxIyCgpiYXNpY19pbmZvGAEgAigLMhMucHJvdG9jb2wuQmFzaWNJbm'
    'ZvUgliYXNpY0luZm8SUAoRZ3JhbnRfcGVybWlzc2lvbnMYAiADKA4yIy5wcm90b2NvbC5QZXJt'
    'aXNzaW9uSW5mby5QZXJtaXNzaW9uUhBncmFudFBlcm1pc3Npb25zGjQKBExpc3QSLAoEbGlzdB'
    'gBIAMoCzIYLnByb3RvY29sLlBlcm1pc3Npb25JbmZvUgRsaXN0ImAKClBlcm1pc3Npb24SEQoN'
    'REVWSUNFX1NUQVRVUxABEg8KC1VTRVJfU1RBVFVTEAISDwoLQk9EWV9TRU5TT1IQAxIRCg1NT1'
    'RJT05fU0VOU09SEAQSCgoGTk9USUZZEAU=');

@$core.Deprecated('Use phoneAppStatusDescriptor instead')
const PhoneAppStatus$json = {
  '1': 'PhoneAppStatus',
  '2': [
    {
      '1': 'basic_info',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.BasicInfo',
      '10': 'basicInfo'
    },
    {
      '1': 'status',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.PhoneAppStatus.Status',
      '10': 'status'
    },
  ],
  '4': [PhoneAppStatus_Status$json],
};

@$core.Deprecated('Use phoneAppStatusDescriptor instead')
const PhoneAppStatus_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'CONNECTED', '2': 1},
    {'1': 'DISCONNECTED', '2': 2},
    {'1': 'UNINSTALLED', '2': 3},
  ],
};

/// Descriptor for `PhoneAppStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneAppStatusDescriptor = $convert.base64Decode(
    'Cg5QaG9uZUFwcFN0YXR1cxIyCgpiYXNpY19pbmZvGAEgAigLMhMucHJvdG9jb2wuQmFzaWNJbm'
    'ZvUgliYXNpY0luZm8SNwoGc3RhdHVzGAIgAigOMh8ucHJvdG9jb2wuUGhvbmVBcHBTdGF0dXMu'
    'U3RhdHVzUgZzdGF0dXMiOgoGU3RhdHVzEg0KCUNPTk5FQ1RFRBABEhAKDERJU0NPTk5FQ1RFRB'
    'ACEg8KC1VOSU5TVEFMTEVEEAM=');

@$core.Deprecated('Use messageContentDescriptor instead')
const MessageContent$json = {
  '1': 'MessageContent',
  '2': [
    {
      '1': 'basic_info',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.BasicInfo',
      '10': 'basicInfo'
    },
    {'1': 'content', '3': 2, '4': 2, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `MessageContent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageContentDescriptor = $convert.base64Decode(
    'Cg5NZXNzYWdlQ29udGVudBIyCgpiYXNpY19pbmZvGAEgAigLMhMucHJvdG9jb2wuQmFzaWNJbm'
    'ZvUgliYXNpY0luZm8SGAoHY29udGVudBgCIAIoDFIHY29udGVudA==');

@$core.Deprecated('Use wechatLicenseDescriptor instead')
const WechatLicense$json = {
  '1': 'WechatLicense',
  '3': [WechatLicense_Request$json, WechatLicense_Response$json],
};

@$core.Deprecated('Use wechatLicenseDescriptor instead')
const WechatLicense_Request$json = {
  '1': 'Request',
};

@$core.Deprecated('Use wechatLicenseDescriptor instead')
const WechatLicense_Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 5, '10': 'code'},
    {'1': 'key_version', '3': 2, '4': 1, '5': 13, '10': 'keyVersion'},
    {'1': 'product_id', '3': 3, '4': 1, '5': 13, '10': 'productId'},
    {'1': 'signature', '3': 4, '4': 2, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `WechatLicense`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wechatLicenseDescriptor = $convert.base64Decode(
    'Cg1XZWNoYXRMaWNlbnNlGgkKB1JlcXVlc3QafAoIUmVzcG9uc2USEgoEY29kZRgBIAIoBVIEY2'
    '9kZRIfCgtrZXlfdmVyc2lvbhgCIAEoDVIKa2V5VmVyc2lvbhIdCgpwcm9kdWN0X2lkGAMgASgN'
    'Uglwcm9kdWN0SWQSHAoJc2lnbmF0dXJlGAQgAigJUglzaWduYXR1cmU=');

@$core.Deprecated('Use miHomeDescriptor instead')
const MiHome$json = {
  '1': 'MiHome',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 4, '10': 'id'},
    {'1': 'uid', '3': 2, '4': 2, '5': 4, '10': 'uid'},
    {'1': 'name', '3': 3, '4': 2, '5': 9, '10': 'name'},
  ],
  '3': [MiHome_Request$json, MiHome_List$json, MiHome_Scene$json],
};

@$core.Deprecated('Use miHomeDescriptor instead')
const MiHome_Request$json = {
  '1': 'Request',
};

@$core.Deprecated('Use miHomeDescriptor instead')
const MiHome_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.MiHome',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use miHomeDescriptor instead')
const MiHome_Scene$json = {
  '1': 'Scene',
  '3': [
    MiHome_Scene_Request$json,
    MiHome_Scene_List$json,
    MiHome_Scene_Executor$json,
    MiHome_Scene_Result$json
  ],
};

@$core.Deprecated('Use miHomeDescriptor instead')
const MiHome_Scene_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'home_id', '3': 1, '4': 2, '5': 4, '10': 'homeId'},
    {'1': 'uid', '3': 2, '4': 2, '5': 4, '10': 'uid'},
  ],
};

@$core.Deprecated('Use miHomeDescriptor instead')
const MiHome_Scene_List$json = {
  '1': 'List',
  '2': [
    {'1': 'home_id', '3': 1, '4': 2, '5': 4, '10': 'homeId'},
    {
      '1': 'list',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.MiHome.Scene',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use miHomeDescriptor instead')
const MiHome_Scene_Executor$json = {
  '1': 'Executor',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 4, '10': 'id'},
    {'1': 'type', '3': 2, '4': 2, '5': 13, '10': 'type'},
  ],
};

@$core.Deprecated('Use miHomeDescriptor instead')
const MiHome_Scene_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'result', '3': 1, '4': 2, '5': 8, '10': 'result'},
  ],
};

/// Descriptor for `MiHome`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miHomeDescriptor = $convert.base64Decode(
    'CgZNaUhvbWUSDgoCaWQYASACKARSAmlkEhAKA3VpZBgCIAIoBFIDdWlkEhIKBG5hbWUYAyACKA'
    'lSBG5hbWUaCQoHUmVxdWVzdBosCgRMaXN0EiQKBGxpc3QYASADKAsyEC5wcm90b2NvbC5NaUhv'
    'bWVSBGxpc3Qa3AEKBVNjZW5lGjQKB1JlcXVlc3QSFwoHaG9tZV9pZBgBIAIoBFIGaG9tZUlkEh'
    'AKA3VpZBgCIAIoBFIDdWlkGksKBExpc3QSFwoHaG9tZV9pZBgBIAIoBFIGaG9tZUlkEioKBGxp'
    'c3QYAiADKAsyFi5wcm90b2NvbC5NaUhvbWUuU2NlbmVSBGxpc3QaLgoIRXhlY3V0b3ISDgoCaW'
    'QYASACKARSAmlkEhIKBHR5cGUYAiACKA1SBHR5cGUaIAoGUmVzdWx0EhYKBnJlc3VsdBgBIAIo'
    'CFIGcmVzdWx0');

@$core.Deprecated('Use courseTableDescriptor instead')
const CourseTable$json = {
  '1': 'CourseTable',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 4, '10': 'timestamp'},
    {'1': 'week_number', '3': 2, '4': 2, '5': 13, '10': 'weekNumber'},
    {
      '1': 'section_list',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.protocol.CourseTable.Section',
      '10': 'sectionList'
    },
    {
      '1': 'course_list',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.protocol.CourseTable.Course',
      '10': 'courseList'
    },
  ],
  '3': [CourseTable_Section$json, CourseTable_Course$json],
};

@$core.Deprecated('Use courseTableDescriptor instead')
const CourseTable_Section$json = {
  '1': 'Section',
  '2': [
    {
      '1': 'start_time',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'startTime'
    },
    {
      '1': 'end_time',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'endTime'
    },
  ],
};

@$core.Deprecated('Use courseTableDescriptor instead')
const CourseTable_Course$json = {
  '1': 'Course',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {'1': 'weeks', '3': 2, '4': 2, '5': 13, '10': 'weeks'},
    {'1': 'days', '3': 3, '4': 2, '5': 13, '10': 'days'},
    {'1': 'sections', '3': 4, '4': 2, '5': 13, '10': 'sections'},
    {'1': 'teacher', '3': 5, '4': 2, '5': 9, '10': 'teacher'},
    {'1': 'location', '3': 6, '4': 2, '5': 9, '10': 'location'},
  ],
};

/// Descriptor for `CourseTable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courseTableDescriptor = $convert.base64Decode(
    'CgtDb3Vyc2VUYWJsZRIcCgl0aW1lc3RhbXAYASACKARSCXRpbWVzdGFtcBIfCgt3ZWVrX251bW'
    'JlchgCIAIoDVIKd2Vla051bWJlchJACgxzZWN0aW9uX2xpc3QYAyADKAsyHS5wcm90b2NvbC5D'
    'b3Vyc2VUYWJsZS5TZWN0aW9uUgtzZWN0aW9uTGlzdBI9Cgtjb3Vyc2VfbGlzdBgEIAMoCzIcLn'
    'Byb3RvY29sLkNvdXJzZVRhYmxlLkNvdXJzZVIKY291cnNlTGlzdBpjCgdTZWN0aW9uEi0KCnN0'
    'YXJ0X3RpbWUYASACKAsyDi5wcm90b2NvbC5UaW1lUglzdGFydFRpbWUSKQoIZW5kX3RpbWUYAi'
    'ACKAsyDi5wcm90b2NvbC5UaW1lUgdlbmRUaW1lGpgBCgZDb3Vyc2USEgoEbmFtZRgBIAIoCVIE'
    'bmFtZRIUCgV3ZWVrcxgCIAIoDVIFd2Vla3MSEgoEZGF5cxgDIAIoDVIEZGF5cxIaCghzZWN0aW'
    '9ucxgEIAIoDVIIc2VjdGlvbnMSGAoHdGVhY2hlchgFIAIoCVIHdGVhY2hlchIaCghsb2NhdGlv'
    'bhgGIAIoCVIIbG9jYXRpb24=');

@$core.Deprecated('Use bloodGlucoseDescriptor instead')
const BloodGlucose$json = {
  '1': 'BloodGlucose',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 4, '10': 'timestamp'},
    {'1': 'value', '3': 2, '4': 2, '5': 2, '10': 'value'},
    {'1': 'status', '3': 3, '4': 2, '5': 13, '10': 'status'},
    {'1': 'alert', '3': 4, '4': 1, '5': 8, '10': 'alert'},
  ],
};

/// Descriptor for `BloodGlucose`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bloodGlucoseDescriptor = $convert.base64Decode(
    'CgxCbG9vZEdsdWNvc2USHAoJdGltZXN0YW1wGAEgAigEUgl0aW1lc3RhbXASFAoFdmFsdWUYAi'
    'ACKAJSBXZhbHVlEhYKBnN0YXR1cxgDIAIoDVIGc3RhdHVzEhQKBWFsZXJ0GAQgASgIUgVhbGVy'
    'dA==');
