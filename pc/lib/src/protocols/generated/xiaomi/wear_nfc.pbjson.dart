// This is a generated file - do not edit.
//
// Generated from wear_nfc.proto.

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

@$core.Deprecated('Use issueCardStatusDescriptor instead')
const IssueCardStatus$json = {
  '1': 'IssueCardStatus',
  '2': [
    {'1': 'START', '2': 0},
    {'1': 'CONTINUE', '2': 3},
    {'1': 'SUCCESS', '2': 1},
    {'1': 'FAILURE', '2': 2},
  ],
};

/// Descriptor for `IssueCardStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List issueCardStatusDescriptor = $convert.base64Decode(
    'Cg9Jc3N1ZUNhcmRTdGF0dXMSCQoFU1RBUlQQABIMCghDT05USU5VRRADEgsKB1NVQ0NFU1MQAR'
    'ILCgdGQUlMVVJFEAI=');

@$core.Deprecated('Use issueCardTypeDescriptor instead')
const IssueCardType$json = {
  '1': 'IssueCardType',
  '2': [
    {'1': 'DOOR_CARD', '2': 0},
    {'1': 'BUS_CARD', '2': 1},
    {'1': 'UNION_PAY_CARD', '2': 2},
    {'1': 'CLOUD_CARD', '2': 3},
    {'1': 'MASTER_CARD', '2': 4},
    {'1': 'CAR_KEY', '2': 5},
    {'1': 'CAR_KEY_ICCOA', '2': 7},
    {'1': 'CAR_KEY_BYD', '2': 8},
    {'1': 'EASY_CARD', '2': 6},
  ],
};

/// Descriptor for `IssueCardType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List issueCardTypeDescriptor = $convert.base64Decode(
    'Cg1Jc3N1ZUNhcmRUeXBlEg0KCURPT1JfQ0FSRBAAEgwKCEJVU19DQVJEEAESEgoOVU5JT05fUE'
    'FZX0NBUkQQAhIOCgpDTE9VRF9DQVJEEAMSDwoLTUFTVEVSX0NBUkQQBBILCgdDQVJfS0VZEAUS'
    'EQoNQ0FSX0tFWV9JQ0NPQRAHEg8KC0NBUl9LRVlfQllEEAgSDQoJRUFTWV9DQVJEEAY=');

