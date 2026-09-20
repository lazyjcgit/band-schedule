// This is a generated file - do not edit.
//
// Generated from wear_interconnection.proto.

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

@$core.Deprecated('Use deviceTypeDescriptor instead')
const DeviceType$json = {
  '1': 'DeviceType',
  '2': [
    {'1': 'ANDROID_PHONE', '2': 1},
    {'1': 'ANDROID_PAD', '2': 2},
    {'1': 'ANDROID_TV', '2': 3},
    {'1': 'WINDOWS_PC', '2': 4},
    {'1': 'SOUNDBOX', '2': 5},
    {'1': 'SOUNDBOX_SCREEN', '2': 6},
    {'1': 'HEADSET', '2': 7},
  ],
};

/// Descriptor for `DeviceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List deviceTypeDescriptor = $convert.base64Decode(
    'CgpEZXZpY2VUeXBlEhEKDUFORFJPSURfUEhPTkUQARIPCgtBTkRST0lEX1BBRBACEg4KCkFORF'
    'JPSURfVFYQAxIOCgpXSU5ET1dTX1BDEAQSDAoIU09VTkRCT1gQBRITCg9TT1VOREJPWF9TQ1JF'
    'RU4QBhILCgdIRUFEU0VUEAc=');

@$core.Deprecated('Use interconnectionDescriptor instead')
const Interconnection$json = {
  '1': 'Interconnection',
  '2': [
    {
      '1': 'phone_status',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneStatus',
      '9': 0,
      '10': 'phoneStatus'
    },
    {
      '1': 'share_devices',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.ShareDevice.List',
      '9': 0,
      '10': 'shareDevices'
    },
    {
      '1': 'share_device',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.ShareDevice',
      '9': 0,
      '10': 'shareDevice'
    },
    {
      '1': 'audio_control',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.AudioControl',
      '9': 0,
      '10': 'audioControl'
    },
    {
      '1': 'tv_control',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.TVControl',
      '9': 0,
      '10': 'tvControl'
    },
    {
      '1': 'headset_control',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.HeadsetControl',
      '9': 0,
      '10': 'headsetControl'
    },
    {
      '1': 'control_result',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.ControlResult',
      '9': 0,
      '10': 'controlResult'
    },
    {
      '1': 'projection_devices',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProjectionDevice.List',
      '9': 0,
      '10': 'projectionDevices'
    },
    {
      '1': 'projection_request',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProjectionRequest',
      '9': 0,
      '10': 'projectionRequest'
    },
    {
      '1': 'projection_response',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProjectionResponse',
      '9': 0,
      '10': 'projectionResponse'
    },
    {
      '1': 'projection_data',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProjectionData',
      '9': 0,
      '10': 'projectionData'
    },
    {
      '1': 'request_info',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.RequestInfo',
      '9': 0,
      '10': 'requestInfo'
    },
    {
      '1': 'projection_report',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProjectionReport',
      '9': 0,
      '10': 'projectionReport'
    },
    {
      '1': 'projection_members',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProjectionMember.List',
      '9': 0,
      '10': 'projectionMembers'
    },
    {
      '1': 'course_zone',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.CourseZone',
      '9': 0,
      '10': 'courseZone'
    },
    {
      '1': 'phone_usage',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneUsage',
      '9': 0,
      '10': 'phoneUsage'
    },
    {
      '1': 'phone_trace',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneTrace',
      '9': 0,
      '10': 'phoneTrace'
    },
    {
      '1': 'mishow_slide_request',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiShow.SlideRequest',
      '9': 0,
      '10': 'mishowSlideRequest'
    },
    {
      '1': 'mishow_demo',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiShow.Demo',
      '9': 0,
      '10': 'mishowDemo'
    },
    {
      '1': 'mis_devices',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.protocol.Mis.Device.List',
      '9': 0,
      '10': 'misDevices'
    },
    {
      '1': 'wear_spec_basic',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.protocol.Mis.WearSpecBasic',
      '9': 0,
      '10': 'wearSpecBasic'
    },
    {
      '1': 'mis_payload',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.protocol.Mis.Payload',
      '9': 0,
      '10': 'misPayload'
    },
    {
      '1': 'cert_server_request',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.protocol.Cert.ServerRequest',
      '9': 0,
      '10': 'certServerRequest'
    },
    {
      '1': 'cert_device_request',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.protocol.Cert.DeviceRequest',
      '9': 0,
      '10': 'certDeviceRequest'
    },
    {
      '1': 'cert_response',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.protocol.Cert.Response',
      '9': 0,
      '10': 'certResponse'
    },
    {
      '1': 'prop_request',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.protocol.Prop.Request',
      '9': 0,
      '10': 'propRequest'
    },
    {
      '1': 'prop_response',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.protocol.Prop.Response',
      '9': 0,
      '10': 'propResponse'
    },
  ],
  '4': [Interconnection_InterconnectionID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use interconnectionDescriptor instead')
const Interconnection_InterconnectionID$json = {
  '1': 'InterconnectionID',
  '2': [
    {'1': 'REQUEST_PHONE_STATUS', '2': 0},
    {'1': 'SYNC_PHONE_STATUS', '2': 1},
    {'1': 'REGISTER_PHONE_USAGE', '2': 17},
    {'1': 'UNREGISTER_PHONE_USAGE', '2': 18},
    {'1': 'SEND_PHONE_USAGE', '2': 19},
    {'1': 'START_PHONE_TRACE', '2': 20},
    {'1': 'FINISH_PHONE_TRACE', '2': 21},
    {'1': 'SEND_PHONE_TRACE', '2': 22},
    {'1': 'REQEUST_SHARE_DEVICES', '2': 2},
    {'1': 'SYNC_SHARE_DEVICES', '2': 3},
    {'1': 'UPDATE_SHARE_DEVICE', '2': 4},
    {'1': 'CONTROL_AUDIO', '2': 5},
    {'1': 'CONTROL_TV', '2': 6},
    {'1': 'CONTROL_HEADSET', '2': 7},
    {'1': 'SEND_CONTROL_RESULT', '2': 8},
    {'1': 'REQUEST_PROJECTION_DEVICES', '2': 9},
    {'1': 'SYNC_PROJECTION_DEVICES', '2': 10},
    {'1': 'REQUEST_PROJECTION', '2': 11},
    {'1': 'SEND_PROJECTION_RESPONSE', '2': 12},
    {'1': 'REPORT_PROJECTION_DATA', '2': 13},
    {'1': 'REPORT_PROJECTION_REPORT', '2': 14},
    {'1': 'NOTIFY_PROJECTION_MEMBERS', '2': 15},
    {'1': 'ENTER_COURSE_ZONE', '2': 16},
    {'1': 'START_SLIDE_SHOW', '2': 23},
    {'1': 'STOP_SLIDE_SHOW', '2': 24},
    {'1': 'START_DEMO_SHOW', '2': 25},
    {'1': 'STOP_DEMO_SHOW', '2': 26},
    {'1': 'SUBSCRIBE_MIS_DEVICE', '2': 27},
    {'1': 'UNSUBSCRIBE_MIS_DEVICE', '2': 28},
    {'1': 'SYNC_MIS_DEVICE', '2': 29},
    {'1': 'PUBLISH_MIS_SPEC', '2': 30},
    {'1': 'REPORT_MIS_SPEC', '2': 31},
    {'1': 'GET_WEAR_SPEC_BASIC', '2': 32},
    {'1': 'SEND_MIS_PACKET', '2': 33},
    {'1': 'REQUEST_SERVER_CERT', '2': 34},
    {'1': 'RESPONSE_SERVER_CERT', '2': 35},
    {'1': 'REQUEST_DEVICE_CERT', '2': 36},
    {'1': 'RESPONSE_DEVICE_CERT', '2': 37},
    {'1': 'REQUEST_PROPS', '2': 38},
    {'1': 'RESPONSE_PROPS', '2': 39},
  ],
};

/// Descriptor for `Interconnection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List interconnectionDescriptor = $convert.base64Decode(
    'Cg9JbnRlcmNvbm5lY3Rpb24SOgoMcGhvbmVfc3RhdHVzGAEgASgLMhUucHJvdG9jb2wuUGhvbm'
    'VTdGF0dXNIAFILcGhvbmVTdGF0dXMSQQoNc2hhcmVfZGV2aWNlcxgCIAEoCzIaLnByb3RvY29s'
    'LlNoYXJlRGV2aWNlLkxpc3RIAFIMc2hhcmVEZXZpY2VzEjoKDHNoYXJlX2RldmljZRgDIAEoCz'
    'IVLnByb3RvY29sLlNoYXJlRGV2aWNlSABSC3NoYXJlRGV2aWNlEj0KDWF1ZGlvX2NvbnRyb2wY'
    'BCABKAsyFi5wcm90b2NvbC5BdWRpb0NvbnRyb2xIAFIMYXVkaW9Db250cm9sEjQKCnR2X2Nvbn'
    'Ryb2wYBSABKAsyEy5wcm90b2NvbC5UVkNvbnRyb2xIAFIJdHZDb250cm9sEkMKD2hlYWRzZXRf'
    'Y29udHJvbBgGIAEoCzIYLnByb3RvY29sLkhlYWRzZXRDb250cm9sSABSDmhlYWRzZXRDb250cm'
    '9sEkAKDmNvbnRyb2xfcmVzdWx0GAcgASgLMhcucHJvdG9jb2wuQ29udHJvbFJlc3VsdEgAUg1j'
    'b250cm9sUmVzdWx0ElAKEnByb2plY3Rpb25fZGV2aWNlcxgIIAEoCzIfLnByb3RvY29sLlByb2'
    'plY3Rpb25EZXZpY2UuTGlzdEgAUhFwcm9qZWN0aW9uRGV2aWNlcxJMChJwcm9qZWN0aW9uX3Jl'
    'cXVlc3QYCSABKAsyGy5wcm90b2NvbC5Qcm9qZWN0aW9uUmVxdWVzdEgAUhFwcm9qZWN0aW9uUm'
    'VxdWVzdBJPChNwcm9qZWN0aW9uX3Jlc3BvbnNlGAogASgLMhwucHJvdG9jb2wuUHJvamVjdGlv'
    'blJlc3BvbnNlSABSEnByb2plY3Rpb25SZXNwb25zZRJDCg9wcm9qZWN0aW9uX2RhdGEYCyABKA'
    'syGC5wcm90b2NvbC5Qcm9qZWN0aW9uRGF0YUgAUg5wcm9qZWN0aW9uRGF0YRI6CgxyZXF1ZXN0'
    'X2luZm8YDCABKAsyFS5wcm90b2NvbC5SZXF1ZXN0SW5mb0gAUgtyZXF1ZXN0SW5mbxJJChFwcm'
    '9qZWN0aW9uX3JlcG9ydBgNIAEoCzIaLnByb3RvY29sLlByb2plY3Rpb25SZXBvcnRIAFIQcHJv'
    'amVjdGlvblJlcG9ydBJQChJwcm9qZWN0aW9uX21lbWJlcnMYDiABKAsyHy5wcm90b2NvbC5Qcm'
    '9qZWN0aW9uTWVtYmVyLkxpc3RIAFIRcHJvamVjdGlvbk1lbWJlcnMSNwoLY291cnNlX3pvbmUY'
    'DyABKAsyFC5wcm90b2NvbC5Db3Vyc2Vab25lSABSCmNvdXJzZVpvbmUSNwoLcGhvbmVfdXNhZ2'
    'UYECABKAsyFC5wcm90b2NvbC5QaG9uZVVzYWdlSABSCnBob25lVXNhZ2USNwoLcGhvbmVfdHJh'
    'Y2UYESABKAsyFC5wcm90b2NvbC5QaG9uZVRyYWNlSABSCnBob25lVHJhY2USUQoUbWlzaG93X3'
    'NsaWRlX3JlcXVlc3QYEiABKAsyHS5wcm90b2NvbC5NaVNob3cuU2xpZGVSZXF1ZXN0SABSEm1p'
    'c2hvd1NsaWRlUmVxdWVzdBI4CgttaXNob3dfZGVtbxgTIAEoCzIVLnByb3RvY29sLk1pU2hvdy'
    '5EZW1vSABSCm1pc2hvd0RlbW8SPAoLbWlzX2RldmljZXMYFCABKAsyGS5wcm90b2NvbC5NaXMu'
    'RGV2aWNlLkxpc3RIAFIKbWlzRGV2aWNlcxJFCg93ZWFyX3NwZWNfYmFzaWMYFSABKAsyGy5wcm'
    '90b2NvbC5NaXMuV2VhclNwZWNCYXNpY0gAUg13ZWFyU3BlY0Jhc2ljEjgKC21pc19wYXlsb2Fk'
    'GBYgASgLMhUucHJvdG9jb2wuTWlzLlBheWxvYWRIAFIKbWlzUGF5bG9hZBJOChNjZXJ0X3Nlcn'
    'Zlcl9yZXF1ZXN0GBcgASgLMhwucHJvdG9jb2wuQ2VydC5TZXJ2ZXJSZXF1ZXN0SABSEWNlcnRT'
    'ZXJ2ZXJSZXF1ZXN0Ek4KE2NlcnRfZGV2aWNlX3JlcXVlc3QYGCABKAsyHC5wcm90b2NvbC5DZX'
    'J0LkRldmljZVJlcXVlc3RIAFIRY2VydERldmljZVJlcXVlc3QSPgoNY2VydF9yZXNwb25zZRgZ'
    'IAEoCzIXLnByb3RvY29sLkNlcnQuUmVzcG9uc2VIAFIMY2VydFJlc3BvbnNlEjsKDHByb3Bfcm'
    'VxdWVzdBgaIAEoCzIWLnByb3RvY29sLlByb3AuUmVxdWVzdEgAUgtwcm9wUmVxdWVzdBI+Cg1w'
    'cm9wX3Jlc3BvbnNlGBsgASgLMhcucHJvdG9jb2wuUHJvcC5SZXNwb25zZUgAUgxwcm9wUmVzcG'
    '9uc2Ui2gcKEUludGVyY29ubmVjdGlvbklEEhgKFFJFUVVFU1RfUEhPTkVfU1RBVFVTEAASFQoR'
    'U1lOQ19QSE9ORV9TVEFUVVMQARIYChRSRUdJU1RFUl9QSE9ORV9VU0FHRRAREhoKFlVOUkVHSV'
    'NURVJfUEhPTkVfVVNBR0UQEhIUChBTRU5EX1BIT05FX1VTQUdFEBMSFQoRU1RBUlRfUEhPTkVf'
    'VFJBQ0UQFBIWChJGSU5JU0hfUEhPTkVfVFJBQ0UQFRIUChBTRU5EX1BIT05FX1RSQUNFEBYSGQ'
    'oVUkVRRVVTVF9TSEFSRV9ERVZJQ0VTEAISFgoSU1lOQ19TSEFSRV9ERVZJQ0VTEAMSFwoTVVBE'
    'QVRFX1NIQVJFX0RFVklDRRAEEhEKDUNPTlRST0xfQVVESU8QBRIOCgpDT05UUk9MX1RWEAYSEw'
    'oPQ09OVFJPTF9IRUFEU0VUEAcSFwoTU0VORF9DT05UUk9MX1JFU1VMVBAIEh4KGlJFUVVFU1Rf'
    'UFJPSkVDVElPTl9ERVZJQ0VTEAkSGwoXU1lOQ19QUk9KRUNUSU9OX0RFVklDRVMQChIWChJSRV'
    'FVRVNUX1BST0pFQ1RJT04QCxIcChhTRU5EX1BST0pFQ1RJT05fUkVTUE9OU0UQDBIaChZSRVBP'
    'UlRfUFJPSkVDVElPTl9EQVRBEA0SHAoYUkVQT1JUX1BST0pFQ1RJT05fUkVQT1JUEA4SHQoZTk'
    '9USUZZX1BST0pFQ1RJT05fTUVNQkVSUxAPEhUKEUVOVEVSX0NPVVJTRV9aT05FEBASFAoQU1RB'
    'UlRfU0xJREVfU0hPVxAXEhMKD1NUT1BfU0xJREVfU0hPVxAYEhMKD1NUQVJUX0RFTU9fU0hPVx'
    'AZEhIKDlNUT1BfREVNT19TSE9XEBoSGAoUU1VCU0NSSUJFX01JU19ERVZJQ0UQGxIaChZVTlNV'
    'QlNDUklCRV9NSVNfREVWSUNFEBwSEwoPU1lOQ19NSVNfREVWSUNFEB0SFAoQUFVCTElTSF9NSV'
    'NfU1BFQxAeEhMKD1JFUE9SVF9NSVNfU1BFQxAfEhcKE0dFVF9XRUFSX1NQRUNfQkFTSUMQIBIT'
    'Cg9TRU5EX01JU19QQUNLRVQQIRIXChNSRVFVRVNUX1NFUlZFUl9DRVJUECISGAoUUkVTUE9OU0'
    'VfU0VSVkVSX0NFUlQQIxIXChNSRVFVRVNUX0RFVklDRV9DRVJUECQSGAoUUkVTUE9OU0VfREVW'
    'SUNFX0NFUlQQJRIRCg1SRVFVRVNUX1BST1BTECYSEgoOUkVTUE9OU0VfUFJPUFMQJ0IJCgdwYX'
    'lsb2Fk');

@$core.Deprecated('Use phoneStatusDescriptor instead')
const PhoneStatus$json = {
  '1': 'PhoneStatus',
  '2': [
    {'1': 'screen', '3': 1, '4': 2, '5': 13, '10': 'screen'},
  ],
};

/// Descriptor for `PhoneStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneStatusDescriptor = $convert
    .base64Decode('CgtQaG9uZVN0YXR1cxIWCgZzY3JlZW4YASACKA1SBnNjcmVlbg==');

@$core.Deprecated('Use shareDeviceDescriptor instead')
const ShareDevice$json = {
  '1': 'ShareDevice',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.DeviceType',
      '10': 'type'
    },
    {'1': 'id', '3': 2, '4': 2, '5': 9, '10': 'id'},
    {'1': 'name', '3': 3, '4': 2, '5': 9, '10': 'name'},
    {
      '1': 'audio_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.AudioInfo',
      '9': 0,
      '10': 'audioInfo'
    },
    {
      '1': 'tv_info',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.TVInfo',
      '9': 0,
      '10': 'tvInfo'
    },
    {
      '1': 'headset_info',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.HeadsetInfo',
      '9': 0,
      '10': 'headsetInfo'
    },
  ],
  '3': [ShareDevice_List$json],
  '8': [
    {'1': 'info'},
  ],
};

