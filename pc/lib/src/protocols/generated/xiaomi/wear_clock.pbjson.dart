// This is a generated file - do not edit.
//
// Generated from wear_clock.proto.

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

@$core.Deprecated('Use clockErrorDescriptor instead')
const ClockError$json = {
  '1': 'ClockError',
  '2': [
    {'1': 'EXCEED_LIMIT', '2': 1},
    {'1': 'INVALID_ID', '2': 2},
    {'1': 'INVALID_DATA', '2': 3},
    {'1': 'NOT_SUPPORT_HOLIDAY', '2': 4},
  ],
};

/// Descriptor for `ClockError`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List clockErrorDescriptor = $convert.base64Decode(
    'CgpDbG9ja0Vycm9yEhAKDEVYQ0VFRF9MSU1JVBABEg4KCklOVkFMSURfSUQQAhIQCgxJTlZBTE'
    'lEX0RBVEEQAxIXChNOT1RfU1VQUE9SVF9IT0xJREFZEAQ=');

@$core.Deprecated('Use worldClockResultDescriptor instead')
const WorldClockResult$json = {
  '1': 'WorldClockResult',
  '2': [
    {'1': 'OPERATE_SUCCESS', '2': 0},
    {'1': 'ID_NOT_SUPPORT', '2': 1},
    {'1': 'OVER_LIMIT', '2': 2},
  ],
};

/// Descriptor for `WorldClockResult`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List worldClockResultDescriptor = $convert.base64Decode(
    'ChBXb3JsZENsb2NrUmVzdWx0EhMKD09QRVJBVEVfU1VDQ0VTUxAAEhIKDklEX05PVF9TVVBQT1'
    'JUEAESDgoKT1ZFUl9MSU1JVBAC');