@$core.Deprecated('Use nfcDescriptor instead')
const Nfc$json = {
  '1': 'Nfc',
  '2': [
    {'1': 'command', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'command'},
    {
      '1': 'issue_card',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.IssueCard',
      '9': 0,
      '10': 'issueCard'
    },
    {
      '1': 'card_data',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.CardData',
      '9': 0,
      '10': 'cardData'
    },
    {
      '1': 'card_info',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.CardInfo',
      '9': 0,
      '10': 'cardInfo'
    },
    {
      '1': 'card_info_list',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.CardInfo.List',
      '9': 0,
      '10': 'cardInfoList'
    },
    {'1': 'aid', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'aid'},
    {
      '1': 'balance_info',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.BalanceInfo',
      '9': 0,
      '10': 'balanceInfo'
    },
    {'1': 'config', '3': 8, '4': 1, '5': 9, '9': 0, '10': 'config'},
    {
      '1': 'command_info_list',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.CommandInfo.List',
      '9': 0,
      '10': 'commandInfoList'
    },
    {'1': 'capability', '3': 10, '4': 1, '5': 13, '9': 0, '10': 'capability'},
    {
      '1': 'card_switcher_list',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.CardSwitcher.List',
      '9': 0,
      '10': 'cardSwitcherList'
    },
    {
      '1': 'card_switcher',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.CardSwitcher',
      '9': 0,
      '10': 'cardSwitcher'
    },
    {
      '1': 'card_switcher_result',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.CardSwitcher.Result',
      '9': 0,
      '10': 'cardSwitcherResult'
    },
    {
      '1': 'super_card_data',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.SuperCardData',
      '9': 0,
      '10': 'superCardData'
    },
    {
      '1': 'probe_request',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProbeSector.Request',
      '9': 0,
      '10': 'probeRequest'
    },
    {
      '1': 'probe_response',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProbeSector.Response',
      '9': 0,
      '10': 'probeResponse'
    },
    {
      '1': 'key_list',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.SectorKey.List',
      '9': 0,
      '10': 'keyList'
    },
    {
      '1': 'crack_card_data',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.CrackCardData',
      '9': 0,
      '10': 'crackCardData'
    },
    {
      '1': 'card_switcher_smart',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.CardSwitcher.Smart',
      '9': 0,
      '10': 'cardSwitcherSmart'
    },
  ],
  '4': [Nfc_NfcID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use nfcDescriptor instead')
const Nfc_NfcID$json = {
  '1': 'NfcID',
  '2': [
    {'1': 'COMMAND', '2': 0},
    {'1': 'ISSUE_CARD', '2': 1},
    {'1': 'ADD_CARD', '2': 2},
    {'1': 'DEL_CARD', '2': 3},
    {'1': 'SYNC_CARD_LIST', '2': 4},
    {'1': 'SET_DEFAULT_CARD', '2': 5},
    {'1': 'GET_DEFAULT_CARD', '2': 6},
    {'1': 'SET_BALANCE', '2': 7},
    {'1': 'GET_BALANCE', '2': 8},
    {'1': 'SET_CONFIG', '2': 9},
    {'1': 'CAPABILITY_SET', '2': 10},
    {'1': 'COMMAND_BATCH', '2': 16},
    {'1': 'GET_CARD_SWITCHER_TIME', '2': 11},
    {'1': 'UPDATE_CARD_SWITCHER_TIME', '2': 12},
    {'1': 'ADD_CARD_SWITCHER_TIME', '2': 13},
    {'1': 'REMOVE_CARD_SWITCHER_TIME', '2': 14},
    {'1': 'GET_CARD_SWITCHER_SMART', '2': 21},
    {'1': 'SET_CARD_SWITCHER_SMART', '2': 22},
    {'1': 'NOTIFY_CARD_STICK', '2': 15},
    {'1': 'OPEN_TAI', '2': 17},
    {'1': 'PROBE_SECTOR', '2': 18},
    {'1': 'CLOSE_TAI', '2': 19},
    {'1': 'CRACK_SECTORS', '2': 20},
  ],
};

/// Descriptor for `Nfc`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nfcDescriptor = $convert.base64Decode(
    'CgNOZmMSGgoHY29tbWFuZBgBIAEoDEgAUgdjb21tYW5kEjQKCmlzc3VlX2NhcmQYAiABKAsyEy'
    '5wcm90b2NvbC5Jc3N1ZUNhcmRIAFIJaXNzdWVDYXJkEjEKCWNhcmRfZGF0YRgDIAEoCzISLnBy'
    'b3RvY29sLkNhcmREYXRhSABSCGNhcmREYXRhEjEKCWNhcmRfaW5mbxgEIAEoCzISLnByb3RvY2'
    '9sLkNhcmRJbmZvSABSCGNhcmRJbmZvEj8KDmNhcmRfaW5mb19saXN0GAUgASgLMhcucHJvdG9j'
    'b2wuQ2FyZEluZm8uTGlzdEgAUgxjYXJkSW5mb0xpc3QSEgoDYWlkGAYgASgJSABSA2FpZBI6Cg'
    'xiYWxhbmNlX2luZm8YByABKAsyFS5wcm90b2NvbC5CYWxhbmNlSW5mb0gAUgtiYWxhbmNlSW5m'
    'bxIYCgZjb25maWcYCCABKAlIAFIGY29uZmlnEkgKEWNvbW1hbmRfaW5mb19saXN0GAkgASgLMh'
    'oucHJvdG9jb2wuQ29tbWFuZEluZm8uTGlzdEgAUg9jb21tYW5kSW5mb0xpc3QSIAoKY2FwYWJp'
    'bGl0eRgKIAEoDUgAUgpjYXBhYmlsaXR5EksKEmNhcmRfc3dpdGNoZXJfbGlzdBgLIAEoCzIbLn'
    'Byb3RvY29sLkNhcmRTd2l0Y2hlci5MaXN0SABSEGNhcmRTd2l0Y2hlckxpc3QSPQoNY2FyZF9z'
    'd2l0Y2hlchgMIAEoCzIWLnByb3RvY29sLkNhcmRTd2l0Y2hlckgAUgxjYXJkU3dpdGNoZXISUQ'
    'oUY2FyZF9zd2l0Y2hlcl9yZXN1bHQYDSABKAsyHS5wcm90b2NvbC5DYXJkU3dpdGNoZXIuUmVz'
    'dWx0SABSEmNhcmRTd2l0Y2hlclJlc3VsdBJBCg9zdXBlcl9jYXJkX2RhdGEYDiABKAsyFy5wcm'
    '90b2NvbC5TdXBlckNhcmREYXRhSABSDXN1cGVyQ2FyZERhdGESRAoNcHJvYmVfcmVxdWVzdBgP'
    'IAEoCzIdLnByb3RvY29sLlByb2JlU2VjdG9yLlJlcXVlc3RIAFIMcHJvYmVSZXF1ZXN0EkcKDn'
    'Byb2JlX3Jlc3BvbnNlGBAgASgLMh4ucHJvdG9jb2wuUHJvYmVTZWN0b3IuUmVzcG9uc2VIAFIN'
    'cHJvYmVSZXNwb25zZRI1CghrZXlfbGlzdBgRIAEoCzIYLnByb3RvY29sLlNlY3RvcktleS5MaX'
    'N0SABSB2tleUxpc3QSQQoPY3JhY2tfY2FyZF9kYXRhGBIgASgLMhcucHJvdG9jb2wuQ3JhY2tD'
    'YXJkRGF0YUgAUg1jcmFja0NhcmREYXRhEk4KE2NhcmRfc3dpdGNoZXJfc21hcnQYEyABKAsyHC'
    '5wcm90b2NvbC5DYXJkU3dpdGNoZXIuU21hcnRIAFIRY2FyZFN3aXRjaGVyU21hcnQi4gMKBU5m'
    'Y0lEEgsKB0NPTU1BTkQQABIOCgpJU1NVRV9DQVJEEAESDAoIQUREX0NBUkQQAhIMCghERUxfQ0'
    'FSRBADEhIKDlNZTkNfQ0FSRF9MSVNUEAQSFAoQU0VUX0RFRkFVTFRfQ0FSRBAFEhQKEEdFVF9E'
    'RUZBVUxUX0NBUkQQBhIPCgtTRVRfQkFMQU5DRRAHEg8KC0dFVF9CQUxBTkNFEAgSDgoKU0VUX0'
    'NPTkZJRxAJEhIKDkNBUEFCSUxJVFlfU0VUEAoSEQoNQ09NTUFORF9CQVRDSBAQEhoKFkdFVF9D'
    'QVJEX1NXSVRDSEVSX1RJTUUQCxIdChlVUERBVEVfQ0FSRF9TV0lUQ0hFUl9USU1FEAwSGgoWQU'
    'REX0NBUkRfU1dJVENIRVJfVElNRRANEh0KGVJFTU9WRV9DQVJEX1NXSVRDSEVSX1RJTUUQDhIb'
    'ChdHRVRfQ0FSRF9TV0lUQ0hFUl9TTUFSVBAVEhsKF1NFVF9DQVJEX1NXSVRDSEVSX1NNQVJUEB'
    'YSFQoRTk9USUZZX0NBUkRfU1RJQ0sQDxIMCghPUEVOX1RBSRAREhAKDFBST0JFX1NFQ1RPUhAS'
    'Eg0KCUNMT1NFX1RBSRATEhEKDUNSQUNLX1NFQ1RPUlMQFEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use issueCardDescriptor instead')
const IssueCard$json = {
  '1': 'IssueCard',
  '2': [
    {
      '1': 'status',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.IssueCardStatus',
      '10': 'status'
    },
    {
      '1': 'type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.protocol.IssueCardType',
      '10': 'type'
    },
    {'1': 'need_read_card', '3': 3, '4': 1, '5': 8, '10': 'needReadCard'},
    {'1': 'icon_url', '3': 4, '4': 2, '5': 9, '10': 'iconUrl'},
    {'1': 'sid', '3': 5, '4': 2, '5': 9, '10': 'sid'},
  ],
};

/// Descriptor for `IssueCard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueCardDescriptor = $convert.base64Decode(
    'CglJc3N1ZUNhcmQSMQoGc3RhdHVzGAEgAigOMhkucHJvdG9jb2wuSXNzdWVDYXJkU3RhdHVzUg'
    'ZzdGF0dXMSKwoEdHlwZRgCIAEoDjIXLnByb3RvY29sLklzc3VlQ2FyZFR5cGVSBHR5cGUSJAoO'
    'bmVlZF9yZWFkX2NhcmQYAyABKAhSDG5lZWRSZWFkQ2FyZBIZCghpY29uX3VybBgEIAIoCVIHaW'
    'NvblVybBIQCgNzaWQYBSACKAlSA3NpZA==');

