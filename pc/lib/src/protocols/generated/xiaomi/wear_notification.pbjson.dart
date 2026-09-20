// This is a generated file - do not edit.
//
// Generated from wear_notification.proto.

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

@$core.Deprecated('Use callTypeDescriptor instead')
const CallType$json = {
  '1': 'CallType',
  '2': [
    {'1': 'NOTHING', '2': 0},
    {'1': 'INCOMING_CALL', '2': 1},
    {'1': 'MISSED_CALL', '2': 2},
    {'1': 'OUTGOING_CALL', '2': 3},
  ],
};

/// Descriptor for `CallType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List callTypeDescriptor = $convert.base64Decode(
    'CghDYWxsVHlwZRILCgdOT1RISU5HEAASEQoNSU5DT01JTkdfQ0FMTBABEg8KC01JU1NFRF9DQU'
    'xMEAISEQoNT1VUR09JTkdfQ0FMTBAD');

@$core.Deprecated('Use replyResultDescriptor instead')
const ReplyResult$json = {
  '1': 'ReplyResult',
  '2': [
    {'1': 'REPLY_SUCCESS', '2': 0},
    {'1': 'TARGET_NOT_SUPPORT', '2': 1},
    {'1': 'NOTIFY_NOT_FOUND', '2': 2},
    {'1': 'NO_REPLY_PERMISSION', '2': 3},
    {'1': 'REPLY_FAIL', '2': 4},
  ],
};

/// Descriptor for `ReplyResult`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List replyResultDescriptor = $convert.base64Decode(
    'CgtSZXBseVJlc3VsdBIRCg1SRVBMWV9TVUNDRVNTEAASFgoSVEFSR0VUX05PVF9TVVBQT1JUEA'
    'ESFAoQTk9USUZZX05PVF9GT1VORBACEhcKE05PX1JFUExZX1BFUk1JU1NJT04QAxIOCgpSRVBM'
    'WV9GQUlMEAQ=');