@$core.Deprecated('Use shareDeviceDescriptor instead')
const ShareDevice_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.ShareDevice',
      '10': 'list'
    },
  ],
};

/// Descriptor for `ShareDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shareDeviceDescriptor = $convert.base64Decode(
    'CgtTaGFyZURldmljZRIoCgR0eXBlGAEgAigOMhQucHJvdG9jb2wuRGV2aWNlVHlwZVIEdHlwZR'
    'IOCgJpZBgCIAIoCVICaWQSEgoEbmFtZRgDIAIoCVIEbmFtZRI0CgphdWRpb19pbmZvGAQgASgL'
    'MhMucHJvdG9jb2wuQXVkaW9JbmZvSABSCWF1ZGlvSW5mbxIrCgd0dl9pbmZvGAUgASgLMhAucH'
    'JvdG9jb2wuVFZJbmZvSABSBnR2SW5mbxI6CgxoZWFkc2V0X2luZm8YBiABKAsyFS5wcm90b2Nv'
    'bC5IZWFkc2V0SW5mb0gAUgtoZWFkc2V0SW5mbxoxCgRMaXN0EikKBGxpc3QYASADKAsyFS5wcm'
    '90b2NvbC5TaGFyZURldmljZVIEbGlzdEIGCgRpbmZv');