@$core.Deprecated('Use cardDataDescriptor instead')
const CardData$json = {
  '1': 'CardData',
  '2': [
    {'1': 'uid', '3': 1, '4': 2, '5': 12, '10': 'uid'},
    {'1': 'sak', '3': 2, '4': 2, '5': 13, '10': 'sak'},
    {'1': 'atqa', '3': 3, '4': 2, '5': 12, '10': 'atqa'},
    {'1': 'size', '3': 4, '4': 2, '5': 13, '10': 'size'},
    {'1': 'content', '3': 5, '4': 2, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `CardData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDataDescriptor = $convert.base64Decode(
    'CghDYXJkRGF0YRIQCgN1aWQYASACKAxSA3VpZBIQCgNzYWsYAiACKA1SA3NhaxISCgRhdHFhGA'
    'MgAigMUgRhdHFhEhIKBHNpemUYBCACKA1SBHNpemUSGAoHY29udGVudBgFIAIoCVIHY29udGVu'
    'dA==');

@$core.Deprecated('Use cardInfoDescriptor instead')
const CardInfo$json = {
  '1': 'CardInfo',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.IssueCardType',
      '10': 'type'
    },
    {'1': 'aid', '3': 2, '4': 2, '5': 9, '10': 'aid'},
    {'1': 'name', '3': 3, '4': 2, '5': 9, '10': 'name'},
    {'1': 'icon_url', '3': 4, '4': 2, '5': 9, '10': 'iconUrl'},
    {'1': 'sid', '3': 5, '4': 2, '5': 9, '10': 'sid'},
    {'1': 'balance', '3': 6, '4': 1, '5': 13, '10': 'balance'},
    {'1': 'support_hci', '3': 7, '4': 1, '5': 8, '10': 'supportHci'},
    {'1': 'trade_length', '3': 8, '4': 1, '5': 13, '10': 'tradeLength'},
    {'1': 'trade_offset', '3': 9, '4': 1, '5': 13, '10': 'tradeOffset'},
    {'1': 'balance_offset', '3': 10, '4': 1, '5': 13, '10': 'balanceOffset'},
    {
      '1': 'tlv_hci_rule',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.protocol.CardInfo.TlvHciRule',
      '10': 'tlvHciRule'
    },
    {'1': 'balance_command', '3': 12, '4': 3, '5': 9, '10': 'balanceCommand'},
    {'1': 'car_key_id', '3': 13, '4': 2, '5': 12, '10': 'carKeyId'},
  ],
  '3': [CardInfo_TlvHciRule$json, CardInfo_List$json],
};

@$core.Deprecated('Use cardInfoDescriptor instead')
const CardInfo_TlvHciRule$json = {
  '1': 'TlvHciRule',
  '2': [
    {'1': 'aid', '3': 1, '4': 2, '5': 9, '10': 'aid'},
    {'1': 'data_offset', '3': 2, '4': 2, '5': 13, '10': 'dataOffset'},
    {'1': 'hci_prefix', '3': 3, '4': 2, '5': 9, '10': 'hciPrefix'},
    {'1': 'trade_amount_tags', '3': 4, '4': 3, '5': 9, '10': 'tradeAmountTags'},
    {
      '1': 'trade_amount_offset',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'tradeAmountOffset'
    },
    {'1': 'balance_tags', '3': 6, '4': 3, '5': 9, '10': 'balanceTags'},
    {'1': 'balance_offset', '3': 7, '4': 1, '5': 13, '10': 'balanceOffset'},
  ],
};

@$core.Deprecated('Use cardInfoDescriptor instead')
const CardInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.CardInfo',
      '10': 'list'
    },
    {'1': 'full', '3': 2, '4': 1, '5': 8, '10': 'full'},
  ],
};

/// Descriptor for `CardInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardInfoDescriptor = $convert.base64Decode(
    'CghDYXJkSW5mbxIrCgR0eXBlGAEgAigOMhcucHJvdG9jb2wuSXNzdWVDYXJkVHlwZVIEdHlwZR'
    'IQCgNhaWQYAiACKAlSA2FpZBISCgRuYW1lGAMgAigJUgRuYW1lEhkKCGljb25fdXJsGAQgAigJ'
    'UgdpY29uVXJsEhAKA3NpZBgFIAIoCVIDc2lkEhgKB2JhbGFuY2UYBiABKA1SB2JhbGFuY2USHw'
    'oLc3VwcG9ydF9oY2kYByABKAhSCnN1cHBvcnRIY2kSIQoMdHJhZGVfbGVuZ3RoGAggASgNUgt0'
    'cmFkZUxlbmd0aBIhCgx0cmFkZV9vZmZzZXQYCSABKA1SC3RyYWRlT2Zmc2V0EiUKDmJhbGFuY2'
    'Vfb2Zmc2V0GAogASgNUg1iYWxhbmNlT2Zmc2V0Ej8KDHRsdl9oY2lfcnVsZRgLIAMoCzIdLnBy'
    'b3RvY29sLkNhcmRJbmZvLlRsdkhjaVJ1bGVSCnRsdkhjaVJ1bGUSJwoPYmFsYW5jZV9jb21tYW'
    '5kGAwgAygJUg5iYWxhbmNlQ29tbWFuZBIcCgpjYXJfa2V5X2lkGA0gAigMUghjYXJLZXlJZBqE'
    'AgoKVGx2SGNpUnVsZRIQCgNhaWQYASACKAlSA2FpZBIfCgtkYXRhX29mZnNldBgCIAIoDVIKZG'
    'F0YU9mZnNldBIdCgpoY2lfcHJlZml4GAMgAigJUgloY2lQcmVmaXgSKgoRdHJhZGVfYW1vdW50'
    'X3RhZ3MYBCADKAlSD3RyYWRlQW1vdW50VGFncxIuChN0cmFkZV9hbW91bnRfb2Zmc2V0GAUgAS'
    'gNUhF0cmFkZUFtb3VudE9mZnNldBIhCgxiYWxhbmNlX3RhZ3MYBiADKAlSC2JhbGFuY2VUYWdz'
    'EiUKDmJhbGFuY2Vfb2Zmc2V0GAcgASgNUg1iYWxhbmNlT2Zmc2V0GkIKBExpc3QSJgoEbGlzdB'
    'gBIAMoCzISLnByb3RvY29sLkNhcmRJbmZvUgRsaXN0EhIKBGZ1bGwYAiABKAhSBGZ1bGw=');

@$core.Deprecated('Use balanceInfoDescriptor instead')
const BalanceInfo$json = {
  '1': 'BalanceInfo',
  '2': [
    {'1': 'aid', '3': 1, '4': 2, '5': 9, '10': 'aid'},
    {'1': 'balance', '3': 2, '4': 2, '5': 13, '10': 'balance'},
  ],
};

/// Descriptor for `BalanceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balanceInfoDescriptor = $convert.base64Decode(
    'CgtCYWxhbmNlSW5mbxIQCgNhaWQYASACKAlSA2FpZBIYCgdiYWxhbmNlGAIgAigNUgdiYWxhbm'
    'Nl');

@$core.Deprecated('Use commandInfoDescriptor instead')
const CommandInfo$json = {
  '1': 'CommandInfo',
  '2': [
    {'1': 'data', '3': 1, '4': 2, '5': 12, '10': 'data'},
    {'1': 'expect_status', '3': 2, '4': 2, '5': 9, '10': 'expectStatus'},
  ],
  '3': [CommandInfo_List$json],
};

@$core.Deprecated('Use commandInfoDescriptor instead')
const CommandInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.CommandInfo',
      '10': 'list'
    },
  ],
};

