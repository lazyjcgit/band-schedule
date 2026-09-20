// This is a generated file - do not edit.
//
// Generated from wear_gnss.proto.

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

@$core.Deprecated('Use gnssDescriptor instead')
const Gnss$json = {
  '1': 'Gnss',
  '2': [
    {'1': 'days', '3': 1, '4': 1, '5': 13, '9': 0, '10': 'days'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.Data',
      '9': 0,
      '10': 'data'
    },
    {
      '1': 'gps_info',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.GpsInfo',
      '9': 0,
      '10': 'gpsInfo'
    },
  ],
  '4': [Gnss_GnssID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use gnssDescriptor instead')
const Gnss_GnssID$json = {
  '1': 'GnssID',
  '2': [
    {'1': 'REQUEST_ONLINE', '2': 0},
    {'1': 'REQUEST_OFFLINE', '2': 1},
    {'1': 'REQUEST_GPS_INFO', '2': 3},
    {'1': 'SEND_GPS_INFO', '2': 2},
  ],
};

/// Descriptor for `Gnss`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gnssDescriptor = $convert.base64Decode(
    'CgRHbnNzEhQKBGRheXMYASABKA1IAFIEZGF5cxIkCgRkYXRhGAIgASgLMg4ucHJvdG9jb2wuRG'
    'F0YUgAUgRkYXRhEi4KCGdwc19pbmZvGAMgASgLMhEucHJvdG9jb2wuR3BzSW5mb0gAUgdncHNJ'
    'bmZvIloKBkduc3NJRBISCg5SRVFVRVNUX09OTElORRAAEhMKD1JFUVVFU1RfT0ZGTElORRABEh'
    'QKEFJFUVVFU1RfR1BTX0lORk8QAxIRCg1TRU5EX0dQU19JTkZPEAJCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use dataDescriptor instead')
const Data$json = {
  '1': 'Data',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.Data.Type',
      '10': 'type'
    },
    {'1': 'source', '3': 2, '4': 2, '5': 9, '10': 'source'},
    {'1': 'days', '3': 3, '4': 1, '5': 13, '10': 'days'},
    {'1': 'need_gps_info', '3': 4, '4': 1, '5': 8, '10': 'needGpsInfo'},
    {
      '1': 'expected_slice_length',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'expectedSliceLength'
    },
  ],
  '4': [Data_Type$json],
};

@$core.Deprecated('Use dataDescriptor instead')
const Data_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'AGPS', '2': 1},
    {'1': 'BEIDOU', '2': 2},
    {'1': 'GALILEO', '2': 3},
  ],
};

/// Descriptor for `Data`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataDescriptor = $convert.base64Decode(
    'CgREYXRhEicKBHR5cGUYASACKA4yEy5wcm90b2NvbC5EYXRhLlR5cGVSBHR5cGUSFgoGc291cm'
    'NlGAIgAigJUgZzb3VyY2USEgoEZGF5cxgDIAEoDVIEZGF5cxIiCg1uZWVkX2dwc19pbmZvGAQg'
    'ASgIUgtuZWVkR3BzSW5mbxIyChVleHBlY3RlZF9zbGljZV9sZW5ndGgYBSABKA1SE2V4cGVjdG'
    'VkU2xpY2VMZW5ndGgiKQoEVHlwZRIICgRBR1BTEAESCgoGQkVJRE9VEAISCwoHR0FMSUxFTxAD');

@$core.Deprecated('Use gpsInfoDescriptor instead')
const GpsInfo$json = {
  '1': 'GpsInfo',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 2, '5': 13, '10': 'timestamp'},
    {'1': 'longitude', '3': 2, '4': 2, '5': 1, '10': 'longitude'},
    {'1': 'latitude', '3': 3, '4': 2, '5': 1, '10': 'latitude'},
    {'1': 'altitude', '3': 4, '4': 1, '5': 1, '10': 'altitude'},
  ],
};

/// Descriptor for `GpsInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gpsInfoDescriptor = $convert.base64Decode(
    'CgdHcHNJbmZvEhwKCXRpbWVzdGFtcBgBIAIoDVIJdGltZXN0YW1wEhwKCWxvbmdpdHVkZRgCIA'
    'IoAVIJbG9uZ2l0dWRlEhoKCGxhdGl0dWRlGAMgAigBUghsYXRpdHVkZRIaCghhbHRpdHVkZRgE'
    'IAEoAVIIYWx0aXR1ZGU=');