@$core.Deprecated('Use audioDataDescriptor instead')
const AudioData$json = {
  '1': 'AudioData',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {'1': 'current_positon', '3': 2, '4': 2, '5': 13, '10': 'currentPositon'},
    {'1': 'duration', '3': 3, '4': 2, '5': 13, '10': 'duration'},
    {'1': 'volume', '3': 4, '4': 2, '5': 13, '10': 'volume'},
    {'1': 'artist', '3': 5, '4': 2, '5': 9, '10': 'artist'},
    {'1': 'album', '3': 6, '4': 2, '5': 9, '10': 'album'},
  ],
};

/// Descriptor for `AudioData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audioDataDescriptor = $convert.base64Decode(
    'CglBdWRpb0RhdGESEgoEbmFtZRgBIAIoCVIEbmFtZRInCg9jdXJyZW50X3Bvc2l0b24YAiACKA'
    '1SDmN1cnJlbnRQb3NpdG9uEhoKCGR1cmF0aW9uGAMgAigNUghkdXJhdGlvbhIWCgZ2b2x1bWUY'
    'BCACKA1SBnZvbHVtZRIWCgZhcnRpc3QYBSACKAlSBmFydGlzdBIUCgVhbGJ1bRgGIAIoCVIFYW'
    'xidW0=');