/// Descriptor for `CommandInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandInfoDescriptor = $convert.base64Decode(
    'CgtDb21tYW5kSW5mbxISCgRkYXRhGAEgAigMUgRkYXRhEiMKDWV4cGVjdF9zdGF0dXMYAiACKA'
    'lSDGV4cGVjdFN0YXR1cxoxCgRMaXN0EikKBGxpc3QYASADKAsyFS5wcm90b2NvbC5Db21tYW5k'
    'SW5mb1IEbGlzdA==');

@$core.Deprecated('Use cardSwitcherDescriptor instead')
const CardSwitcher$json = {
  '1': 'CardSwitcher',
  '2': [
    {'1': 'aid', '3': 1, '4': 2, '5': 9, '10': 'aid'},
    {'1': 'time', '3': 2, '4': 3, '5': 11, '6': '.protocol.Time', '10': 'time'},
  ],
  '3': [
    CardSwitcher_List$json,
    CardSwitcher_Result$json,
    CardSwitcher_Smart$json
  ],
};

@$core.Deprecated('Use cardSwitcherDescriptor instead')
const CardSwitcher_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.CardSwitcher',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use cardSwitcherDescriptor instead')
const CardSwitcher_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 13, '10': 'code'},
    {'1': 'conflict_aid', '3': 2, '4': 2, '5': 9, '10': 'conflictAid'},
  ],
  '4': [CardSwitcher_Result_Code$json],
};