@$core.Deprecated('Use clockDescriptor instead')
const Clock$json = {
  '1': 'Clock',
  '2': [
    {
      '1': 'clock_info_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.ClockInfo.List',
      '9': 0,
      '10': 'clockInfoList'
    },
    {
      '1': 'clock_data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.ClockInfo.Data',
      '9': 0,
      '10': 'clockData'
    },
    {
      '1': 'clock_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.ClockInfo',
      '9': 0,
      '10': 'clockInfo'
    },
    {'1': 'id', '3': 4, '4': 1, '5': 13, '9': 0, '10': 'id'},
    {
      '1': 'clock_id_list',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.ClockIdList',
      '9': 0,
      '10': 'clockIdList'
    },
    {'1': 'enable', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'enable'},
    {
      '1': 'clock_holiday',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.ClockHoliday',
      '9': 0,
      '10': 'clockHoliday'
    },
    {
      '1': 'clock_error',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.protocol.ClockError',
      '9': 0,
      '10': 'clockError'
    },
    {
      '1': 'work_and_rest',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.WorkAndRest',
      '9': 0,
      '10': 'workAndRest'
    },
    {
      '1': 'reminder_info_list',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReminderInfo.List',
      '9': 0,
      '10': 'reminderInfoList'
    },
    {
      '1': 'world_clock_id_list',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.WorldClockIdList',
      '9': 0,
      '10': 'worldClockIdList'
    },
    {
      '1': 'world_clock_id',
      '3': 12,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'worldClockId'
    },
    {
      '1': 'world_clock_result',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.protocol.WorldClockResult',
      '9': 0,
      '10': 'worldClockResult'
    },
    {
      '1': 'reminder_data',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReminderInfo.Data',
      '9': 0,
      '10': 'reminderData'
    },
    {
      '1': 'reminder_info',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReminderInfo',
      '9': 0,
      '10': 'reminderInfo'
    },
    {
      '1': 'phone_alarm_operation',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.PhoneAlarm.Operation',
      '9': 0,
      '10': 'phoneAlarmOperation'
    },
    {
      '1': 'reminder_id_list',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReminderIdList',
      '9': 0,
      '10': 'reminderIdList'
    },
    {
      '1': 'reminder_mark',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.ReminderInfo.Mark',
      '9': 0,
      '10': 'reminderMark'
    },
  ],
  '4': [Clock_ClockID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use clockDescriptor instead')
const Clock_ClockID$json = {
  '1': 'ClockID',
  '2': [
    {'1': 'GET_CLOCK_LIST', '2': 0},
    {'1': 'ADD_CLOCK', '2': 1},
    {'1': 'UPDATE_CLOCK', '2': 2},
    {'1': 'REMOVE_CLOCK', '2': 3},
    {'1': 'REMOVE_CLOCKS', '2': 4},
    {'1': 'ENABLE_OR_DISABLE_CLOCK', '2': 5},
    {'1': 'GET_REMINDER_LIST', '2': 14},
    {'1': 'ADD_REMINDER', '2': 15},
    {'1': 'UPDATE_REMINDER', '2': 17},
    {'1': 'REMOVE_REMINDERS', '2': 18},
    {'1': 'SYNC_REMINDER_LIST', '2': 19},
    {'1': 'MARK_REMINDER', '2': 20},
    {'1': 'REQUEST_REMINDERS', '2': 21},
    {'1': 'SYNC_HOLIDAY', '2': 6},
    {'1': 'WEAR_REQUEST_HOLIDAY', '2': 7},
    {'1': 'GET_WORK_AND_REST', '2': 8},
    {'1': 'SET_WORK_AND_REST', '2': 9},
    {'1': 'GET_WORLD_CLOCK_LIST', '2': 10},
    {'1': 'ADD_WORLD_CLOCK', '2': 11},
    {'1': 'REMOVE_WORLD_CLOCK', '2': 12},
    {'1': 'REMOVE_WORLD_CLOCKS', '2': 13},
    {'1': 'PHONE_ALARM_OPERATION', '2': 16},
  ],
};

/// Descriptor for `Clock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clockDescriptor = $convert.base64Decode(
    'CgVDbG9jaxJCCg9jbG9ja19pbmZvX2xpc3QYASABKAsyGC5wcm90b2NvbC5DbG9ja0luZm8uTG'
    'lzdEgAUg1jbG9ja0luZm9MaXN0EjkKCmNsb2NrX2RhdGEYAiABKAsyGC5wcm90b2NvbC5DbG9j'
    'a0luZm8uRGF0YUgAUgljbG9ja0RhdGESNAoKY2xvY2tfaW5mbxgDIAEoCzITLnByb3RvY29sLk'
    'Nsb2NrSW5mb0gAUgljbG9ja0luZm8SEAoCaWQYBCABKA1IAFICaWQSOwoNY2xvY2tfaWRfbGlz'
    'dBgFIAEoCzIVLnByb3RvY29sLkNsb2NrSWRMaXN0SABSC2Nsb2NrSWRMaXN0EhgKBmVuYWJsZR'
    'gGIAEoCEgAUgZlbmFibGUSPQoNY2xvY2tfaG9saWRheRgHIAEoCzIWLnByb3RvY29sLkNsb2Nr'
    'SG9saWRheUgAUgxjbG9ja0hvbGlkYXkSNwoLY2xvY2tfZXJyb3IYCCABKA4yFC5wcm90b2NvbC'
    '5DbG9ja0Vycm9ySABSCmNsb2NrRXJyb3ISOwoNd29ya19hbmRfcmVzdBgJIAEoCzIVLnByb3Rv'
    'Y29sLldvcmtBbmRSZXN0SABSC3dvcmtBbmRSZXN0EksKEnJlbWluZGVyX2luZm9fbGlzdBgKIA'
    'EoCzIbLnByb3RvY29sLlJlbWluZGVySW5mby5MaXN0SABSEHJlbWluZGVySW5mb0xpc3QSSwoT'
    'd29ybGRfY2xvY2tfaWRfbGlzdBgLIAEoCzIaLnByb3RvY29sLldvcmxkQ2xvY2tJZExpc3RIAF'
    'IQd29ybGRDbG9ja0lkTGlzdBImCg53b3JsZF9jbG9ja19pZBgMIAEoCUgAUgx3b3JsZENsb2Nr'
    'SWQSSgoSd29ybGRfY2xvY2tfcmVzdWx0GA0gASgOMhoucHJvdG9jb2wuV29ybGRDbG9ja1Jlc3'
    'VsdEgAUhB3b3JsZENsb2NrUmVzdWx0EkIKDXJlbWluZGVyX2RhdGEYDiABKAsyGy5wcm90b2Nv'
    'bC5SZW1pbmRlckluZm8uRGF0YUgAUgxyZW1pbmRlckRhdGESPQoNcmVtaW5kZXJfaW5mbxgPIA'
    'EoCzIWLnByb3RvY29sLlJlbWluZGVySW5mb0gAUgxyZW1pbmRlckluZm8SVAoVcGhvbmVfYWxh'
    'cm1fb3BlcmF0aW9uGBAgASgLMh4ucHJvdG9jb2wuUGhvbmVBbGFybS5PcGVyYXRpb25IAFITcG'
    'hvbmVBbGFybU9wZXJhdGlvbhJEChByZW1pbmRlcl9pZF9saXN0GBEgASgLMhgucHJvdG9jb2wu'
    'UmVtaW5kZXJJZExpc3RIAFIOcmVtaW5kZXJJZExpc3QSQgoNcmVtaW5kZXJfbWFyaxgSIAEoCz'
    'IbLnByb3RvY29sLlJlbWluZGVySW5mby5NYXJrSABSDHJlbWluZGVyTWFyayLrAwoHQ2xvY2tJ'
    'RBISCg5HRVRfQ0xPQ0tfTElTVBAAEg0KCUFERF9DTE9DSxABEhAKDFVQREFURV9DTE9DSxACEh'
    'AKDFJFTU9WRV9DTE9DSxADEhEKDVJFTU9WRV9DTE9DS1MQBBIbChdFTkFCTEVfT1JfRElTQUJM'
    'RV9DTE9DSxAFEhUKEUdFVF9SRU1JTkRFUl9MSVNUEA4SEAoMQUREX1JFTUlOREVSEA8SEwoPVV'
    'BEQVRFX1JFTUlOREVSEBESFAoQUkVNT1ZFX1JFTUlOREVSUxASEhYKElNZTkNfUkVNSU5ERVJf'
    'TElTVBATEhEKDU1BUktfUkVNSU5ERVIQFBIVChFSRVFVRVNUX1JFTUlOREVSUxAVEhAKDFNZTk'
    'NfSE9MSURBWRAGEhgKFFdFQVJfUkVRVUVTVF9IT0xJREFZEAcSFQoRR0VUX1dPUktfQU5EX1JF'
    'U1QQCBIVChFTRVRfV09SS19BTkRfUkVTVBAJEhgKFEdFVF9XT1JMRF9DTE9DS19MSVNUEAoSEw'
    'oPQUREX1dPUkxEX0NMT0NLEAsSFgoSUkVNT1ZFX1dPUkxEX0NMT0NLEAwSFwoTUkVNT1ZFX1dP'
    'UkxEX0NMT0NLUxANEhkKFVBIT05FX0FMQVJNX09QRVJBVElPThAQQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use clockInfoDescriptor instead')
const ClockInfo$json = {
  '1': 'ClockInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {
      '1': 'data',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.ClockInfo.Data',
      '10': 'data'
    },
  ],
  '3': [ClockInfo_Data$json, ClockInfo_List$json],
};

