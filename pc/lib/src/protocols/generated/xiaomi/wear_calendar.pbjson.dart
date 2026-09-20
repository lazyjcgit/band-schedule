// This is a generated file - do not edit.
//
// Generated from wear_calendar.proto.

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

@$core.Deprecated('Use calendarDescriptor instead')
const Calendar$json = {
  '1': 'Calendar',
  '2': [
    {
      '1': 'calendar_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.CalendarInfo',
      '9': 0,
      '10': 'calendarInfo'
    },
    {
      '1': 'calendar_info_list',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.CalendarInfo.List',
      '9': 0,
      '10': 'calendarInfoList'
    },
  ],
  '4': [Calendar_CalendarID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use calendarDescriptor instead')
const Calendar_CalendarID$json = {
  '1': 'CalendarID',
  '2': [
    {'1': 'SYNC_CALENDAR_INFO', '2': 0},
    {'1': 'SYNC_CALENDAR_INFO_LIST', '2': 1},
    {'1': 'WEAR_REQUEST', '2': 2},
  ],
};

/// Descriptor for `Calendar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calendarDescriptor = $convert.base64Decode(
    'CghDYWxlbmRhchI9Cg1jYWxlbmRhcl9pbmZvGAEgASgLMhYucHJvdG9jb2wuQ2FsZW5kYXJJbm'
    'ZvSABSDGNhbGVuZGFySW5mbxJLChJjYWxlbmRhcl9pbmZvX2xpc3QYAiABKAsyGy5wcm90b2Nv'
    'bC5DYWxlbmRhckluZm8uTGlzdEgAUhBjYWxlbmRhckluZm9MaXN0IlMKCkNhbGVuZGFySUQSFg'
    'oSU1lOQ19DQUxFTkRBUl9JTkZPEAASGwoXU1lOQ19DQUxFTkRBUl9JTkZPX0xJU1QQARIQCgxX'
    'RUFSX1JFUVVFU1QQAkIJCgdwYXlsb2Fk');

@$core.Deprecated('Use calendarInfoDescriptor instead')
const CalendarInfo$json = {
  '1': 'CalendarInfo',
  '2': [
    {'1': 'title', '3': 1, '4': 2, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 2, '5': 9, '10': 'description'},
    {'1': 'location', '3': 3, '4': 2, '5': 9, '10': 'location'},
    {'1': 'start', '3': 4, '4': 2, '5': 13, '10': 'start'},
    {'1': 'end', '3': 5, '4': 2, '5': 13, '10': 'end'},
    {'1': 'all_day', '3': 6, '4': 2, '5': 8, '10': 'allDay'},
    {'1': 'reminder_minutes', '3': 7, '4': 2, '5': 5, '10': 'reminderMinutes'},
  ],
  '3': [CalendarInfo_List$json],
};

@$core.Deprecated('Use calendarInfoDescriptor instead')
const CalendarInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.CalendarInfo',
      '10': 'list'
    },
    {'1': 'disable', '3': 2, '4': 1, '5': 8, '10': 'disable'},
  ],
};

/// Descriptor for `CalendarInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List calendarInfoDescriptor = $convert.base64Decode(
    'CgxDYWxlbmRhckluZm8SFAoFdGl0bGUYASACKAlSBXRpdGxlEiAKC2Rlc2NyaXB0aW9uGAIgAi'
    'gJUgtkZXNjcmlwdGlvbhIaCghsb2NhdGlvbhgDIAIoCVIIbG9jYXRpb24SFAoFc3RhcnQYBCAC'
    'KA1SBXN0YXJ0EhAKA2VuZBgFIAIoDVIDZW5kEhcKB2FsbF9kYXkYBiACKAhSBmFsbERheRIpCh'
    'ByZW1pbmRlcl9taW51dGVzGAcgAigFUg9yZW1pbmRlck1pbnV0ZXMaTAoETGlzdBIqCgRsaXN0'
    'GAEgAygLMhYucHJvdG9jb2wuQ2FsZW5kYXJJbmZvUgRsaXN0EhgKB2Rpc2FibGUYAiABKAhSB2'
    'Rpc2FibGU=');