@$core.Deprecated('Use cardSwitcherDescriptor instead')
const CardSwitcher_Result_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'AID_NOT_FOUND', '2': 1},
    {'1': 'TIME_CONFLICT', '2': 2},
    {'1': 'FAIL', '2': 10},
  ],
};

@$core.Deprecated('Use cardSwitcherDescriptor instead')
const CardSwitcher_Smart$json = {
  '1': 'Smart',
  '2': [
    {'1': 'enabled', '3': 1, '4': 2, '5': 8, '10': 'enabled'},
    {'1': 'aid', '3': 2, '4': 3, '5': 9, '10': 'aid'},
  ],
};

/// Descriptor for `CardSwitcher`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardSwitcherDescriptor = $convert.base64Decode(
    'CgxDYXJkU3dpdGNoZXISEAoDYWlkGAEgAigJUgNhaWQSIgoEdGltZRgCIAMoCzIOLnByb3RvY2'
    '9sLlRpbWVSBHRpbWUaMgoETGlzdBIqCgRsaXN0GAEgAygLMhYucHJvdG9jb2wuQ2FyZFN3aXRj'
    'aGVyUgRsaXN0GoQBCgZSZXN1bHQSEgoEY29kZRgBIAIoDVIEY29kZRIhCgxjb25mbGljdF9haW'
    'QYAiACKAlSC2NvbmZsaWN0QWlkIkMKBENvZGUSCwoHU1VDQ0VTUxAAEhEKDUFJRF9OT1RfRk9V'
    'TkQQARIRCg1USU1FX0NPTkZMSUNUEAISCAoERkFJTBAKGjMKBVNtYXJ0EhgKB2VuYWJsZWQYAS'
    'ACKAhSB2VuYWJsZWQSEAoDYWlkGAIgAygJUgNhaWQ=');