@$core.Deprecated('Use clockInfoDescriptor instead')
const ClockInfo_Data$json = {
  '1': 'Data',
  '2': [
    {'1': 'time', '3': 2, '4': 2, '5': 11, '6': '.protocol.Time', '10': 'time'},
    {
      '1': 'clock_mode',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.ClockMode',
      '10': 'clockMode'
    },
    {'1': 'week_days', '3': 4, '4': 1, '5': 13, '10': 'weekDays'},
    {'1': 'enable', '3': 5, '4': 2, '5': 8, '10': 'enable'},
    {'1': 'label', '3': 6, '4': 2, '5': 9, '10': 'label'},
  ],
};

@$core.Deprecated('Use clockInfoDescriptor instead')
const ClockInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.ClockInfo',
      '10': 'list'
    },
    {
      '1': 'support_max_clocks',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'supportMaxClocks'
    },
  ],
};

/// Descriptor for `ClockInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clockInfoDescriptor = $convert.base64Decode(
    'CglDbG9ja0luZm8SDgoCaWQYASACKA1SAmlkEiwKBGRhdGEYAiACKAsyGC5wcm90b2NvbC5DbG'
    '9ja0luZm8uRGF0YVIEZGF0YRqpAQoERGF0YRIiCgR0aW1lGAIgAigLMg4ucHJvdG9jb2wuVGlt'
    'ZVIEdGltZRIyCgpjbG9ja19tb2RlGAMgAigOMhMucHJvdG9jb2wuQ2xvY2tNb2RlUgljbG9ja0'
    '1vZGUSGwoJd2Vla19kYXlzGAQgASgNUgh3ZWVrRGF5cxIWCgZlbmFibGUYBSACKAhSBmVuYWJs'
    'ZRIUCgVsYWJlbBgGIAIoCVIFbGFiZWwaXQoETGlzdBInCgRsaXN0GAEgAygLMhMucHJvdG9jb2'
    'wuQ2xvY2tJbmZvUgRsaXN0EiwKEnN1cHBvcnRfbWF4X2Nsb2NrcxgCIAEoDVIQc3VwcG9ydE1h'
    'eENsb2Nrcw==');

