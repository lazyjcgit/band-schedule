// This is a generated file - do not edit.
//
// Generated from wear.proto.

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

@$core.Deprecated('Use wearPacketDescriptor instead')
const WearPacket$json = {
  '1': 'WearPacket',
  '2': [
    {
      '1': 'account',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.Account',
      '9': 0,
      '10': 'account'
    },
    {
      '1': 'system',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.System',
      '9': 0,
      '10': 'system'
    },
    {
      '1': 'watch_face',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.WatchFace',
      '9': 0,
      '10': 'watchFace'
    },
    {
      '1': 'nfc',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.Nfc',
      '9': 0,
      '10': 'nfc'
    },
    {
      '1': 'notification',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.Notification',
      '9': 0,
      '10': 'notification'
    },
    {
      '1': 'fitness',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.Fitness',
      '9': 0,
      '10': 'fitness'
    },
    {
      '1': 'lpa',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.Lpa',
      '9': 0,
      '10': 'lpa'
    },
    {
      '1': 'weather',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.Weather',
      '9': 0,
      '10': 'weather'
    },
    {
      '1': 'stock',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.Stock',
      '9': 0,
      '10': 'stock'
    },
    {
      '1': 'calendar',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.Calendar',
      '9': 0,
      '10': 'calendar'
    },
    {
      '1': 'factory',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.Factory',
      '9': 0,
      '10': 'factory'
    },
    {
      '1': 'aivs',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.Aivs',
      '9': 0,
      '10': 'aivs'
    },
    {
      '1': 'market',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.Market',
      '9': 0,
      '10': 'market'
    },
    {
      '1': 'gnss',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.Gnss',
      '9': 0,
      '10': 'gnss'
    },
    {
      '1': 'clock',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.Clock',
      '9': 0,
      '10': 'clock'
    },
    {
      '1': 'media',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.protocol.Media',
      '9': 0,
      '10': 'media'
    },
    {
      '1': 'alexa',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.protocol.Alexa',
      '9': 0,
      '10': 'alexa'
    },
    {
      '1': 'thirdparty_app',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.protocol.ThirdpartyApp',
      '9': 0,
      '10': 'thirdpartyApp'
    },
    {
      '1': 'contact',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.protocol.Contact',
      '9': 0,
      '10': 'contact'
    },
    {
      '1': 'mass',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.protocol.Mass',
      '9': 0,
      '10': 'mass'
    },
    {
      '1': 'interconnection',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.protocol.Interconnection',
      '9': 0,
      '10': 'interconnection'
    },
    {
      '1': 'error_code',
      '3': 100,
      '4': 1,
      '5': 14,
      '6': '.protocol.ErrorCode',
      '9': 0,
      '10': 'errorCode'
    },
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.WearPacket.Type',
      '10': 'type'
    },
    {'1': 'id', '3': 2, '4': 2, '5': 13, '10': 'id'},
  ],
  '4': [WearPacket_Type$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use wearPacketDescriptor instead')
const WearPacket_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'OTHER', '2': 0},
    {'1': 'ACCOUNT', '2': 1},
    {'1': 'SYSTEM', '2': 2},
    {'1': 'WATCH_FACE', '2': 4},
    {'1': 'NFC', '2': 5},
    {'1': 'NOTIFICATION', '2': 7},
    {'1': 'FITNESS', '2': 8},
    {'1': 'LPA', '2': 9},
    {'1': 'WEATHER', '2': 10},
    {'1': 'STOCK', '2': 11},
    {'1': 'CALENDAR', '2': 12},
    {'1': 'FACTORY', '2': 13},
    {'1': 'AIVS', '2': 14},
    {'1': 'MARKET', '2': 15},
    {'1': 'GNSS', '2': 16},
    {'1': 'CLOCK', '2': 17},
    {'1': 'MEDIA', '2': 18},
    {'1': 'ALEXA', '2': 19},
    {'1': 'THIRDPARTY_APP', '2': 20},
    {'1': 'CONTACT', '2': 21},
    {'1': 'MASS', '2': 22},
    {'1': 'INTERCONNECTION', '2': 23},
  ],
};