@$core.Deprecated('Use notificationDescriptor instead')
const Notification$json = {
  '1': 'Notification',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData',
      '9': 0,
      '10': 'data'
    },
    {
      '1': 'id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyId',
      '9': 0,
      '10': 'id'
    },
    {
      '1': 'data_list',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.List',
      '9': 0,
      '10': 'dataList'
    },
    {
      '1': 'id_list',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyId.List',
      '9': 0,
      '10': 'idList'
    },
    {
      '1': 'app_info',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.AppInfo',
      '9': 0,
      '10': 'appInfo'
    },
    {
      '1': 'app_info_list',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.AppInfo.List',
      '9': 0,
      '10': 'appInfoList'
    },
    {
      '1': 'enable_auto_screen',
      '3': 7,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'enableAutoScreen'
    },
    {
      '1': 'reply_msg_target',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.protocol.ReplyMsg.Target',
      '9': 0,
      '10': 'replyMsgTarget'
    },
    {
      '1': 'reply_msg',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReplyMsg',
      '9': 0,
      '10': 'replyMsg'
    },
    {
      '1': 'reply_msg_removal',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReplyMsg.Removal',
      '9': 0,
      '10': 'replyMsgRemoval'
    },
    {
      '1': 'reply_msg_result',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.protocol.ReplyMsg.Result',
      '9': 0,
      '10': 'replyMsgResult'
    },
    {
      '1': 'reply_request',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReplyRequest',
      '9': 0,
      '10': 'replyRequest'
    },
    {
      '1': 'reply_result',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.protocol.ReplyResult',
      '9': 0,
      '10': 'replyResult'
    },
    {
      '1': 'app_icon_request',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareAppIcon.Request',
      '9': 0,
      '10': 'appIconRequest'
    },
    {
      '1': 'app_icon_response',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareAppIcon.Response',
      '9': 0,
      '10': 'appIconResponse'
    },
    {
      '1': 'app_icon_apply',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.AppIconApply',
      '9': 0,
      '10': 'appIconApply'
    },
  ],
  '4': [Notification_NotificationID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use notificationDescriptor instead')
const Notification_NotificationID$json = {
  '1': 'NotificationID',
  '2': [
    {'1': 'ADD_NOTIFY', '2': 0},
    {'1': 'REMOVE_NOTIFY', '2': 1},
    {'1': 'OPEN_NOTIFY', '2': 8},
    {'1': 'HANG_UP', '2': 2},
    {'1': 'INCOMING_CALL_MUTE', '2': 5},
    {'1': 'GET_APP_LIST', '2': 3},
    {'1': 'SET_APP', '2': 4},
    {'1': 'GET_AUTO_SCREEN', '2': 6},
    {'1': 'SET_AUTO_SCREEN', '2': 7},
    {'1': 'GET_REPLY_MSG', '2': 9},
    {'1': 'ADD_REPLY_MSG', '2': 10},
    {'1': 'REMOVE_REPLY_MSG', '2': 11},
    {'1': 'UPDATE_REPLY_MSG', '2': 12},
    {'1': 'REPLY_MSG_REQUEST', '2': 13},
    {'1': 'REPLY_MSG_RESULT', '2': 14},
    {'1': 'PREPARE_APP_ICON', '2': 15},
    {'1': 'APP_ICON_APPLY', '2': 16},
  ],
};

/// Descriptor for `Notification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationDescriptor = $convert.base64Decode(
    'CgxOb3RpZmljYXRpb24SKgoEZGF0YRgBIAEoCzIULnByb3RvY29sLk5vdGlmeURhdGFIAFIEZG'
    'F0YRIkCgJpZBgCIAEoCzISLnByb3RvY29sLk5vdGlmeUlkSABSAmlkEjgKCWRhdGFfbGlzdBgD'
    'IAEoCzIZLnByb3RvY29sLk5vdGlmeURhdGEuTGlzdEgAUghkYXRhTGlzdBIyCgdpZF9saXN0GA'
    'QgASgLMhcucHJvdG9jb2wuTm90aWZ5SWQuTGlzdEgAUgZpZExpc3QSLgoIYXBwX2luZm8YBSAB'
    'KAsyES5wcm90b2NvbC5BcHBJbmZvSABSB2FwcEluZm8SPAoNYXBwX2luZm9fbGlzdBgGIAEoCz'
    'IWLnByb3RvY29sLkFwcEluZm8uTGlzdEgAUgthcHBJbmZvTGlzdBIuChJlbmFibGVfYXV0b19z'
    'Y3JlZW4YByABKAhIAFIQZW5hYmxlQXV0b1NjcmVlbhJFChByZXBseV9tc2dfdGFyZ2V0GAggAS'
    'gOMhkucHJvdG9jb2wuUmVwbHlNc2cuVGFyZ2V0SABSDnJlcGx5TXNnVGFyZ2V0EjEKCXJlcGx5'
    'X21zZxgJIAEoCzISLnByb3RvY29sLlJlcGx5TXNnSABSCHJlcGx5TXNnEkgKEXJlcGx5X21zZ1'
    '9yZW1vdmFsGAogASgLMhoucHJvdG9jb2wuUmVwbHlNc2cuUmVtb3ZhbEgAUg9yZXBseU1zZ1Jl'
    'bW92YWwSRQoQcmVwbHlfbXNnX3Jlc3VsdBgLIAEoDjIZLnByb3RvY29sLlJlcGx5TXNnLlJlc3'
    'VsdEgAUg5yZXBseU1zZ1Jlc3VsdBI9Cg1yZXBseV9yZXF1ZXN0GAwgASgLMhYucHJvdG9jb2wu'
    'UmVwbHlSZXF1ZXN0SABSDHJlcGx5UmVxdWVzdBI6CgxyZXBseV9yZXN1bHQYDSABKA4yFS5wcm'
    '90b2NvbC5SZXBseVJlc3VsdEgAUgtyZXBseVJlc3VsdBJMChBhcHBfaWNvbl9yZXF1ZXN0GA4g'
    'ASgLMiAucHJvdG9jb2wuUHJlcGFyZUFwcEljb24uUmVxdWVzdEgAUg5hcHBJY29uUmVxdWVzdB'
    'JPChFhcHBfaWNvbl9yZXNwb25zZRgPIAEoCzIhLnByb3RvY29sLlByZXBhcmVBcHBJY29uLlJl'
    'c3BvbnNlSABSD2FwcEljb25SZXNwb25zZRI+Cg5hcHBfaWNvbl9hcHBseRgQIAEoCzIWLnByb3'
    'RvY29sLkFwcEljb25BcHBseUgAUgxhcHBJY29uQXBwbHki2wIKDk5vdGlmaWNhdGlvbklEEg4K'
    'CkFERF9OT1RJRlkQABIRCg1SRU1PVkVfTk9USUZZEAESDwoLT1BFTl9OT1RJRlkQCBILCgdIQU'
    '5HX1VQEAISFgoSSU5DT01JTkdfQ0FMTF9NVVRFEAUSEAoMR0VUX0FQUF9MSVNUEAMSCwoHU0VU'
    'X0FQUBAEEhMKD0dFVF9BVVRPX1NDUkVFThAGEhMKD1NFVF9BVVRPX1NDUkVFThAHEhEKDUdFVF'
    '9SRVBMWV9NU0cQCRIRCg1BRERfUkVQTFlfTVNHEAoSFAoQUkVNT1ZFX1JFUExZX01TRxALEhQK'
    'EFVQREFURV9SRVBMWV9NU0cQDBIVChFSRVBMWV9NU0dfUkVRVUVTVBANEhQKEFJFUExZX01TR1'
    '9SRVNVTFQQDhIUChBQUkVQQVJFX0FQUF9JQ09OEA8SEgoOQVBQX0lDT05fQVBQTFkQEEIJCgdw'
    'YXlsb2Fk');