@$core.Deprecated('Use clockIdListDescriptor instead')
const ClockIdList$json = {
  '1': 'ClockIdList',
  '2': [
    {'1': 'id', '3': 1, '4': 3, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `ClockIdList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clockIdListDescriptor =
    $convert.base64Decode('CgtDbG9ja0lkTGlzdBIOCgJpZBgBIAMoDVICaWQ=');

@$core.Deprecated('Use workAndRestDescriptor instead')
const WorkAndRest$json = {
  '1': 'WorkAndRest',
  '2': [
    {
      '1': 'source',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.WorkAndRest.Source',
      '10': 'source'
    },
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.WorkAndRest.Data',
      '10': 'data'
    },
  ],
  '3': [WorkAndRest_Data$json],
  '4': [WorkAndRest_Source$json],
};

@$core.Deprecated('Use workAndRestDescriptor instead')
const WorkAndRest_Data$json = {
  '1': 'Data',
  '2': [
    {
      '1': 'bedtime',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'bedtime'
    },
    {
      '1': 'getup_time',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.Time',
      '10': 'getupTime'
    },
    {'1': 'remind_bed', '3': 3, '4': 2, '5': 17, '10': 'remindBed'},
  ],
};

@$core.Deprecated('Use workAndRestDescriptor instead')
const WorkAndRest_Source$json = {
  '1': 'Source',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'MIUI', '2': 1},
    {'1': 'MANUAL', '2': 2},
  ],
};

/// Descriptor for `WorkAndRest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workAndRestDescriptor = $convert.base64Decode(
    'CgtXb3JrQW5kUmVzdBI0CgZzb3VyY2UYASACKA4yHC5wcm90b2NvbC5Xb3JrQW5kUmVzdC5Tb3'
    'VyY2VSBnNvdXJjZRIuCgRkYXRhGAIgASgLMhoucHJvdG9jb2wuV29ya0FuZFJlc3QuRGF0YVIE'
    'ZGF0YRp+CgREYXRhEigKB2JlZHRpbWUYASACKAsyDi5wcm90b2NvbC5UaW1lUgdiZWR0aW1lEi'
    '0KCmdldHVwX3RpbWUYAiACKAsyDi5wcm90b2NvbC5UaW1lUglnZXR1cFRpbWUSHQoKcmVtaW5k'
    'X2JlZBgDIAIoEVIJcmVtaW5kQmVkIigKBlNvdXJjZRIICgROT05FEAASCAoETUlVSRABEgoKBk'
    '1BTlVBTBAC');

@$core.Deprecated('Use worldClockIdListDescriptor instead')
const WorldClockIdList$json = {
  '1': 'WorldClockIdList',
  '2': [
    {'1': 'id', '3': 1, '4': 3, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `WorldClockIdList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List worldClockIdListDescriptor =
    $convert.base64Decode('ChBXb3JsZENsb2NrSWRMaXN0Eg4KAmlkGAEgAygJUgJpZA==');

@$core.Deprecated('Use phoneAlarmDescriptor instead')
const PhoneAlarm$json = {
  '1': 'PhoneAlarm',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {'1': 'alert_time', '3': 2, '4': 1, '5': 13, '10': 'alertTime'},
    {'1': 'label', '3': 3, '4': 2, '5': 9, '10': 'label'},
  ],
  '3': [PhoneAlarm_Operation$json],
  '4': [PhoneAlarm_OpCode$json],
};

@$core.Deprecated('Use phoneAlarmDescriptor instead')
const PhoneAlarm_Operation$json = {
  '1': 'Operation',
  '2': [
    {
      '1': 'op_code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.PhoneAlarm.OpCode',
      '10': 'opCode'
    },
    {
      '1': 'phone_alarm',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.PhoneAlarm',
      '10': 'phoneAlarm'
    },
  ],
};

@$core.Deprecated('Use phoneAlarmDescriptor instead')
const PhoneAlarm_OpCode$json = {
  '1': 'OpCode',
  '2': [
    {'1': 'ALERT', '2': 0},
    {'1': 'DISMISS', '2': 1},
    {'1': 'SNOOZE', '2': 2},
  ],
};

/// Descriptor for `PhoneAlarm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List phoneAlarmDescriptor = $convert.base64Decode(
    'CgpQaG9uZUFsYXJtEg4KAmlkGAEgAigNUgJpZBIdCgphbGVydF90aW1lGAIgASgNUglhbGVydF'
    'RpbWUSFAoFbGFiZWwYAyACKAlSBWxhYmVsGngKCU9wZXJhdGlvbhI0CgdvcF9jb2RlGAEgAigO'
    'MhsucHJvdG9jb2wuUGhvbmVBbGFybS5PcENvZGVSBm9wQ29kZRI1CgtwaG9uZV9hbGFybRgCIA'
    'IoCzIULnByb3RvY29sLlBob25lQWxhcm1SCnBob25lQWxhcm0iLAoGT3BDb2RlEgkKBUFMRVJU'
    'EAASCwoHRElTTUlTUxABEgoKBlNOT09aRRAC');

@$core.Deprecated('Use reminderInfoDescriptor instead')
const ReminderInfo$json = {
  '1': 'ReminderInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {
      '1': 'data',
      '3': 2,
      '4': 2,
      '5': 11,
      '6': '.protocol.ReminderInfo.Data',
      '10': 'data'
    },
  ],
  '3': [
    ReminderInfo_List$json,
    ReminderInfo_SubTodo$json,
    ReminderInfo_Data$json,
    ReminderInfo_Mark$json
  ],
};

@$core.Deprecated('Use reminderInfoDescriptor instead')
const ReminderInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.ReminderInfo',
      '10': 'list'
    },
    {
      '1': 'support_max_reminders',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'supportMaxReminders'
    },
  ],
};

@$core.Deprecated('Use reminderInfoDescriptor instead')
const ReminderInfo_SubTodo$json = {
  '1': 'SubTodo',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {'1': 'status', '3': 2, '4': 2, '5': 13, '10': 'status'},
    {'1': 'content', '3': 3, '4': 2, '5': 9, '10': 'content'},
    {'1': 'truncated', '3': 4, '4': 1, '5': 8, '10': 'truncated'},
  ],
};