@$core.Deprecated('Use basicCardDataDescriptor instead')
const BasicCardData$json = {
  '1': 'BasicCardData',
  '2': [
    {'1': 'uid', '3': 1, '4': 2, '5': 12, '10': 'uid'},
    {'1': 'sak', '3': 2, '4': 2, '5': 13, '10': 'sak'},
    {'1': 'atqa', '3': 3, '4': 2, '5': 12, '10': 'atqa'},
    {'1': 'size', '3': 4, '4': 2, '5': 13, '10': 'size'},
  ],
};

/// Descriptor for `BasicCardData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicCardDataDescriptor = $convert.base64Decode(
    'Cg1CYXNpY0NhcmREYXRhEhAKA3VpZBgBIAIoDFIDdWlkEhAKA3NhaxgCIAIoDVIDc2FrEhIKBG'
    'F0cWEYAyACKAxSBGF0cWESEgoEc2l6ZRgEIAIoDVIEc2l6ZQ==');

@$core.Deprecated('Use sectorDescriptor instead')
const Sector$json = {
  '1': 'Sector',
  '2': [
    {'1': 'index', '3': 1, '4': 2, '5': 13, '10': 'index'},
    {'1': 'enctypted', '3': 2, '4': 2, '5': 8, '10': 'enctypted'},
    {'1': 'key_a', '3': 3, '4': 1, '5': 12, '10': 'keyA'},
    {'1': 'key_b', '3': 4, '4': 1, '5': 12, '10': 'keyB'},
    {'1': 'content', '3': 5, '4': 1, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `Sector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sectorDescriptor = $convert.base64Decode(
    'CgZTZWN0b3ISFAoFaW5kZXgYASACKA1SBWluZGV4EhwKCWVuY3R5cHRlZBgCIAIoCFIJZW5jdH'
    'lwdGVkEhMKBWtleV9hGAMgASgMUgRrZXlBEhMKBWtleV9iGAQgASgMUgRrZXlCEhgKB2NvbnRl'
    'bnQYBSABKAxSB2NvbnRlbnQ=');

@$core.Deprecated('Use superCardDataDescriptor instead')
const SuperCardData$json = {
  '1': 'SuperCardData',
  '2': [
    {
      '1': 'basic_card_data',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.BasicCardData',
      '10': 'basicCardData'
    },
    {
      '1': 'sectors',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.Sector',
      '10': 'sectors'
    },
  ],
};

/// Descriptor for `SuperCardData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List superCardDataDescriptor = $convert.base64Decode(
    'Cg1TdXBlckNhcmREYXRhEj8KD2Jhc2ljX2NhcmRfZGF0YRgBIAIoCzIXLnByb3RvY29sLkJhc2'
    'ljQ2FyZERhdGFSDWJhc2ljQ2FyZERhdGESKgoHc2VjdG9ycxgCIAMoCzIQLnByb3RvY29sLlNl'
    'Y3RvclIHc2VjdG9ycw==');

@$core.Deprecated('Use probeSectorDescriptor instead')
const ProbeSector$json = {
  '1': 'ProbeSector',
  '3': [
    ProbeSector_KeyInfo$json,
    ProbeSector_Tag$json,
    ProbeSector_Nonce$json,
    ProbeSector_Data$json,
    ProbeSector_Request$json,
    ProbeSector_Response$json
  ],
};

@$core.Deprecated('Use probeSectorDescriptor instead')
const ProbeSector_KeyInfo$json = {
  '1': 'KeyInfo',
  '2': [
    {'1': 'found_key_a', '3': 1, '4': 2, '5': 8, '10': 'foundKeyA'},
    {'1': 'found_key_b', '3': 2, '4': 2, '5': 8, '10': 'foundKeyB'},
    {'1': 'key_a_list', '3': 3, '4': 1, '5': 12, '10': 'keyAList'},
    {'1': 'key_b_list', '3': 4, '4': 1, '5': 12, '10': 'keyBList'},
  ],
};

@$core.Deprecated('Use probeSectorDescriptor instead')
const ProbeSector_Tag$json = {
  '1': 'Tag',
  '2': [
    {'1': 'auth_uid', '3': 1, '4': 2, '5': 13, '10': 'authUid'},
    {'1': 'index', '3': 2, '4': 2, '5': 13, '10': 'index'},
    {
      '1': 'key_info',
      '3': 3,
      '4': 2,
      '5': 11,
      '6': '.protocol.ProbeSector.KeyInfo',
      '10': 'keyInfo'
    },
  ],
};

@$core.Deprecated('Use probeSectorDescriptor instead')
const ProbeSector_Nonce$json = {
  '1': 'Nonce',
  '2': [
    {'1': 'median', '3': 1, '4': 2, '5': 13, '10': 'median'},
    {'1': 'deviation', '3': 2, '4': 2, '5': 13, '10': 'deviation'},
    {'1': 'distances', '3': 3, '4': 3, '5': 13, '10': 'distances'},
  ],
};

@$core.Deprecated('Use probeSectorDescriptor instead')
const ProbeSector_Data$json = {
  '1': 'Data',
  '2': [
    {'1': 'median', '3': 1, '4': 2, '5': 13, '10': 'median'},
    {'1': 'deviation', '3': 2, '4': 2, '5': 13, '10': 'deviation'},
    {'1': 'nt', '3': 3, '4': 2, '5': 13, '10': 'nt'},
    {'1': 'nte', '3': 4, '4': 2, '5': 13, '10': 'nte'},
    {'1': 'parity', '3': 5, '4': 2, '5': 12, '10': 'parity'},
  ],
};

@$core.Deprecated('Use probeSectorDescriptor instead')
const ProbeSector_Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'index', '3': 1, '4': 2, '5': 13, '10': 'index'},
    {'1': 'mode', '3': 2, '4': 2, '5': 13, '10': 'mode'},
    {
      '1': 'tag',
      '3': 3,
      '4': 2,
      '5': 11,
      '6': '.protocol.ProbeSector.Tag',
      '10': 'tag'
    },
    {
      '1': 'nonce',
      '3': 4,
      '4': 2,
      '5': 11,
      '6': '.protocol.ProbeSector.Nonce',
      '10': 'nonce'
    },
    {'1': 'dump_key_a', '3': 5, '4': 2, '5': 8, '10': 'dumpKeyA'},
  ],
};