@$core.Deprecated('Use notifyDataDescriptor instead')
const NotifyData$json = {
  '1': 'NotifyData',
  '2': [
    {'1': 'app_id', '3': 1, '4': 2, '5': 9, '10': 'appId'},
    {'1': 'app_name', '3': 2, '4': 2, '5': 9, '10': 'appName'},
    {'1': 'title', '3': 3, '4': 2, '5': 9, '10': 'title'},
    {'1': 'sub_title', '3': 4, '4': 2, '5': 9, '10': 'subTitle'},
    {'1': 'text', '3': 5, '4': 2, '5': 9, '10': 'text'},
    {'1': 'date', '3': 6, '4': 2, '5': 9, '10': 'date'},
    {'1': 'uid', '3': 7, '4': 2, '5': 13, '10': 'uid'},
    {'1': 'app_group', '3': 9, '4': 2, '5': 9, '10': 'appGroup'},
    {'1': 'key', '3': 12, '4': 2, '5': 9, '10': 'key'},
    {
      '1': 'call_type',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.protocol.CallType',
      '10': 'callType'
    },
    {'1': 'call_number', '3': 10, '4': 2, '5': 9, '10': 'callNumber'},
    {'1': 'support_reply', '3': 11, '4': 1, '5': 8, '10': 'supportReply'},
    {'1': 'support_open', '3': 13, '4': 1, '5': 8, '10': 'supportOpen'},
    {
      '1': 'focus',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.Focus',
      '10': 'focus'
    },
    {
      '1': 'focus_v2',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.FocusV2',
      '10': 'focusV2'
    },
  ],
  '3': [
    NotifyData_List$json,
    NotifyData_Progress$json,
    NotifyData_Text$json,
    NotifyData_Info$json,
    NotifyData_Focus$json,
    NotifyData_FocusV2$json
  ],
};

@$core.Deprecated('Use notifyDataDescriptor instead')
const NotifyData_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.NotifyData',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use notifyDataDescriptor instead')
const NotifyData_Progress$json = {
  '1': 'Progress',
  '2': [
    {'1': 'section_count', '3': 1, '4': 2, '5': 13, '10': 'sectionCount'},
    {'1': 'progress', '3': 2, '4': 2, '5': 13, '10': 'progress'},
    {'1': 'color', '3': 3, '4': 1, '5': 12, '10': 'color'},
  ],
};

@$core.Deprecated('Use notifyDataDescriptor instead')
const NotifyData_Text$json = {
  '1': 'Text',
  '2': [
    {'1': 'chars', '3': 1, '4': 2, '5': 9, '10': 'chars'},
    {'1': 'color', '3': 2, '4': 1, '5': 12, '10': 'color'},
  ],
};

@$core.Deprecated('Use notifyDataDescriptor instead')
const NotifyData_Info$json = {
  '1': 'Info',
  '2': [
    {
      '1': 'title',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.NotifyData.Text',
      '10': 'title'
    },
    {
      '1': 'sub_title',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.Text',
      '10': 'subTitle'
    },
    {
      '1': 'content',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.Text',
      '10': 'content'
    },
    {
      '1': 'sub_content',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.Text',
      '10': 'subContent'
    },
    {
      '1': 'special_title',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.Text',
      '10': 'specialTitle'
    },
    {'1': 'special_title_bg', '3': 6, '4': 1, '5': 12, '10': 'specialTitleBg'},
  ],
};

@$core.Deprecated('Use notifyDataDescriptor instead')
const NotifyData_Focus$json = {
  '1': 'Focus',
  '2': [
    {'1': 'style', '3': 1, '4': 2, '5': 13, '10': 'style'},
    {
      '1': 'title',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.NotifyData.Text',
      '10': 'title'
    },
    {
      '1': 'content',
      '3': 3,
      '4': 2,
      '5': 11,
      '6': '.protocol.NotifyData.Text',
      '10': 'content'
    },
    {
      '1': 'desc',
      '3': 4,
      '4': 2,
      '5': 11,
      '6': '.protocol.NotifyData.Text',
      '10': 'desc'
    },
    {
      '1': 'progress',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.Progress',
      '10': 'progress'
    },
    {'1': 'updatable', '3': 6, '4': 1, '5': 8, '10': 'updatable'},
    {'1': 'sequence', '3': 7, '4': 1, '5': 13, '10': 'sequence'},
  ],
};