@$core.Deprecated('Use reminderInfoDescriptor instead')
const ReminderInfo_Data$json = {
  '1': 'Data',
  '2': [
    {'1': 'date', '3': 1, '4': 2, '5': 11, '6': '.protocol.Date', '10': 'date'},
    {'1': 'time', '3': 2, '4': 2, '5': 11, '6': '.protocol.Time', '10': 'time'},
    {
      '1': 'clock_mode',
      '3': 3,
      '4': 2,
      '5': 14,
      '6': '.protocol.ClockMode',
      '10': 'clockMode'
    },
    {'1': 'week_days', '3': 4, '4': 1, '5': 13, '10': 'weekDays'},
    {'1': 'label', '3': 5, '4': 2, '5': 9, '10': 'label'},
    {'1': 'truncated', '3': 6, '4': 1, '5': 8, '10': 'truncated'},
    {'1': 'source', '3': 7, '4': 1, '5': 13, '10': 'source'},
    {'1': 'status', '3': 8, '4': 1, '5': 13, '10': 'status'},
    {'1': 'update_time', '3': 9, '4': 1, '5': 4, '10': 'updateTime'},
    {
      '1': 'sub_list',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.protocol.ReminderInfo.SubTodo',
      '10': 'subList'
    },
  ],
};

@$core.Deprecated('Use reminderInfoDescriptor instead')
const ReminderInfo_Mark$json = {
  '1': 'Mark',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {'1': 'source', '3': 2, '4': 1, '5': 13, '10': 'source'},
    {'1': 'status', '3': 3, '4': 2, '5': 13, '10': 'status'},
    {'1': 'update_time', '3': 4, '4': 2, '5': 4, '10': 'updateTime'},
    {
      '1': 'sub_list',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.protocol.ReminderInfo.SubTodo',
      '10': 'subList'
    },
  ],
};

