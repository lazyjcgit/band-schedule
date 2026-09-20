// This is a generated file - do not edit.
//
// Generated from wear_contact.proto.

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

@$core.Deprecated('Use contactDescriptor instead')
const Contact$json = {
  '1': 'Contact',
  '2': [
    {
      '1': 'emergency_contact',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.EmergencyContact',
      '9': 0,
      '10': 'emergencyContact'
    },
    {'1': 'number', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'number'},
    {
      '1': 'contact_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.ContactInfo',
      '9': 0,
      '10': 'contactInfo'
    },
    {
      '1': 'contact_info_list',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.ContactInfo.List',
      '9': 0,
      '10': 'contactInfoList'
    },
    {
      '1': 'miui_sos_request',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiuiSOS.Request',
      '9': 0,
      '10': 'miuiSosRequest'
    },
    {
      '1': 'miui_sos_response',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.MiuiSOS.Response',
      '9': 0,
      '10': 'miuiSosResponse'
    },
    {
      '1': 'help_request',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.HelpRequest',
      '9': 0,
      '10': 'helpRequest'
    },
  ],
  '4': [Contact_ContactID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use contactDescriptor instead')
const Contact_ContactID$json = {
  '1': 'ContactID',
  '2': [
    {'1': 'GET_EMERGENCY_CONTACT', '2': 0},
    {'1': 'SET_EMERGENCY_CONTACT', '2': 1},
    {'1': 'REQUEST_MIUI_SOS', '2': 8},
    {'1': 'RESPONSE_MIUI_SOS', '2': 9},
    {'1': 'APPLY_FALL_HELP', '2': 10},
    {'1': 'END_FALL_HELP', '2': 11},
    {'1': 'QUERY_CONTACT_INFO', '2': 2},
    {'1': 'SEND_CONTACT_INFO', '2': 3},
    {'1': 'GET_CONTACT_LIST', '2': 4},
    {'1': 'ADD_CONTACT_LIST', '2': 5},
    {'1': 'REMOVE_CONTACT_LIST', '2': 6},
    {'1': 'SYNC_CONTACT_LIST', '2': 7},
  ],
};

/// Descriptor for `Contact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactDescriptor = $convert.base64Decode(
    'CgdDb250YWN0EkkKEWVtZXJnZW5jeV9jb250YWN0GAEgASgLMhoucHJvdG9jb2wuRW1lcmdlbm'
    'N5Q29udGFjdEgAUhBlbWVyZ2VuY3lDb250YWN0EhgKBm51bWJlchgCIAEoCUgAUgZudW1iZXIS'
    'OgoMY29udGFjdF9pbmZvGAMgASgLMhUucHJvdG9jb2wuQ29udGFjdEluZm9IAFILY29udGFjdE'
    'luZm8SSAoRY29udGFjdF9pbmZvX2xpc3QYBCABKAsyGi5wcm90b2NvbC5Db250YWN0SW5mby5M'
    'aXN0SABSD2NvbnRhY3RJbmZvTGlzdBJFChBtaXVpX3Nvc19yZXF1ZXN0GAUgASgLMhkucHJvdG'
    '9jb2wuTWl1aVNPUy5SZXF1ZXN0SABSDm1pdWlTb3NSZXF1ZXN0EkgKEW1pdWlfc29zX3Jlc3Bv'
    'bnNlGAYgASgLMhoucHJvdG9jb2wuTWl1aVNPUy5SZXNwb25zZUgAUg9taXVpU29zUmVzcG9uc2'
    'USOgoMaGVscF9yZXF1ZXN0GAcgASgLMhUucHJvdG9jb2wuSGVscFJlcXVlc3RIAFILaGVscFJl'
    'cXVlc3QioQIKCUNvbnRhY3RJRBIZChVHRVRfRU1FUkdFTkNZX0NPTlRBQ1QQABIZChVTRVRfRU'
    '1FUkdFTkNZX0NPTlRBQ1QQARIUChBSRVFVRVNUX01JVUlfU09TEAgSFQoRUkVTUE9OU0VfTUlV'
    'SV9TT1MQCRITCg9BUFBMWV9GQUxMX0hFTFAQChIRCg1FTkRfRkFMTF9IRUxQEAsSFgoSUVVFUl'
    'lfQ09OVEFDVF9JTkZPEAISFQoRU0VORF9DT05UQUNUX0lORk8QAxIUChBHRVRfQ09OVEFDVF9M'
    'SVNUEAQSFAoQQUREX0NPTlRBQ1RfTElTVBAFEhcKE1JFTU9WRV9DT05UQUNUX0xJU1QQBhIVCh'
    'FTWU5DX0NPTlRBQ1RfTElTVBAHQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use contactInfoDescriptor instead')
const ContactInfo$json = {
  '1': 'ContactInfo',
  '2': [
    {'1': 'name', '3': 1, '4': 2, '5': 9, '10': 'name'},
    {'1': 'number', '3': 2, '4': 2, '5': 9, '10': 'number'},
  ],
  '3': [ContactInfo_List$json],
};

@$core.Deprecated('Use contactInfoDescriptor instead')
const ContactInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.ContactInfo',
      '10': 'list'
    },
    {'1': 'current_segment', '3': 2, '4': 1, '5': 13, '10': 'currentSegment'},
    {'1': 'total_segment', '3': 3, '4': 1, '5': 13, '10': 'totalSegment'},
  ],
};