@$core.Deprecated('Use notifyDataDescriptor instead')
const NotifyData_FocusV2$json = {
  '1': 'FocusV2',
  '2': [
    {'1': 'scene', '3': 1, '4': 2, '5': 13, '10': 'scene'},
    {'1': 'ticker', '3': 2, '4': 2, '5': 9, '10': 'ticker'},
    {
      '1': 'basic_info',
      '3': 3,
      '4': 2,
      '5': 11,
      '6': '.protocol.NotifyData.Info',
      '10': 'basicInfo'
    },
    {
      '1': 'hint_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.Info',
      '10': 'hintInfo'
    },
    {
      '1': 'progress',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyData.Progress',
      '10': 'progress'
    },
    {'1': 'updatable', '3': 6, '4': 1, '5': 8, '10': 'updatable'},
    {'1': 'sequence', '3': 7, '4': 1, '5': 13, '10': 'sequence'},
  ],
};

/// Descriptor for `NotifyData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyDataDescriptor = $convert.base64Decode(
    'CgpOb3RpZnlEYXRhEhUKBmFwcF9pZBgBIAIoCVIFYXBwSWQSGQoIYXBwX25hbWUYAiACKAlSB2'
    'FwcE5hbWUSFAoFdGl0bGUYAyACKAlSBXRpdGxlEhsKCXN1Yl90aXRsZRgEIAIoCVIIc3ViVGl0'
    'bGUSEgoEdGV4dBgFIAIoCVIEdGV4dBISCgRkYXRlGAYgAigJUgRkYXRlEhAKA3VpZBgHIAIoDV'
    'IDdWlkEhsKCWFwcF9ncm91cBgJIAIoCVIIYXBwR3JvdXASEAoDa2V5GAwgAigJUgNrZXkSLwoJ'
    'Y2FsbF90eXBlGAggASgOMhIucHJvdG9jb2wuQ2FsbFR5cGVSCGNhbGxUeXBlEh8KC2NhbGxfbn'
    'VtYmVyGAogAigJUgpjYWxsTnVtYmVyEiMKDXN1cHBvcnRfcmVwbHkYCyABKAhSDHN1cHBvcnRS'
    'ZXBseRIhCgxzdXBwb3J0X29wZW4YDSABKAhSC3N1cHBvcnRPcGVuEjAKBWZvY3VzGA4gASgLMh'
    'oucHJvdG9jb2wuTm90aWZ5RGF0YS5Gb2N1c1IFZm9jdXMSNwoIZm9jdXNfdjIYDyABKAsyHC5w'
    'cm90b2NvbC5Ob3RpZnlEYXRhLkZvY3VzVjJSB2ZvY3VzVjIaMAoETGlzdBIoCgRsaXN0GAEgAy'
    'gLMhQucHJvdG9jb2wuTm90aWZ5RGF0YVIEbGlzdBphCghQcm9ncmVzcxIjCg1zZWN0aW9uX2Nv'
    'dW50GAEgAigNUgxzZWN0aW9uQ291bnQSGgoIcHJvZ3Jlc3MYAiACKA1SCHByb2dyZXNzEhQKBW'
    'NvbG9yGAMgASgMUgVjb2xvchoyCgRUZXh0EhQKBWNoYXJzGAEgAigJUgVjaGFycxIUCgVjb2xv'
    'chgCIAEoDFIFY29sb3IaygIKBEluZm8SLwoFdGl0bGUYASACKAsyGS5wcm90b2NvbC5Ob3RpZn'
    'lEYXRhLlRleHRSBXRpdGxlEjYKCXN1Yl90aXRsZRgCIAEoCzIZLnByb3RvY29sLk5vdGlmeURh'
    'dGEuVGV4dFIIc3ViVGl0bGUSMwoHY29udGVudBgDIAEoCzIZLnByb3RvY29sLk5vdGlmeURhdG'
    'EuVGV4dFIHY29udGVudBI6CgtzdWJfY29udGVudBgEIAEoCzIZLnByb3RvY29sLk5vdGlmeURh'
    'dGEuVGV4dFIKc3ViQ29udGVudBI+Cg1zcGVjaWFsX3RpdGxlGAUgASgLMhkucHJvdG9jb2wuTm'
    '90aWZ5RGF0YS5UZXh0UgxzcGVjaWFsVGl0bGUSKAoQc3BlY2lhbF90aXRsZV9iZxgGIAEoDFIO'
    'c3BlY2lhbFRpdGxlQmcapwIKBUZvY3VzEhQKBXN0eWxlGAEgAigNUgVzdHlsZRIvCgV0aXRsZR'
    'gCIAIoCzIZLnByb3RvY29sLk5vdGlmeURhdGEuVGV4dFIFdGl0bGUSMwoHY29udGVudBgDIAIo'
    'CzIZLnByb3RvY29sLk5vdGlmeURhdGEuVGV4dFIHY29udGVudBItCgRkZXNjGAQgAigLMhkucH'
    'JvdG9jb2wuTm90aWZ5RGF0YS5UZXh0UgRkZXNjEjkKCHByb2dyZXNzGAUgASgLMh0ucHJvdG9j'
    'b2wuTm90aWZ5RGF0YS5Qcm9ncmVzc1IIcHJvZ3Jlc3MSHAoJdXBkYXRhYmxlGAYgASgIUgl1cG'
    'RhdGFibGUSGgoIc2VxdWVuY2UYByABKA1SCHNlcXVlbmNlGp4CCgdGb2N1c1YyEhQKBXNjZW5l'
    'GAEgAigNUgVzY2VuZRIWCgZ0aWNrZXIYAiACKAlSBnRpY2tlchI4CgpiYXNpY19pbmZvGAMgAi'
    'gLMhkucHJvdG9jb2wuTm90aWZ5RGF0YS5JbmZvUgliYXNpY0luZm8SNgoJaGludF9pbmZvGAQg'
    'ASgLMhkucHJvdG9jb2wuTm90aWZ5RGF0YS5JbmZvUghoaW50SW5mbxI5Cghwcm9ncmVzcxgFIA'
    'EoCzIdLnByb3RvY29sLk5vdGlmeURhdGEuUHJvZ3Jlc3NSCHByb2dyZXNzEhwKCXVwZGF0YWJs'
    'ZRgGIAEoCFIJdXBkYXRhYmxlEhoKCHNlcXVlbmNlGAcgASgNUghzZXF1ZW5jZQ==');