@$core.Deprecated('Use probeSectorDescriptor instead')
const ProbeSector_Response$json = {
  '1': 'Response',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 5, '10': 'code'},
    {
      '1': 'nonce',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProbeSector.Nonce',
      '10': 'nonce'
    },
    {
      '1': 'data',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.ProbeSector.Data',
      '10': 'data'
    },
  ],
};

/// Descriptor for `ProbeSector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List probeSectorDescriptor = $convert.base64Decode(
    'CgtQcm9iZVNlY3RvchqFAQoHS2V5SW5mbxIeCgtmb3VuZF9rZXlfYRgBIAIoCFIJZm91bmRLZX'
    'lBEh4KC2ZvdW5kX2tleV9iGAIgAigIUglmb3VuZEtleUISHAoKa2V5X2FfbGlzdBgDIAEoDFII'
    'a2V5QUxpc3QSHAoKa2V5X2JfbGlzdBgEIAEoDFIIa2V5Qkxpc3QacAoDVGFnEhkKCGF1dGhfdW'
    'lkGAEgAigNUgdhdXRoVWlkEhQKBWluZGV4GAIgAigNUgVpbmRleBI4CghrZXlfaW5mbxgDIAIo'
    'CzIdLnByb3RvY29sLlByb2JlU2VjdG9yLktleUluZm9SB2tleUluZm8aWwoFTm9uY2USFgoGbW'
    'VkaWFuGAEgAigNUgZtZWRpYW4SHAoJZGV2aWF0aW9uGAIgAigNUglkZXZpYXRpb24SHAoJZGlz'
    'dGFuY2VzGAMgAygNUglkaXN0YW5jZXMadgoERGF0YRIWCgZtZWRpYW4YASACKA1SBm1lZGlhbh'
    'IcCglkZXZpYXRpb24YAiACKA1SCWRldmlhdGlvbhIOCgJudBgDIAIoDVICbnQSEAoDbnRlGAQg'
    'AigNUgNudGUSFgoGcGFyaXR5GAUgAigMUgZwYXJpdHkasQEKB1JlcXVlc3QSFAoFaW5kZXgYAS'
    'ACKA1SBWluZGV4EhIKBG1vZGUYAiACKA1SBG1vZGUSKwoDdGFnGAMgAigLMhkucHJvdG9jb2wu'
    'UHJvYmVTZWN0b3IuVGFnUgN0YWcSMQoFbm9uY2UYBCACKAsyGy5wcm90b2NvbC5Qcm9iZVNlY3'
    'Rvci5Ob25jZVIFbm9uY2USHAoKZHVtcF9rZXlfYRgFIAIoCFIIZHVtcEtleUEagQEKCFJlc3Bv'
    'bnNlEhIKBGNvZGUYASACKAVSBGNvZGUSMQoFbm9uY2UYAiABKAsyGy5wcm90b2NvbC5Qcm9iZV'
    'NlY3Rvci5Ob25jZVIFbm9uY2USLgoEZGF0YRgDIAEoCzIaLnByb3RvY29sLlByb2JlU2VjdG9y'
    'LkRhdGFSBGRhdGE=');