@$core.Deprecated('Use audioInfoDescriptor instead')
const AudioInfo$json = {
  '1': 'AudioInfo',
  '2': [
    {'1': 'state', '3': 1, '4': 2, '5': 13, '10': 'state'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.AudioData',
      '10': 'data'
    },
    {'1': 'output_id', '3': 3, '4': 2, '5': 9, '10': 'outputId'},
  ],
};

/// Descriptor for `AudioInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audioInfoDescriptor = $convert.base64Decode(
    'CglBdWRpb0luZm8SFAoFc3RhdGUYASACKA1SBXN0YXRlEicKBGRhdGEYAiABKAsyEy5wcm90b2'
    'NvbC5BdWRpb0RhdGFSBGRhdGESGwoJb3V0cHV0X2lkGAMgAigJUghvdXRwdXRJZA==');

@$core.Deprecated('Use tVDataDescriptor instead')
const TVData$json = {
  '1': 'TVData',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TVData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tVDataDescriptor =
    $convert.base64Decode('CgZUVkRhdGESEgoEbmFtZRgBIAIoCVIEbmFtZQ==');

@$core.Deprecated('Use tVInfoDescriptor instead')
const TVInfo$json = {
  '1': 'TVInfo',
  '2': [
    {'1': 'state', '3': 1, '4': 2, '5': 13, '10': 'state'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.TVData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `TVInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tVInfoDescriptor = $convert.base64Decode(
    'CgZUVkluZm8SFAoFc3RhdGUYASACKA1SBXN0YXRlEiQKBGRhdGEYAiABKAsyEC5wcm90b2NvbC'
    '5UVkRhdGFSBGRhdGE=');

@$core.Deprecated('Use headsetInfoDescriptor instead')
const HeadsetInfo$json = {
  '1': 'HeadsetInfo',
  '2': [
    {'1': 'voice_mode', '3': 1, '4': 2, '5': 13, '10': 'voiceMode'},
    {'1': 'multi_connection', '3': 2, '4': 2, '5': 13, '10': 'multiConnection'},
  ],
};

/// Descriptor for `HeadsetInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headsetInfoDescriptor = $convert.base64Decode(
    'CgtIZWFkc2V0SW5mbxIdCgp2b2ljZV9tb2RlGAEgAigNUgl2b2ljZU1vZGUSKQoQbXVsdGlfY2'
    '9ubmVjdGlvbhgCIAIoDVIPbXVsdGlDb25uZWN0aW9u');

@$core.Deprecated('Use audioControlDescriptor instead')
const AudioControl$json = {
  '1': 'AudioControl',
  '2': [
    {'1': 'device_id', '3': 1, '4': 2, '5': 9, '10': 'deviceId'},
    {'1': 'cmd', '3': 2, '4': 2, '5': 13, '10': 'cmd'},
    {'1': 'int_value', '3': 3, '4': 1, '5': 13, '10': 'intValue'},
    {'1': 'str_value', '3': 4, '4': 2, '5': 9, '10': 'strValue'},
  ],
};

/// Descriptor for `AudioControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audioControlDescriptor = $convert.base64Decode(
    'CgxBdWRpb0NvbnRyb2wSGwoJZGV2aWNlX2lkGAEgAigJUghkZXZpY2VJZBIQCgNjbWQYAiACKA'
    '1SA2NtZBIbCglpbnRfdmFsdWUYAyABKA1SCGludFZhbHVlEhsKCXN0cl92YWx1ZRgEIAIoCVII'
    'c3RyVmFsdWU=');

@$core.Deprecated('Use tVControlDescriptor instead')
const TVControl$json = {
  '1': 'TVControl',
  '2': [
    {'1': 'device_id', '3': 1, '4': 2, '5': 9, '10': 'deviceId'},
    {'1': 'cmd', '3': 2, '4': 2, '5': 13, '10': 'cmd'},
  ],
};

/// Descriptor for `TVControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tVControlDescriptor = $convert.base64Decode(
    'CglUVkNvbnRyb2wSGwoJZGV2aWNlX2lkGAEgAigJUghkZXZpY2VJZBIQCgNjbWQYAiACKA1SA2'
    'NtZA==');

@$core.Deprecated('Use headsetControlDescriptor instead')
const HeadsetControl$json = {
  '1': 'HeadsetControl',
  '2': [
    {'1': 'device_id', '3': 1, '4': 2, '5': 9, '10': 'deviceId'},
    {'1': 'voice_mode', '3': 2, '4': 1, '5': 13, '10': 'voiceMode'},
    {'1': 'multi_connection', '3': 3, '4': 1, '5': 13, '10': 'multiConnection'},
  ],
};

/// Descriptor for `HeadsetControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headsetControlDescriptor = $convert.base64Decode(
    'Cg5IZWFkc2V0Q29udHJvbBIbCglkZXZpY2VfaWQYASACKAlSCGRldmljZUlkEh0KCnZvaWNlX2'
    '1vZGUYAiABKA1SCXZvaWNlTW9kZRIpChBtdWx0aV9jb25uZWN0aW9uGAMgASgNUg9tdWx0aUNv'
    'bm5lY3Rpb24=');

@$core.Deprecated('Use controlResultDescriptor instead')
const ControlResult$json = {
  '1': 'ControlResult',
  '2': [
    {'1': 'device_id', '3': 1, '4': 2, '5': 9, '10': 'deviceId'},
    {'1': 'code', '3': 2, '4': 2, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `ControlResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controlResultDescriptor = $convert.base64Decode(
    'Cg1Db250cm9sUmVzdWx0EhsKCWRldmljZV9pZBgBIAIoCVIIZGV2aWNlSWQSEgoEY29kZRgCIA'
    'IoBVIEY29kZQ==');

@$core.Deprecated('Use projectionDeviceDescriptor instead')
const ProjectionDevice$json = {
  '1': 'ProjectionDevice',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    {'1': 'state', '3': 3, '4': 2, '5': 13, '10': 'state'},
  ],
  '3': [ProjectionDevice_List$json],
};

@$core.Deprecated('Use projectionDeviceDescriptor instead')
const ProjectionDevice_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.ProjectionDevice',
      '10': 'list'
    },
  ],
};

/// Descriptor for `ProjectionDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectionDeviceDescriptor = $convert.base64Decode(
    'ChBQcm9qZWN0aW9uRGV2aWNlEg4KAmlkGAEgAigJUgJpZBISCgRuYW1lGAIgAigJUgRuYW1lEh'
    'QKBXN0YXRlGAMgAigNUgVzdGF0ZRo2CgRMaXN0Ei4KBGxpc3QYASADKAsyGi5wcm90b2NvbC5Q'
    'cm9qZWN0aW9uRGV2aWNlUgRsaXN0');

@$core.Deprecated('Use projectionRequestDescriptor instead')
const ProjectionRequest$json = {
  '1': 'ProjectionRequest',
  '2': [
    {'1': 'device_id', '3': 1, '4': 2, '5': 9, '10': 'deviceId'},
    {'1': 'cmd', '3': 2, '4': 2, '5': 13, '10': 'cmd'},
  ],
};

/// Descriptor for `ProjectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectionRequestDescriptor = $convert.base64Decode(
    'ChFQcm9qZWN0aW9uUmVxdWVzdBIbCglkZXZpY2VfaWQYASACKAlSCGRldmljZUlkEhAKA2NtZB'
    'gCIAIoDVIDY21k');

@$core.Deprecated('Use projectionResponseDescriptor instead')
const ProjectionResponse$json = {
  '1': 'ProjectionResponse',
  '2': [
    {'1': 'device_id', '3': 1, '4': 2, '5': 9, '10': 'deviceId'},
    {'1': 'code', '3': 2, '4': 2, '5': 13, '10': 'code'},
  ],
};

/// Descriptor for `ProjectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectionResponseDescriptor = $convert.base64Decode(
    'ChJQcm9qZWN0aW9uUmVzcG9uc2USGwoJZGV2aWNlX2lkGAEgAigJUghkZXZpY2VJZBISCgRjb2'
    'RlGAIgAigNUgRjb2Rl');

@$core.Deprecated('Use projectionDataDescriptor instead')
const ProjectionData$json = {
  '1': 'ProjectionData',
  '2': [
    {
      '1': 'sport_type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.SportType',
      '10': 'sportType'
    },
    {'1': 'start_time', '3': 2, '4': 2, '5': 13, '10': 'startTime'},
    {'1': 'duration', '3': 3, '4': 2, '5': 13, '10': 'duration'},
    {'1': 'heart_rate', '3': 4, '4': 2, '5': 13, '10': 'heartRate'},
    {'1': 'calories', '3': 5, '4': 2, '5': 13, '10': 'calories'},
    {'1': 'steps', '3': 6, '4': 1, '5': 13, '10': 'steps'},
    {'1': 'distance', '3': 7, '4': 1, '5': 13, '10': 'distance'},
    {'1': 'current_pace', '3': 8, '4': 1, '5': 13, '10': 'currentPace'},
    {'1': 'speed', '3': 9, '4': 1, '5': 2, '10': 'speed'},
    {'1': 'jump_count', '3': 10, '4': 1, '5': 13, '10': 'jumpCount'},
    {'1': 'stumble_count', '3': 11, '4': 1, '5': 13, '10': 'stumbleCount'},
    {
      '1': 'group_info',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProjectionData.GroupInfo',
      '10': 'groupInfo'
    },
    {
      '1': 'abnormal_heart_rate',
      '3': 13,
      '4': 1,
      '5': 8,
      '10': 'abnormalHeartRate'
    },
    {
      '1': 'heart_rate_zone',
      '3': 14,
      '4': 1,
      '5': 14,
      '6': '.protocol.HeartRateSection',
      '10': 'heartRateZone'
    },
    {
      '1': 'device_list',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProjectionData.Device.List',
      '10': 'deviceList'
    },
  ],
  '3': [ProjectionData_GroupInfo$json, ProjectionData_Device$json],
};

@$core.Deprecated('Use projectionDataDescriptor instead')
const ProjectionData_GroupInfo$json = {
  '1': 'GroupInfo',
  '2': [
    {'1': 'segment_type', '3': 1, '4': 2, '5': 13, '10': 'segmentType'},
    {
      '1': 'segment_timestamp',
      '3': 2,
      '4': 2,
      '5': 13,
      '10': 'segmentTimestamp'
    },
    {'1': 'segment_duration', '3': 3, '4': 2, '5': 13, '10': 'segmentDuration'},
    {'1': 'group_index', '3': 4, '4': 1, '5': 13, '10': 'groupIndex'},
    {'1': 'calories', '3': 5, '4': 1, '5': 13, '10': 'calories'},
    {
      '1': 'recommend_heart_rate',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'recommendHeartRate'
    },
    {'1': 'count', '3': 7, '4': 1, '5': 13, '10': 'count'},
  ],
};

@$core.Deprecated('Use projectionDataDescriptor instead')
const ProjectionData_Device$json = {
  '1': 'Device',
  '2': [
    {'1': 'type', '3': 1, '4': 2, '5': 13, '10': 'type'},
    {'1': 'pid', '3': 2, '4': 2, '5': 13, '10': 'pid'},
    {'1': 'connect_status', '3': 3, '4': 2, '5': 13, '10': 'connectStatus'},
  ],
  '3': [ProjectionData_Device_List$json],
};

@$core.Deprecated('Use projectionDataDescriptor instead')
const ProjectionData_Device_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.ProjectionData.Device',
      '10': 'list'
    },
  ],
};