@$core.Deprecated('Use notifyIdDescriptor instead')
const NotifyId$json = {
  '1': 'NotifyId',
  '2': [
    {'1': 'uid', '3': 1, '4': 2, '5': 13, '10': 'uid'},
    {'1': 'app_id', '3': 2, '4': 2, '5': 9, '10': 'appId'},
    {'1': 'app_group', '3': 3, '4': 2, '5': 9, '10': 'appGroup'},
    {'1': 'key', '3': 4, '4': 2, '5': 9, '10': 'key'},
  ],
  '3': [NotifyId_List$json],
};

@$core.Deprecated('Use notifyIdDescriptor instead')
const NotifyId_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.NotifyId',
      '10': 'list'
    },
  ],
};

/// Descriptor for `NotifyId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyIdDescriptor = $convert.base64Decode(
    'CghOb3RpZnlJZBIQCgN1aWQYASACKA1SA3VpZBIVCgZhcHBfaWQYAiACKAlSBWFwcElkEhsKCW'
    'FwcF9ncm91cBgDIAIoCVIIYXBwR3JvdXASEAoDa2V5GAQgAigJUgNrZXkaLgoETGlzdBImCgRs'
    'aXN0GAEgAygLMhIucHJvdG9jb2wuTm90aWZ5SWRSBGxpc3Q=');

@$core.Deprecated('Use replyMsgDescriptor instead')
const ReplyMsg$json = {
  '1': 'ReplyMsg',
  '2': [
    {
      '1': 'target',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ReplyMsg.Target',
      '10': 'target'
    },
    {'1': 'contents', '3': 2, '4': 3, '5': 9, '10': 'contents'},
    {
      '1': 'support_max_numbers',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'supportMaxNumbers'
    },
  ],
  '3': [ReplyMsg_Removal$json],
  '4': [ReplyMsg_Target$json, ReplyMsg_Result$json],
};

@$core.Deprecated('Use replyMsgDescriptor instead')
const ReplyMsg_Removal$json = {
  '1': 'Removal',
  '2': [
    {
      '1': 'target',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ReplyMsg.Target',
      '10': 'target'
    },
    {'1': 'id', '3': 2, '4': 3, '5': 13, '10': 'id'},
  ],
};

@$core.Deprecated('Use replyMsgDescriptor instead')
const ReplyMsg_Target$json = {
  '1': 'Target',
  '2': [
    {'1': 'SMS', '2': 1},
    {'1': 'WECHAT', '2': 2},
  ],
};

@$core.Deprecated('Use replyMsgDescriptor instead')
const ReplyMsg_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'EXCEED_LIMIT', '2': 1},
    {'1': 'INVALID_ID', '2': 2},
    {'1': 'FAIL', '2': 10},
  ],
};