/// Descriptor for `ContactInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactInfoDescriptor = $convert.base64Decode(
    'CgtDb250YWN0SW5mbxISCgRuYW1lGAEgAigJUgRuYW1lEhYKBm51bWJlchgCIAIoCVIGbnVtYm'
    'VyGn8KBExpc3QSKQoEbGlzdBgBIAMoCzIVLnByb3RvY29sLkNvbnRhY3RJbmZvUgRsaXN0EicK'
    'D2N1cnJlbnRfc2VnbWVudBgCIAEoDVIOY3VycmVudFNlZ21lbnQSIwoNdG90YWxfc2VnbWVudB'
    'gDIAEoDVIMdG90YWxTZWdtZW50');

@$core.Deprecated('Use emergencyContactDescriptor instead')
const EmergencyContact$json = {
  '1': 'EmergencyContact',
  '2': [
    {'1': 'enabled', '3': 1, '4': 2, '5': 8, '10': 'enabled'},
    {
      '1': 'contact_info',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.ContactInfo',
      '10': 'contactInfo'
    },
  ],
};

/// Descriptor for `EmergencyContact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emergencyContactDescriptor = $convert.base64Decode(
    'ChBFbWVyZ2VuY3lDb250YWN0EhgKB2VuYWJsZWQYASACKAhSB2VuYWJsZWQSOAoMY29udGFjdF'
    '9pbmZvGAIgASgLMhUucHJvdG9jb2wuQ29udGFjdEluZm9SC2NvbnRhY3RJbmZv');

@$core.Deprecated('Use miuiSOSDescriptor instead')
const MiuiSOS$json = {
  '1': 'MiuiSOS',
  '3': [MiuiSOS_Request$json, MiuiSOS_Response$json],
};

@$core.Deprecated('Use miuiSOSDescriptor instead')
const MiuiSOS_Request$json = {
  '1': 'Request',
};

@$core.Deprecated('Use miuiSOSDescriptor instead')
const MiuiSOS_Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 13, '10': 'code'},
  ],
};

/// Descriptor for `MiuiSOS`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List miuiSOSDescriptor = $convert.base64Decode(
    'CgdNaXVpU09TGgkKB1JlcXVlc3QaHgoIUmVzcG9uc2USEgoEY29kZRgBIAIoDVIEY29kZQ==');

@$core.Deprecated('Use helpRequestDescriptor instead')
const HelpRequest$json = {
  '1': 'HelpRequest',
  '2': [
    {'1': 'sms_number', '3': 1, '4': 3, '5': 9, '10': 'smsNumber'},
    {'1': 'reason', '3': 2, '4': 1, '5': 13, '10': 'reason'},
  ],
};

/// Descriptor for `HelpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helpRequestDescriptor = $convert.base64Decode(
    'CgtIZWxwUmVxdWVzdBIdCgpzbXNfbnVtYmVyGAEgAygJUglzbXNOdW1iZXISFgoGcmVhc29uGA'
    'IgASgNUgZyZWFzb24=');