/// Descriptor for `ProjectionData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectionDataDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0aW9uRGF0YRIyCgpzcG9ydF90eXBlGAEgAigOMhMucHJvdG9jb2wuU3BvcnRUeX'
    'BlUglzcG9ydFR5cGUSHQoKc3RhcnRfdGltZRgCIAIoDVIJc3RhcnRUaW1lEhoKCGR1cmF0aW9u'
    'GAMgAigNUghkdXJhdGlvbhIdCgpoZWFydF9yYXRlGAQgAigNUgloZWFydFJhdGUSGgoIY2Fsb3'
    'JpZXMYBSACKA1SCGNhbG9yaWVzEhQKBXN0ZXBzGAYgASgNUgVzdGVwcxIaCghkaXN0YW5jZRgH'
    'IAEoDVIIZGlzdGFuY2USIQoMY3VycmVudF9wYWNlGAggASgNUgtjdXJyZW50UGFjZRIUCgVzcG'
    'VlZBgJIAEoAlIFc3BlZWQSHQoKanVtcF9jb3VudBgKIAEoDVIJanVtcENvdW50EiMKDXN0dW1i'
    'bGVfY291bnQYCyABKA1SDHN0dW1ibGVDb3VudBJBCgpncm91cF9pbmZvGAwgASgLMiIucHJvdG'
    '9jb2wuUHJvamVjdGlvbkRhdGEuR3JvdXBJbmZvUglncm91cEluZm8SLgoTYWJub3JtYWxfaGVh'
    'cnRfcmF0ZRgNIAEoCFIRYWJub3JtYWxIZWFydFJhdGUSQgoPaGVhcnRfcmF0ZV96b25lGA4gAS'
    'gOMhoucHJvdG9jb2wuSGVhcnRSYXRlU2VjdGlvblINaGVhcnRSYXRlWm9uZRJFCgtkZXZpY2Vf'
    'bGlzdBgPIAEoCzIkLnByb3RvY29sLlByb2plY3Rpb25EYXRhLkRldmljZS5MaXN0UgpkZXZpY2'
    'VMaXN0GosCCglHcm91cEluZm8SIQoMc2VnbWVudF90eXBlGAEgAigNUgtzZWdtZW50VHlwZRIr'
    'ChFzZWdtZW50X3RpbWVzdGFtcBgCIAIoDVIQc2VnbWVudFRpbWVzdGFtcBIpChBzZWdtZW50X2'
    'R1cmF0aW9uGAMgAigNUg9zZWdtZW50RHVyYXRpb24SHwoLZ3JvdXBfaW5kZXgYBCABKA1SCmdy'
    'b3VwSW5kZXgSGgoIY2Fsb3JpZXMYBSABKA1SCGNhbG9yaWVzEjAKFHJlY29tbWVuZF9oZWFydF'
    '9yYXRlGAYgASgNUhJyZWNvbW1lbmRIZWFydFJhdGUSFAoFY291bnQYByABKA1SBWNvdW50GpIB'
    'CgZEZXZpY2USEgoEdHlwZRgBIAIoDVIEdHlwZRIQCgNwaWQYAiACKA1SA3BpZBIlCg5jb25uZW'
    'N0X3N0YXR1cxgDIAIoDVINY29ubmVjdFN0YXR1cxo7CgRMaXN0EjMKBGxpc3QYASADKAsyHy5w'
    'cm90b2NvbC5Qcm9qZWN0aW9uRGF0YS5EZXZpY2VSBGxpc3Q=');