@$core.Deprecated('Use sectorKeyDescriptor instead')
const SectorKey$json = {
  '1': 'SectorKey',
  '2': [
    {'1': 'index', '3': 1, '4': 2, '5': 13, '10': 'index'},
    {'1': 'keys', '3': 2, '4': 3, '5': 12, '10': 'keys'},
  ],
  '3': [SectorKey_List$json],
};

@$core.Deprecated('Use sectorKeyDescriptor instead')
const SectorKey_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.SectorKey',
      '10': 'list'
    },
  ],
};

/// Descriptor for `SectorKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sectorKeyDescriptor = $convert.base64Decode(
    'CglTZWN0b3JLZXkSFAoFaW5kZXgYASACKA1SBWluZGV4EhIKBGtleXMYAiADKAxSBGtleXMaLw'
    'oETGlzdBInCgRsaXN0GAEgAygLMhMucHJvdG9jb2wuU2VjdG9yS2V5UgRsaXN0');

@$core.Deprecated('Use crackSectorDescriptor instead')
const CrackSector$json = {
  '1': 'CrackSector',
  '2': [
    {
      '1': 'sector',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Sector',
      '10': 'sector'
    },
    {'1': 'key_index', '3': 2, '4': 2, '5': 13, '10': 'keyIndex'},
  ],
};

/// Descriptor for `CrackSector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List crackSectorDescriptor = $convert.base64Decode(
    'CgtDcmFja1NlY3RvchIoCgZzZWN0b3IYASACKAsyEC5wcm90b2NvbC5TZWN0b3JSBnNlY3Rvch'
    'IbCglrZXlfaW5kZXgYAiACKA1SCGtleUluZGV4');

@$core.Deprecated('Use crackCardDataDescriptor instead')
const CrackCardData$json = {
  '1': 'CrackCardData',
  '2': [
    {
      '1': 'basic_card_data',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.BasicCardData',
      '10': 'basicCardData'
    },
    {
      '1': 'crack_sectors',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.protocol.CrackSector',
      '10': 'crackSectors'
    },
    {'1': 'cost_time', '3': 3, '4': 2, '5': 13, '10': 'costTime'},
  ],
};

/// Descriptor for `CrackCardData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List crackCardDataDescriptor = $convert.base64Decode(
    'Cg1DcmFja0NhcmREYXRhEj8KD2Jhc2ljX2NhcmRfZGF0YRgBIAIoCzIXLnByb3RvY29sLkJhc2'
    'ljQ2FyZERhdGFSDWJhc2ljQ2FyZERhdGESOgoNY3JhY2tfc2VjdG9ycxgCIAMoCzIVLnByb3Rv'
    'Y29sLkNyYWNrU2VjdG9yUgxjcmFja1NlY3RvcnMSGwoJY29zdF90aW1lGAMgAigNUghjb3N0VG'
    'ltZQ==');