/// Descriptor for `ReplyMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyMsgDescriptor = $convert.base64Decode(
    'CghSZXBseU1zZxIxCgZ0YXJnZXQYASACKA4yGS5wcm90b2NvbC5SZXBseU1zZy5UYXJnZXRSBn'
    'RhcmdldBIaCghjb250ZW50cxgCIAMoCVIIY29udGVudHMSLgoTc3VwcG9ydF9tYXhfbnVtYmVy'
    'cxgDIAEoDVIRc3VwcG9ydE1heE51bWJlcnMaTAoHUmVtb3ZhbBIxCgZ0YXJnZXQYASACKA4yGS'
    '5wcm90b2NvbC5SZXBseU1zZy5UYXJnZXRSBnRhcmdldBIOCgJpZBgCIAMoDVICaWQiHQoGVGFy'
    'Z2V0EgcKA1NNUxABEgoKBldFQ0hBVBACIkEKBlJlc3VsdBILCgdTVUNDRVNTEAASEAoMRVhDRU'
    'VEX0xJTUlUEAESDgoKSU5WQUxJRF9JRBACEggKBEZBSUwQCg==');

@$core.Deprecated('Use replyRequestDescriptor instead')
const ReplyRequest$json = {
  '1': 'ReplyRequest',
  '2': [
    {
      '1': 'target',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.ReplyMsg.Target',
      '10': 'target'
    },
    {'1': 'contents', '3': 2, '4': 2, '5': 9, '10': 'contents'},
    {'1': 'need_result', '3': 3, '4': 2, '5': 8, '10': 'needResult'},
    {'1': 'phone_number', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'phoneNumber'},
    {
      '1': 'notify_id',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.NotifyId',
      '9': 0,
      '10': 'notifyId'
    },
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `ReplyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyRequestDescriptor = $convert.base64Decode(
    'CgxSZXBseVJlcXVlc3QSMQoGdGFyZ2V0GAEgAigOMhkucHJvdG9jb2wuUmVwbHlNc2cuVGFyZ2'
    'V0UgZ0YXJnZXQSGgoIY29udGVudHMYAiACKAlSCGNvbnRlbnRzEh8KC25lZWRfcmVzdWx0GAMg'
    'AigIUgpuZWVkUmVzdWx0EiMKDHBob25lX251bWJlchgEIAEoCUgAUgtwaG9uZU51bWJlchIxCg'
    'lub3RpZnlfaWQYBSABKAsyEi5wcm90b2NvbC5Ob3RpZnlJZEgAUghub3RpZnlJZEIGCgRkYXRh');

@$core.Deprecated('Use prepareAppIconDescriptor instead')
const PrepareAppIcon$json = {
  '1': 'PrepareAppIcon',
  '3': [PrepareAppIcon_Request$json, PrepareAppIcon_Response$json],
};

@$core.Deprecated('Use prepareAppIconDescriptor instead')
const PrepareAppIcon_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'package_name', '3': 1, '4': 2, '5': 9, '10': 'packageName'},
    {
      '1': 'support_compress_mode',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'supportCompressMode'
    },
  ],
};

@$core.Deprecated('Use prepareAppIconDescriptor instead')
const PrepareAppIcon_Response$json = {
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
      '1': 'expected_max_size',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'expectedMaxSize'
    },
    {
      '1': 'select_compress_mode',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'selectCompressMode'
    },
    {
      '1': 'expected_slice_length',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'expectedSliceLength'
    },
  ],
};

/// Descriptor for `PrepareAppIcon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareAppIconDescriptor = $convert.base64Decode(
    'Cg5QcmVwYXJlQXBwSWNvbhpgCgdSZXF1ZXN0EiEKDHBhY2thZ2VfbmFtZRgBIAIoCVILcGFja2'
    'FnZU5hbWUSMgoVc3VwcG9ydF9jb21wcmVzc19tb2RlGAIgASgNUhNzdXBwb3J0Q29tcHJlc3NN'
    'b2RlGqUCCghSZXNwb25zZRI+Cg5wcmVwYXJlX3N0YXR1cxgBIAIoDjIXLnByb3RvY29sLlByZX'
    'BhcmVTdGF0dXNSDXByZXBhcmVTdGF0dXMSRwoUc3VwcG9ydF9pbWFnZV9mb3JtYXQYAiABKA4y'
    'FS5wcm90b2NvbC5JbWFnZUZvcm1hdFISc3VwcG9ydEltYWdlRm9ybWF0EioKEWV4cGVjdGVkX2'
    '1heF9zaXplGAMgASgNUg9leHBlY3RlZE1heFNpemUSMAoUc2VsZWN0X2NvbXByZXNzX21vZGUY'
    'BCABKA1SEnNlbGVjdENvbXByZXNzTW9kZRIyChVleHBlY3RlZF9zbGljZV9sZW5ndGgYBSABKA'
    '1SE2V4cGVjdGVkU2xpY2VMZW5ndGg=');

@$core.Deprecated('Use appIconApplyDescriptor instead')
const AppIconApply$json = {
  '1': 'AppIconApply',
  '2': [
    {'1': 'package_name', '3': 1, '4': 2, '5': 9, '10': 'packageName'},
  ],
};

/// Descriptor for `AppIconApply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appIconApplyDescriptor = $convert.base64Decode(
    'CgxBcHBJY29uQXBwbHkSIQoMcGFja2FnZV9uYW1lGAEgAigJUgtwYWNrYWdlTmFtZQ==');

@$core.Deprecated('Use appInfoDescriptor instead')
const AppInfo$json = {
  '1': 'AppInfo',
  '2': [
    {'1': 'app_type', '3': 1, '4': 2, '5': 13, '10': 'appType'},
    {'1': 'enable', '3': 2, '4': 2, '5': 8, '10': 'enable'},
  ],
  '3': [AppInfo_List$json],
  '4': [AppInfo_Type$json],
};

@$core.Deprecated('Use appInfoDescriptor instead')
const AppInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.AppInfo',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use appInfoDescriptor instead')
const AppInfo_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'NOTIFICATION', '2': 0},
    {'1': 'CALL', '2': 1},
    {'1': 'WECHAT', '2': 2},
    {'1': 'QQ', '2': 3},
    {'1': 'ALIPAY', '2': 4},
    {'1': 'OTHER', '2': 5},
    {'1': 'SMS', '2': 6},
    {'1': 'MAIL', '2': 7},
    {'1': 'WEIBO', '2': 8},
    {'1': 'TAOBAO', '2': 9},
    {'1': 'TIKTOK', '2': 10},
    {'1': 'DINGDING', '2': 11},
    {'1': 'MIHOME', '2': 12},
    {'1': 'XIAOHONGSHU', '2': 13},
    {'1': 'PINDUODUO', '2': 14},
    {'1': 'KUAISHOU', '2': 15},
    {'1': 'QQMUSIC', '2': 16},
    {'1': 'DIDI', '2': 17},
    {'1': 'BAIDUMAP', '2': 18},
    {'1': 'GAODEMAP', '2': 19},
    {'1': 'CLOUDMUSIC', '2': 20},
    {'1': 'KUGOU', '2': 21},
    {'1': 'BAIDU', '2': 22},
    {'1': 'QQMAIL', '2': 23},
    {'1': 'QQZONE', '2': 24},
    {'1': 'TENCENTNEWS', '2': 25},
    {'1': 'TOUTIAO', '2': 26},
    {'1': 'WEWORK', '2': 27},
    {'1': 'MEITUAN', '2': 28},
    {'1': 'KEEP', '2': 29},
    {'1': 'YOUKU', '2': 30},
    {'1': 'QQLIVE', '2': 31},
    {'1': 'IQIYI', '2': 32},
    {'1': 'BILIBILI', '2': 33},
    {'1': 'TIKTOKLITE', '2': 34},
    {'1': 'KUSISHOULITE', '2': 35},
    {'1': 'XIMALAYA', '2': 36},
    {'1': 'WEISHI', '2': 37},
    {'1': 'DIANPING', '2': 38},
    {'1': 'MEITUANWM', '2': 39},
    {'1': 'ELEME', '2': 40},
    {'1': 'ZHIHU', '2': 41},
    {'1': 'XIANYU', '2': 42},
    {'1': 'TAOBAOLITE', '2': 43},
    {'1': 'JD', '2': 44},
    {'1': 'DEWU', '2': 45},
    {'1': 'TMALL', '2': 46},
    {'1': 'SUNING', '2': 47},
    {'1': 'TICKET12306', '2': 48},
    {'1': 'CCB', '2': 49},
    {'1': 'UNIONPAY', '2': 50},
    {'1': 'CMB', '2': 51},
    {'1': 'JDJR', '2': 52},
    {'1': 'CB', '2': 53},
    {'1': 'ICBC', '2': 54},
    {'1': 'ZSSH', '2': 55},
    {'1': 'ABC', '2': 56},
    {'1': 'JTBANK', '2': 57},
    {'1': 'WEREAD', '2': 58},
    {'1': 'SHUQI', '2': 59},
    {'1': 'QQBROWSER', '2': 60},
    {'1': 'UCBROWSER', '2': 61},
    {'1': 'SOUL', '2': 62},
    {'1': 'MOMO', '2': 63},
    {'1': 'TANTAN', '2': 64},
    {'1': 'DOUBAN', '2': 65},
    {'1': 'TIEBA', '2': 66},
    {'1': 'WUBA', '2': 67},
    {'1': 'WHATSAPP', '2': 68},
    {'1': 'VIBER', '2': 69},
    {'1': 'SNAPCHAT', '2': 70},
    {'1': 'SKYPE', '2': 71},
    {'1': 'TELEGRAM', '2': 72},
    {'1': 'FBMESSENGER', '2': 73},
    {'1': 'DISCORD', '2': 74},
    {'1': 'KAKAO', '2': 75},
    {'1': 'VKONTAKTE', '2': 76},
    {'1': 'LINE', '2': 77},
    {'1': 'TWITTER', '2': 78},
    {'1': 'GMAIL', '2': 79},
    {'1': 'OUTLOOK', '2': 80},
    {'1': 'FB', '2': 81},
    {'1': 'NAVER', '2': 82},
    {'1': 'HANGOUT', '2': 83},
    {'1': 'BIP', '2': 84},
    {'1': 'OK', '2': 85},
    {'1': 'SHARECHAT', '2': 86},
    {'1': 'MAMBA', '2': 87},
    {'1': 'INSTAGRAM', '2': 88},
    {'1': 'YOUTUBE', '2': 89},
    {'1': 'WPS', '2': 90},
  ],
};