@$core.Deprecated('Use requestInfoDescriptor instead')
const RequestInfo$json = {
  '1': 'RequestInfo',
  '2': [
    {'1': 'only_audio', '3': 1, '4': 2, '5': 8, '10': 'onlyAudio'},
  ],
};

/// Descriptor for `RequestInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestInfoDescriptor = $convert.base64Decode(
    'CgtSZXF1ZXN0SW5mbxIdCgpvbmx5X2F1ZGlvGAEgAigIUglvbmx5QXVkaW8=');

@$core.Deprecated('Use projectionReportDescriptor instead')
const ProjectionReport$json = {
  '1': 'ProjectionReport',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 13, '10': 'timestamp'},
    {
      '1': 'timezone',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.Timezone',
      '10': 'timezone'
    },
    {'1': 'duration', '3': 3, '4': 2, '5': 13, '10': 'duration'},
    {'1': 'toal_calories', '3': 4, '4': 2, '5': 13, '10': 'toalCalories'},
    {'1': 'calories', '3': 5, '4': 2, '5': 13, '10': 'calories'},
    {'1': 'avg_heart_rate', '3': 6, '4': 2, '5': 13, '10': 'avgHeartRate'},
    {'1': 'max_heart_rate', '3': 7, '4': 2, '5': 13, '10': 'maxHeartRate'},
    {'1': 'min_heart_rate', '3': 8, '4': 2, '5': 13, '10': 'minHeartRate'},
    {
      '1': 'hrm_warm_up_duration',
      '3': 9,
      '4': 2,
      '5': 13,
      '10': 'hrmWarmUpDuration'
    },
    {
      '1': 'hrm_fat_burning_duration',
      '3': 10,
      '4': 2,
      '5': 13,
      '10': 'hrmFatBurningDuration'
    },
    {
      '1': 'hrm_aerobic_duration',
      '3': 11,
      '4': 2,
      '5': 13,
      '10': 'hrmAerobicDuration'
    },
    {
      '1': 'hrm_anaerobic_duration',
      '3': 12,
      '4': 2,
      '5': 13,
      '10': 'hrmAnaerobicDuration'
    },
    {
      '1': 'hrm_extreme_duration',
      '3': 13,
      '4': 2,
      '5': 13,
      '10': 'hrmExtremeDuration'
    },
  ],
};