/// Descriptor for `ReminderInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reminderInfoDescriptor = $convert.base64Decode(
    'CgxSZW1pbmRlckluZm8SDgoCaWQYASACKA1SAmlkEi8KBGRhdGEYAiACKAsyGy5wcm90b2NvbC'
    '5SZW1pbmRlckluZm8uRGF0YVIEZGF0YRpmCgRMaXN0EioKBGxpc3QYASADKAsyFi5wcm90b2Nv'
    'bC5SZW1pbmRlckluZm9SBGxpc3QSMgoVc3VwcG9ydF9tYXhfcmVtaW5kZXJzGAIgASgNUhNzdX'
    'Bwb3J0TWF4UmVtaW5kZXJzGmkKB1N1YlRvZG8SDgoCaWQYASACKA1SAmlkEhYKBnN0YXR1cxgC'
    'IAIoDVIGc3RhdHVzEhgKB2NvbnRlbnQYAyACKAlSB2NvbnRlbnQSHAoJdHJ1bmNhdGVkGAQgAS'
    'gIUgl0cnVuY2F0ZWQa3wIKBERhdGESIgoEZGF0ZRgBIAIoCzIOLnByb3RvY29sLkRhdGVSBGRh'
    'dGUSIgoEdGltZRgCIAIoCzIOLnByb3RvY29sLlRpbWVSBHRpbWUSMgoKY2xvY2tfbW9kZRgDIA'
    'IoDjITLnByb3RvY29sLkNsb2NrTW9kZVIJY2xvY2tNb2RlEhsKCXdlZWtfZGF5cxgEIAEoDVII'
    'd2Vla0RheXMSFAoFbGFiZWwYBSACKAlSBWxhYmVsEhwKCXRydW5jYXRlZBgGIAEoCFIJdHJ1bm'
    'NhdGVkEhYKBnNvdXJjZRgHIAEoDVIGc291cmNlEhYKBnN0YXR1cxgIIAEoDVIGc3RhdHVzEh8K'
    'C3VwZGF0ZV90aW1lGAkgASgEUgp1cGRhdGVUaW1lEjkKCHN1Yl9saXN0GAogAygLMh4ucHJvdG'
    '9jb2wuUmVtaW5kZXJJbmZvLlN1YlRvZG9SB3N1Ykxpc3QaogEKBE1hcmsSDgoCaWQYASACKA1S'
    'AmlkEhYKBnNvdXJjZRgCIAEoDVIGc291cmNlEhYKBnN0YXR1cxgDIAIoDVIGc3RhdHVzEh8KC3'
    'VwZGF0ZV90aW1lGAQgAigEUgp1cGRhdGVUaW1lEjkKCHN1Yl9saXN0GAUgAygLMh4ucHJvdG9j'
    'b2wuUmVtaW5kZXJJbmZvLlN1YlRvZG9SB3N1Ykxpc3Q=');

@$core.Deprecated('Use reminderIdListDescriptor instead')
const ReminderIdList$json = {
  '1': 'ReminderIdList',
  '2': [
    {'1': 'id', '3': 1, '4': 3, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `ReminderIdList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reminderIdListDescriptor =
    $convert.base64Decode('Cg5SZW1pbmRlcklkTGlzdBIOCgJpZBgBIAMoDVICaWQ=');