/// Descriptor for `AppInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInfoDescriptor = $convert.base64Decode(
    'CgdBcHBJbmZvEhkKCGFwcF90eXBlGAEgAigNUgdhcHBUeXBlEhYKBmVuYWJsZRgCIAIoCFIGZW'
    '5hYmxlGi0KBExpc3QSJQoEbGlzdBgBIAMoCzIRLnByb3RvY29sLkFwcEluZm9SBGxpc3Qi2ggK'
    'BFR5cGUSEAoMTk9USUZJQ0FUSU9OEAASCAoEQ0FMTBABEgoKBldFQ0hBVBACEgYKAlFREAMSCg'
    'oGQUxJUEFZEAQSCQoFT1RIRVIQBRIHCgNTTVMQBhIICgRNQUlMEAcSCQoFV0VJQk8QCBIKCgZU'
    'QU9CQU8QCRIKCgZUSUtUT0sQChIMCghESU5HRElORxALEgoKBk1JSE9NRRAMEg8KC1hJQU9IT0'
    '5HU0hVEA0SDQoJUElORFVPRFVPEA4SDAoIS1VBSVNIT1UQDxILCgdRUU1VU0lDEBASCAoERElE'
    'SRAREgwKCEJBSURVTUFQEBISDAoIR0FPREVNQVAQExIOCgpDTE9VRE1VU0lDEBQSCQoFS1VHT1'
    'UQFRIJCgVCQUlEVRAWEgoKBlFRTUFJTBAXEgoKBlFRWk9ORRAYEg8KC1RFTkNFTlRORVdTEBkS'
    'CwoHVE9VVElBTxAaEgoKBldFV09SSxAbEgsKB01FSVRVQU4QHBIICgRLRUVQEB0SCQoFWU9VS1'
    'UQHhIKCgZRUUxJVkUQHxIJCgVJUUlZSRAgEgwKCEJJTElCSUxJECESDgoKVElLVE9LTElURRAi'
    'EhAKDEtVU0lTSE9VTElURRAjEgwKCFhJTUFMQVlBECQSCgoGV0VJU0hJECUSDAoIRElBTlBJTk'
    'cQJhINCglNRUlUVUFOV00QJxIJCgVFTEVNRRAoEgkKBVpISUhVECkSCgoGWElBTllVECoSDgoK'
    'VEFPQkFPTElURRArEgYKAkpEECwSCAoEREVXVRAtEgkKBVRNQUxMEC4SCgoGU1VOSU5HEC8SDw'
    'oLVElDS0VUMTIzMDYQMBIHCgNDQ0IQMRIMCghVTklPTlBBWRAyEgcKA0NNQhAzEggKBEpESlIQ'
    'NBIGCgJDQhA1EggKBElDQkMQNhIICgRaU1NIEDcSBwoDQUJDEDgSCgoGSlRCQU5LEDkSCgoGV0'
    'VSRUFEEDoSCQoFU0hVUUkQOxINCglRUUJST1dTRVIQPBINCglVQ0JST1dTRVIQPRIICgRTT1VM'
    'ED4SCAoETU9NTxA/EgoKBlRBTlRBThBAEgoKBkRPVUJBThBBEgkKBVRJRUJBEEISCAoEV1VCQR'
    'BDEgwKCFdIQVRTQVBQEEQSCQoFVklCRVIQRRIMCghTTkFQQ0hBVBBGEgkKBVNLWVBFEEcSDAoI'
    'VEVMRUdSQU0QSBIPCgtGQk1FU1NFTkdFUhBJEgsKB0RJU0NPUkQQShIJCgVLQUtBTxBLEg0KCV'
    'ZLT05UQUtURRBMEggKBExJTkUQTRILCgdUV0lUVEVSEE4SCQoFR01BSUwQTxILCgdPVVRMT09L'
    'EFASBgoCRkIQURIJCgVOQVZFUhBSEgsKB0hBTkdPVVQQUxIHCgNCSVAQVBIGCgJPSxBVEg0KCV'
    'NIQVJFQ0hBVBBWEgkKBU1BTUJBEFcSDQoJSU5TVEFHUkFNEFgSCwoHWU9VVFVCRRBZEgcKA1dQ'
    'UxBa');