/// Descriptor for `ProjectionReport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectionReportDescriptor = $convert.base64Decode(
    'ChBQcm9qZWN0aW9uUmVwb3J0EhwKCXRpbWVzdGFtcBgBIAIoDVIJdGltZXN0YW1wEi4KCHRpbW'
    'V6b25lGAIgAigLMhIucHJvdG9jb2wuVGltZXpvbmVSCHRpbWV6b25lEhoKCGR1cmF0aW9uGAMg'
    'AigNUghkdXJhdGlvbhIjCg10b2FsX2NhbG9yaWVzGAQgAigNUgx0b2FsQ2Fsb3JpZXMSGgoIY2'
    'Fsb3JpZXMYBSACKA1SCGNhbG9yaWVzEiQKDmF2Z19oZWFydF9yYXRlGAYgAigNUgxhdmdIZWFy'
    'dFJhdGUSJAoObWF4X2hlYXJ0X3JhdGUYByACKA1SDG1heEhlYXJ0UmF0ZRIkCg5taW5faGVhcn'
    'RfcmF0ZRgIIAIoDVIMbWluSGVhcnRSYXRlEi8KFGhybV93YXJtX3VwX2R1cmF0aW9uGAkgAigN'
    'UhFocm1XYXJtVXBEdXJhdGlvbhI3Chhocm1fZmF0X2J1cm5pbmdfZHVyYXRpb24YCiACKA1SFW'
    'hybUZhdEJ1cm5pbmdEdXJhdGlvbhIwChRocm1fYWVyb2JpY19kdXJhdGlvbhgLIAIoDVISaHJt'
    'QWVyb2JpY0R1cmF0aW9uEjQKFmhybV9hbmFlcm9iaWNfZHVyYXRpb24YDCACKA1SFGhybUFuYW'
    'Vyb2JpY0R1cmF0aW9uEjAKFGhybV9leHRyZW1lX2R1cmF0aW9uGA0gAigNUhJocm1FeHRyZW1l'
    'RHVyYXRpb24=');

@$core.Deprecated('Use projectionMemberDescriptor instead')
const ProjectionMember$json = {
  '1': 'ProjectionMember',
  '2': [
    {'1': 'device_id', '3': 1, '4': 2, '5': 9, '10': 'deviceId'},
    {'1': 'user_id', '3': 2, '4': 2, '5': 9, '10': 'userId'},
    {'1': 'user_name', '3': 3, '4': 2, '5': 9, '10': 'userName'},
    {'1': 'status', '3': 4, '4': 1, '5': 13, '10': 'status'},
  ],
  '3': [ProjectionMember_List$json],
};

@$core.Deprecated('Use projectionMemberDescriptor instead')
const ProjectionMember_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.ProjectionMember',
      '10': 'list'
    },
  ],
};

/// Descriptor for `ProjectionMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectionMemberDescriptor = $convert.base64Decode(
    'ChBQcm9qZWN0aW9uTWVtYmVyEhsKCWRldmljZV9pZBgBIAIoCVIIZGV2aWNlSWQSFwoHdXNlcl'
    '9pZBgCIAIoCVIGdXNlcklkEhsKCXVzZXJfbmFtZRgDIAIoCVIIdXNlck5hbWUSFgoGc3RhdHVz'
    'GAQgASgNUgZzdGF0dXMaNgoETGlzdBIuCgRsaXN0GAEgAygLMhoucHJvdG9jb2wuUHJvamVjdG'
    'lvbk1lbWJlclIEbGlzdA==');

@$core.Deprecated('Use courseZoneDescriptor instead')
const CourseZone$json = {
  '1': 'CourseZone',
  '2': [
    {'1': 'status', '3': 1, '4': 2, '5': 13, '10': 'status'},
  ],
};

/// Descriptor for `CourseZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courseZoneDescriptor =
    $convert.base64Decode('CgpDb3Vyc2Vab25lEhYKBnN0YXR1cxgBIAIoDVIGc3RhdHVz');

@$core.Deprecated('Use phoneUsageDescriptor instead')
const PhoneUsage$json = {
  '1': 'PhoneUsage',
  '2': [
    {'1': 'hold', '3': 1, '4': 2, '5': 8, '10': 'hold'},
    {'1': 'screen', '3': 2, '4': 2, '5': 13, '10': 'screen'},
    {
      '1': 'foreground_app_type',
      '3': 3,
      '4': 2,
      '5': 13,
      '10': 'foregroundAppType'
    },
  ],
};

/// Descriptor for `PhoneUsage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneUsageDescriptor = $convert.base64Decode(
    'CgpQaG9uZVVzYWdlEhIKBGhvbGQYASACKAhSBGhvbGQSFgoGc2NyZWVuGAIgAigNUgZzY3JlZW'
    '4SLgoTZm9yZWdyb3VuZF9hcHBfdHlwZRgDIAIoDVIRZm9yZWdyb3VuZEFwcFR5cGU=');

@$core.Deprecated('Use phoneTraceDescriptor instead')
const PhoneTrace$json = {
  '1': 'PhoneTrace',
  '2': [
    {'1': 'dir_angle', '3': 1, '4': 2, '5': 13, '10': 'dirAngle'},
    {'1': 'dir_change_count', '3': 2, '4': 2, '5': 13, '10': 'dirChangeCount'},
    {'1': 'dir_change_std', '3': 3, '4': 2, '5': 13, '10': 'dirChangeStd'},
    {'1': 'dir_change_avg', '3': 4, '4': 2, '5': 13, '10': 'dirChangeAvg'},
    {
      '1': 'ambient_light_avg',
      '3': 5,
      '4': 2,
      '5': 13,
      '10': 'ambientLightAvg'
    },
  ],
};

/// Descriptor for `PhoneTrace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneTraceDescriptor = $convert.base64Decode(
    'CgpQaG9uZVRyYWNlEhsKCWRpcl9hbmdsZRgBIAIoDVIIZGlyQW5nbGUSKAoQZGlyX2NoYW5nZV'
    '9jb3VudBgCIAIoDVIOZGlyQ2hhbmdlQ291bnQSJAoOZGlyX2NoYW5nZV9zdGQYAyACKA1SDGRp'
    'ckNoYW5nZVN0ZBIkCg5kaXJfY2hhbmdlX2F2ZxgEIAIoDVIMZGlyQ2hhbmdlQXZnEioKEWFtYm'
    'llbnRfbGlnaHRfYXZnGAUgAigNUg9hbWJpZW50TGlnaHRBdmc=');