/// Descriptor for `WearPacket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wearPacketDescriptor = $convert.base64Decode(
    'CgpXZWFyUGFja2V0Ei0KB2FjY291bnQYAyABKAsyES5wcm90b2NvbC5BY2NvdW50SABSB2FjY2'
    '91bnQSKgoGc3lzdGVtGAQgASgLMhAucHJvdG9jb2wuU3lzdGVtSABSBnN5c3RlbRI0Cgp3YXRj'
    'aF9mYWNlGAYgASgLMhMucHJvdG9jb2wuV2F0Y2hGYWNlSABSCXdhdGNoRmFjZRIhCgNuZmMYBy'
    'ABKAsyDS5wcm90b2NvbC5OZmNIAFIDbmZjEjwKDG5vdGlmaWNhdGlvbhgJIAEoCzIWLnByb3Rv'
    'Y29sLk5vdGlmaWNhdGlvbkgAUgxub3RpZmljYXRpb24SLQoHZml0bmVzcxgKIAEoCzIRLnByb3'
    'RvY29sLkZpdG5lc3NIAFIHZml0bmVzcxIhCgNscGEYCyABKAsyDS5wcm90b2NvbC5McGFIAFID'
    'bHBhEi0KB3dlYXRoZXIYDCABKAsyES5wcm90b2NvbC5XZWF0aGVySABSB3dlYXRoZXISJwoFc3'
    'RvY2sYDSABKAsyDy5wcm90b2NvbC5TdG9ja0gAUgVzdG9jaxIwCghjYWxlbmRhchgOIAEoCzIS'
    'LnByb3RvY29sLkNhbGVuZGFySABSCGNhbGVuZGFyEi0KB2ZhY3RvcnkYDyABKAsyES5wcm90b2'
    'NvbC5GYWN0b3J5SABSB2ZhY3RvcnkSJAoEYWl2cxgQIAEoCzIOLnByb3RvY29sLkFpdnNIAFIE'
    'YWl2cxIqCgZtYXJrZXQYESABKAsyEC5wcm90b2NvbC5NYXJrZXRIAFIGbWFya2V0EiQKBGduc3'
    'MYEiABKAsyDi5wcm90b2NvbC5HbnNzSABSBGduc3MSJwoFY2xvY2sYEyABKAsyDy5wcm90b2Nv'
    'bC5DbG9ja0gAUgVjbG9jaxInCgVtZWRpYRgUIAEoCzIPLnByb3RvY29sLk1lZGlhSABSBW1lZG'
    'lhEicKBWFsZXhhGBUgASgLMg8ucHJvdG9jb2wuQWxleGFIAFIFYWxleGESQAoOdGhpcmRwYXJ0'
    'eV9hcHAYFiABKAsyFy5wcm90b2NvbC5UaGlyZHBhcnR5QXBwSABSDXRoaXJkcGFydHlBcHASLQ'
    'oHY29udGFjdBgXIAEoCzIRLnByb3RvY29sLkNvbnRhY3RIAFIHY29udGFjdBIkCgRtYXNzGBgg'
    'ASgLMg4ucHJvdG9jb2wuTWFzc0gAUgRtYXNzEkUKD2ludGVyY29ubmVjdGlvbhgZIAEoCzIZLn'
    'Byb3RvY29sLkludGVyY29ubmVjdGlvbkgAUg9pbnRlcmNvbm5lY3Rpb24SNAoKZXJyb3JfY29k'
    'ZRhkIAEoDjITLnByb3RvY29sLkVycm9yQ29kZUgAUgllcnJvckNvZGUSLQoEdHlwZRgBIAIoDj'
    'IZLnByb3RvY29sLldlYXJQYWNrZXQuVHlwZVIEdHlwZRIOCgJpZBgCIAIoDVICaWQinwIKBFR5'
    'cGUSCQoFT1RIRVIQABILCgdBQ0NPVU5UEAESCgoGU1lTVEVNEAISDgoKV0FUQ0hfRkFDRRAEEg'
    'cKA05GQxAFEhAKDE5PVElGSUNBVElPThAHEgsKB0ZJVE5FU1MQCBIHCgNMUEEQCRILCgdXRUFU'
    'SEVSEAoSCQoFU1RPQ0sQCxIMCghDQUxFTkRBUhAMEgsKB0ZBQ1RPUlkQDRIICgRBSVZTEA4SCg'
    'oGTUFSS0VUEA8SCAoER05TUxAQEgkKBUNMT0NLEBESCQoFTUVESUEQEhIJCgVBTEVYQRATEhIK'
    'DlRISVJEUEFSVFlfQVBQEBQSCwoHQ09OVEFDVBAVEggKBE1BU1MQFhITCg9JTlRFUkNPTk5FQ1'
    'RJT04QF0IJCgdwYXlsb2Fk');