@$core.Deprecated('Use miShowDescriptor instead')
const MiShow$json = {
  '1': 'MiShow',
  '3': [MiShow_SlideRequest$json, MiShow_Demo$json],
};

@$core.Deprecated('Use miShowDescriptor instead')
const MiShow_SlideRequest$json = {
  '1': 'SlideRequest',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 4, '10': 'timestamp'},
  ],
};

@$core.Deprecated('Use miShowDescriptor instead')
const MiShow_Demo$json = {
  '1': 'Demo',
  '2': [
    {'1': 'show', '3': 1, '4': 2, '5': 9, '10': 'show'},
  ],
};

/// Descriptor for `MiShow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miShowDescriptor = $convert.base64Decode(
    'CgZNaVNob3caLAoMU2xpZGVSZXF1ZXN0EhwKCXRpbWVzdGFtcBgBIAIoBFIJdGltZXN0YW1wGh'
    'oKBERlbW8SEgoEc2hvdxgBIAIoCVIEc2hvdw==');

@$core.Deprecated('Use misDescriptor instead')
const Mis$json = {
  '1': 'Mis',
  '3': [Mis_Device$json, Mis_WearSpecBasic$json, Mis_Payload$json],
};

@$core.Deprecated('Use misDescriptor instead')
const Mis_Device$json = {
  '1': 'Device',
  '2': [
    {'1': 'did', '3': 1, '4': 2, '5': 9, '10': 'did'},
    {'1': 'pdid', '3': 2, '4': 2, '5': 13, '10': 'pdid'},
    {'1': 'status', '3': 3, '4': 2, '5': 13, '10': 'status'},
    {'1': 'name', '3': 4, '4': 2, '5': 9, '10': 'name'},
  ],
  '3': [Mis_Device_List$json],
};

@$core.Deprecated('Use misDescriptor instead')
const Mis_Device_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.Mis.Device',
      '10': 'list'
    },
    {'1': 'car_owner', '3': 2, '4': 1, '5': 8, '10': 'carOwner'},
  ],
};

@$core.Deprecated('Use misDescriptor instead')
const Mis_WearSpecBasic$json = {
  '1': 'WearSpecBasic',
  '2': [
    {'1': 'device_info', '3': 1, '4': 2, '5': 9, '10': 'deviceInfo'},
  ],
};

@$core.Deprecated('Use misDescriptor instead')
const Mis_Payload$json = {
  '1': 'Payload',
  '2': [
    {'1': 'spec', '3': 1, '4': 2, '5': 9, '10': 'spec'},
    {'1': 'packet', '3': 2, '4': 2, '5': 12, '10': 'packet'},
  ],
};

/// Descriptor for `Mis`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List misDescriptor = $convert.base64Decode(
    'CgNNaXMaqQEKBkRldmljZRIQCgNkaWQYASACKAlSA2RpZBISCgRwZGlkGAIgAigNUgRwZGlkEh'
    'YKBnN0YXR1cxgDIAIoDVIGc3RhdHVzEhIKBG5hbWUYBCACKAlSBG5hbWUaTQoETGlzdBIoCgRs'
    'aXN0GAEgAygLMhQucHJvdG9jb2wuTWlzLkRldmljZVIEbGlzdBIbCgljYXJfb3duZXIYAiABKA'
    'hSCGNhck93bmVyGjAKDVdlYXJTcGVjQmFzaWMSHwoLZGV2aWNlX2luZm8YASACKAlSCmRldmlj'
    'ZUluZm8aNQoHUGF5bG9hZBISCgRzcGVjGAEgAigJUgRzcGVjEhYKBnBhY2tldBgCIAIoDFIGcG'
    'Fja2V0');

@$core.Deprecated('Use certDescriptor instead')
const Cert$json = {
  '1': 'Cert',
  '3': [Cert_ServerRequest$json, Cert_DeviceRequest$json, Cert_Response$json],
};

@$core.Deprecated('Use certDescriptor instead')
const Cert_ServerRequest$json = {
  '1': 'ServerRequest',
};

@$core.Deprecated('Use certDescriptor instead')
const Cert_DeviceRequest$json = {
  '1': 'DeviceRequest',
  '2': [
    {'1': 'payload', '3': 1, '4': 2, '5': 9, '10': 'payload'},
  ],
};

@$core.Deprecated('Use certDescriptor instead')
const Cert_Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'error_code', '3': 1, '4': 2, '5': 5, '10': 'errorCode'},
    {'1': 'result', '3': 2, '4': 2, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `Cert`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certDescriptor = $convert.base64Decode(
    'CgRDZXJ0Gg8KDVNlcnZlclJlcXVlc3QaKQoNRGV2aWNlUmVxdWVzdBIYCgdwYXlsb2FkGAEgAi'
    'gJUgdwYXlsb2FkGkEKCFJlc3BvbnNlEh0KCmVycm9yX2NvZGUYASACKAVSCWVycm9yQ29kZRIW'
    'CgZyZXN1bHQYAiACKAlSBnJlc3VsdA==');

@$core.Deprecated('Use propDescriptor instead')
const Prop$json = {
  '1': 'Prop',
  '3': [Prop_Request$json, Prop_Response$json],
};

@$core.Deprecated('Use propDescriptor instead')
const Prop_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'did', '3': 1, '4': 2, '5': 9, '10': 'did'},
    {'1': 'props', '3': 2, '4': 3, '5': 9, '10': 'props'},
  ],
};

@$core.Deprecated('Use propDescriptor instead')
const Prop_Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'did', '3': 1, '4': 2, '5': 9, '10': 'did'},
    {
      '1': 'props_value',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.KeyValueStr',
      '10': 'propsValue'
    },
  ],
};

/// Descriptor for `Prop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propDescriptor = $convert.base64Decode(
    'CgRQcm9wGjEKB1JlcXVlc3QSEAoDZGlkGAEgAigJUgNkaWQSFAoFcHJvcHMYAiADKAlSBXByb3'
    'BzGlQKCFJlc3BvbnNlEhAKA2RpZBgBIAIoCVIDZGlkEjYKC3Byb3BzX3ZhbHVlGAIgAygLMhUu'
    'cHJvdG9jb2wuS2V5VmFsdWVTdHJSCnByb3BzVmFsdWU=');
