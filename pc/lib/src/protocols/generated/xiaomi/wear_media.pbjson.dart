// This is a generated file - do not edit.
//
// Generated from wear_media.proto.

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

@$core.Deprecated('Use recordTypeDescriptor instead')
const RecordType$json = {
  '1': 'RecordType',
  '2': [
    {'1': 'RECORD_NORMAL', '2': 0},
    {'1': 'RECORD_REALTIME', '2': 1},
    {'1': 'RECORD_MUSIC', '2': 2},
    {'1': 'RECORD_TRANSLATION', '2': 3},
    {'1': 'RECORD_TRANSLATION_FACE', '2': 4},
  ],
};

/// Descriptor for `RecordType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List recordTypeDescriptor = $convert.base64Decode(
    'CgpSZWNvcmRUeXBlEhEKDVJFQ09SRF9OT1JNQUwQABITCg9SRUNPUkRfUkVBTFRJTUUQARIQCg'
    'xSRUNPUkRfTVVTSUMQAhIWChJSRUNPUkRfVFJBTlNMQVRJT04QAxIbChdSRUNPUkRfVFJBTlNM'
    'QVRJT05fRkFDRRAE');

@$core.Deprecated('Use mediaDescriptor instead')
const Media$json = {
  '1': 'Media',
  '2': [
    {
      '1': 'player_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.PlayerInfo',
      '9': 0,
      '10': 'playerInfo'
    },
    {
      '1': 'player_control',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.PlayerControl',
      '9': 0,
      '10': 'playerControl'
    },
    {
      '1': 'song_summary',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.SongSummary',
      '9': 0,
      '10': 'songSummary'
    },
    {
      '1': 'songlist_request',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.Songlist.Request',
      '9': 0,
      '10': 'songlistRequest'
    },
    {
      '1': 'songlist_response',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.Songlist.Response',
      '9': 0,
      '10': 'songlistResponse'
    },
    {
      '1': 'song_get_request',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.Song.GetRequest',
      '9': 0,
      '10': 'songGetRequest'
    },
    {
      '1': 'song_get_response',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.Song.GetResponse',
      '9': 0,
      '10': 'songGetResponse'
    },
    {
      '1': 'song_add_request',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.Song.AddRequest',
      '9': 0,
      '10': 'songAddRequest'
    },
    {
      '1': 'song_add_response',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.Song.AddResponse',
      '9': 0,
      '10': 'songAddResponse'
    },
    {
      '1': 'song_report_result',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.protocol.Song.ReportResult',
      '9': 0,
      '10': 'songReportResult'
    },
    {
      '1': 'song_remove_request',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.Song.RemoveRequest',
      '9': 0,
      '10': 'songRemoveRequest'
    },
    {
      '1': 'song_remove_response',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.Song.RemoveResponse',
      '9': 0,
      '10': 'songRemoveResponse'
    },
    {
      '1': 'media_file_summary',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.MediaFile.Summary',
      '9': 0,
      '10': 'mediaFileSummary'
    },
    {
      '1': 'media_file_list',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.MediaFile.List',
      '9': 0,
      '10': 'mediaFileList'
    },
    {
      '1': 'media_file_identifier',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.MediaFile.Identifier',
      '9': 0,
      '10': 'mediaFileIdentifier'
    },
    {
      '1': 'media_file_identifiers',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.MediaFile.Identifier.List',
      '9': 0,
      '10': 'mediaFileIdentifiers'
    },
    {
      '1': 'record_request',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.protocol.RecordRequest',
      '9': 0,
      '10': 'recordRequest'
    },
    {
      '1': 'record_response',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.protocol.RecordResponse',
      '9': 0,
      '10': 'recordResponse'
    },
    {
      '1': 'record_status',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.protocol.RecordStatus',
      '9': 0,
      '10': 'recordStatus'
    },
  ],
  '4': [Media_MediaID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use mediaDescriptor instead')
const Media_MediaID$json = {
  '1': 'MediaID',
  '2': [
    {'1': 'WEAR_REQUEST', '2': 0},
    {'1': 'SYNC_PLAYER_INFO', '2': 1},
    {'1': 'CONTROL_PLAYER', '2': 2},
    {'1': 'GET_SONG_SUMMARY', '2': 3},
    {'1': 'ADD_SONGLIST', '2': 4},
    {'1': 'REMOVE_SONGLIST', '2': 5},
    {'1': 'RENAME_SONGLIST', '2': 6},
    {'1': 'QUERY_SONG_FOR_SONGLIST', '2': 7},
    {'1': 'ADD_SONG_TO_SONGLIST', '2': 8},
    {'1': 'REMOVE_SONG_FROM_SONGLIST', '2': 9},
    {'1': 'GET_SONG', '2': 10},
    {'1': 'ADD_SONG', '2': 11},
    {'1': 'REPORT_SONG_RESULT', '2': 12},
    {'1': 'REMOVE_SONG', '2': 13},
    {'1': 'GET_MEDIA_FILE_SUMMARY', '2': 14},
    {'1': 'SYNC_MEDIA_FILE_LIST', '2': 15},
    {'1': 'REPORT_MEDIA_FILE_LIST', '2': 16},
    {'1': 'REQUEST_MEDIA_FILE', '2': 17},
    {'1': 'REQUEST_MEDIA_FILE_LIST', '2': 18},
    {'1': 'CONFIRM_MEDIA_FILE', '2': 19},
    {'1': 'REQUEST_RECORD', '2': 20},
    {'1': 'GET_RECORD_STATUS', '2': 21},
    {'1': 'REPORT_RECORD_STATUS', '2': 22},
  ],
};

/// Descriptor for `Media`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaDescriptor = $convert.base64Decode(
    'CgVNZWRpYRI3CgtwbGF5ZXJfaW5mbxgBIAEoCzIULnByb3RvY29sLlBsYXllckluZm9IAFIKcG'
    'xheWVySW5mbxJACg5wbGF5ZXJfY29udHJvbBgCIAEoCzIXLnByb3RvY29sLlBsYXllckNvbnRy'
    'b2xIAFINcGxheWVyQ29udHJvbBI6Cgxzb25nX3N1bW1hcnkYAyABKAsyFS5wcm90b2NvbC5Tb2'
    '5nU3VtbWFyeUgAUgtzb25nU3VtbWFyeRJHChBzb25nbGlzdF9yZXF1ZXN0GAQgASgLMhoucHJv'
    'dG9jb2wuU29uZ2xpc3QuUmVxdWVzdEgAUg9zb25nbGlzdFJlcXVlc3QSSgoRc29uZ2xpc3Rfcm'
    'VzcG9uc2UYBSABKAsyGy5wcm90b2NvbC5Tb25nbGlzdC5SZXNwb25zZUgAUhBzb25nbGlzdFJl'
    'c3BvbnNlEkUKEHNvbmdfZ2V0X3JlcXVlc3QYBiABKAsyGS5wcm90b2NvbC5Tb25nLkdldFJlcX'
    'Vlc3RIAFIOc29uZ0dldFJlcXVlc3QSSAoRc29uZ19nZXRfcmVzcG9uc2UYByABKAsyGi5wcm90'
    'b2NvbC5Tb25nLkdldFJlc3BvbnNlSABSD3NvbmdHZXRSZXNwb25zZRJFChBzb25nX2FkZF9yZX'
    'F1ZXN0GAggASgLMhkucHJvdG9jb2wuU29uZy5BZGRSZXF1ZXN0SABSDnNvbmdBZGRSZXF1ZXN0'
    'EkgKEXNvbmdfYWRkX3Jlc3BvbnNlGAkgASgLMhoucHJvdG9jb2wuU29uZy5BZGRSZXNwb25zZU'
    'gAUg9zb25nQWRkUmVzcG9uc2USSwoSc29uZ19yZXBvcnRfcmVzdWx0GAogASgLMhsucHJvdG9j'
    'b2wuU29uZy5SZXBvcnRSZXN1bHRIAFIQc29uZ1JlcG9ydFJlc3VsdBJOChNzb25nX3JlbW92ZV'
    '9yZXF1ZXN0GAsgASgLMhwucHJvdG9jb2wuU29uZy5SZW1vdmVSZXF1ZXN0SABSEXNvbmdSZW1v'
    'dmVSZXF1ZXN0ElEKFHNvbmdfcmVtb3ZlX3Jlc3BvbnNlGAwgASgLMh0ucHJvdG9jb2wuU29uZy'
    '5SZW1vdmVSZXNwb25zZUgAUhJzb25nUmVtb3ZlUmVzcG9uc2USSwoSbWVkaWFfZmlsZV9zdW1t'
    'YXJ5GA0gASgLMhsucHJvdG9jb2wuTWVkaWFGaWxlLlN1bW1hcnlIAFIQbWVkaWFGaWxlU3VtbW'
    'FyeRJCCg9tZWRpYV9maWxlX2xpc3QYDiABKAsyGC5wcm90b2NvbC5NZWRpYUZpbGUuTGlzdEgA'
    'Ug1tZWRpYUZpbGVMaXN0ElQKFW1lZGlhX2ZpbGVfaWRlbnRpZmllchgPIAEoCzIeLnByb3RvY2'
    '9sLk1lZGlhRmlsZS5JZGVudGlmaWVySABSE21lZGlhRmlsZUlkZW50aWZpZXISWwoWbWVkaWFf'
    'ZmlsZV9pZGVudGlmaWVycxgQIAEoCzIjLnByb3RvY29sLk1lZGlhRmlsZS5JZGVudGlmaWVyLk'
    'xpc3RIAFIUbWVkaWFGaWxlSWRlbnRpZmllcnMSQAoOcmVjb3JkX3JlcXVlc3QYESABKAsyFy5w'
    'cm90b2NvbC5SZWNvcmRSZXF1ZXN0SABSDXJlY29yZFJlcXVlc3QSQwoPcmVjb3JkX3Jlc3Bvbn'
    'NlGBIgASgLMhgucHJvdG9jb2wuUmVjb3JkUmVzcG9uc2VIAFIOcmVjb3JkUmVzcG9uc2USPQoN'
    'cmVjb3JkX3N0YXR1cxgTIAEoCzIWLnByb3RvY29sLlJlY29yZFN0YXR1c0gAUgxyZWNvcmRTdG'
    'F0dXMilgQKB01lZGlhSUQSEAoMV0VBUl9SRVFVRVNUEAASFAoQU1lOQ19QTEFZRVJfSU5GTxAB'
    'EhIKDkNPTlRST0xfUExBWUVSEAISFAoQR0VUX1NPTkdfU1VNTUFSWRADEhAKDEFERF9TT05HTE'
    'lTVBAEEhMKD1JFTU9WRV9TT05HTElTVBAFEhMKD1JFTkFNRV9TT05HTElTVBAGEhsKF1FVRVJZ'
    'X1NPTkdfRk9SX1NPTkdMSVNUEAcSGAoUQUREX1NPTkdfVE9fU09OR0xJU1QQCBIdChlSRU1PVk'
    'VfU09OR19GUk9NX1NPTkdMSVNUEAkSDAoIR0VUX1NPTkcQChIMCghBRERfU09ORxALEhYKElJF'
    'UE9SVF9TT05HX1JFU1VMVBAMEg8KC1JFTU9WRV9TT05HEA0SGgoWR0VUX01FRElBX0ZJTEVfU1'
    'VNTUFSWRAOEhgKFFNZTkNfTUVESUFfRklMRV9MSVNUEA8SGgoWUkVQT1JUX01FRElBX0ZJTEVf'
    'TElTVBAQEhYKElJFUVVFU1RfTUVESUFfRklMRRAREhsKF1JFUVVFU1RfTUVESUFfRklMRV9MSV'
    'NUEBISFgoSQ09ORklSTV9NRURJQV9GSUxFEBMSEgoOUkVRVUVTVF9SRUNPUkQQFBIVChFHRVRf'
    'UkVDT1JEX1NUQVRVUxAVEhgKFFJFUE9SVF9SRUNPUkRfU1RBVFVTEBZCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use playerInfoDescriptor instead')
const PlayerInfo$json = {
  '1': 'PlayerInfo',
  '2': [
    {
      '1': 'state',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.PlayerInfo.State',
      '10': 'state'
    },
    {'1': 'volume', '3': 2, '4': 1, '5': 13, '10': 'volume'},
    {'1': 'player_name', '3': 3, '4': 2, '5': 9, '10': 'playerName'},
    {'1': 'song_title', '3': 4, '4': 2, '5': 9, '10': 'songTitle'},
    {'1': 'song_artist', '3': 5, '4': 2, '5': 9, '10': 'songArtist'},
    {'1': 'current_position', '3': 6, '4': 1, '5': 13, '10': 'currentPosition'},
    {'1': 'duration', '3': 7, '4': 1, '5': 13, '10': 'duration'},
  ],
  '4': [PlayerInfo_State$json],
};

@$core.Deprecated('Use playerInfoDescriptor instead')
const PlayerInfo_State$json = {
  '1': 'State',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'PLAYING', '2': 1},
    {'1': 'PAUSE', '2': 2},
    {'1': 'STOP', '2': 3},
    {'1': 'NO_PERMISSION', '2': 10},
  ],
};

/// Descriptor for `PlayerInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerInfoDescriptor = $convert.base64Decode(
    'CgpQbGF5ZXJJbmZvEjAKBXN0YXRlGAEgAigOMhoucHJvdG9jb2wuUGxheWVySW5mby5TdGF0ZV'
    'IFc3RhdGUSFgoGdm9sdW1lGAIgASgNUgZ2b2x1bWUSHwoLcGxheWVyX25hbWUYAyACKAlSCnBs'
    'YXllck5hbWUSHQoKc29uZ190aXRsZRgEIAIoCVIJc29uZ1RpdGxlEh8KC3NvbmdfYXJ0aXN0GA'
    'UgAigJUgpzb25nQXJ0aXN0EikKEGN1cnJlbnRfcG9zaXRpb24YBiABKA1SD2N1cnJlbnRQb3Np'
    'dGlvbhIaCghkdXJhdGlvbhgHIAEoDVIIZHVyYXRpb24iRgoFU3RhdGUSCAoETk9ORRAAEgsKB1'
    'BMQVlJTkcQARIJCgVQQVVTRRACEggKBFNUT1AQAxIRCg1OT19QRVJNSVNTSU9OEAo=');

@$core.Deprecated('Use playerControlDescriptor instead')
const PlayerControl$json = {
  '1': 'PlayerControl',
  '2': [
    {
      '1': 'command',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.PlayerControl.Command',
      '10': 'command'
    },
    {'1': 'volume', '3': 2, '4': 1, '5': 13, '10': 'volume'},
  ],
  '4': [PlayerControl_Command$json],
};

@$core.Deprecated('Use playerControlDescriptor instead')
const PlayerControl_Command$json = {
  '1': 'Command',
  '2': [
    {'1': 'PLAY', '2': 0},
    {'1': 'PAUSE', '2': 1},
    {'1': 'STOP', '2': 2},
    {'1': 'PREV', '2': 3},
    {'1': 'NEXT', '2': 4},
    {'1': 'ADJUST_VOLUME', '2': 5},
  ],
};

/// Descriptor for `PlayerControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playerControlDescriptor = $convert.base64Decode(
    'Cg1QbGF5ZXJDb250cm9sEjkKB2NvbW1hbmQYASACKA4yHy5wcm90b2NvbC5QbGF5ZXJDb250cm'
    '9sLkNvbW1hbmRSB2NvbW1hbmQSFgoGdm9sdW1lGAIgASgNUgZ2b2x1bWUiTwoHQ29tbWFuZBII'
    'CgRQTEFZEAASCQoFUEFVU0UQARIICgRTVE9QEAISCAoEUFJFVhADEggKBE5FWFQQBBIRCg1BRE'
    'pVU1RfVk9MVU1FEAU=');

@$core.Deprecated('Use songSummaryDescriptor instead')
const SongSummary$json = {
  '1': 'SongSummary',
  '2': [
    {
      '1': 'support_media_format',
      '3': 1,
      '4': 2,
      '5': 13,
      '10': 'supportMediaFormat'
    },
    {'1': 'song_count', '3': 2, '4': 2, '5': 13, '10': 'songCount'},
    {'1': 'songlist_limit', '3': 3, '4': 2, '5': 13, '10': 'songlistLimit'},
    {
      '1': 'list',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.protocol.Songlist',
      '10': 'list'
    },
  ],
};

/// Descriptor for `SongSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songSummaryDescriptor = $convert.base64Decode(
    'CgtTb25nU3VtbWFyeRIwChRzdXBwb3J0X21lZGlhX2Zvcm1hdBgBIAIoDVISc3VwcG9ydE1lZG'
    'lhRm9ybWF0Eh0KCnNvbmdfY291bnQYAiACKA1SCXNvbmdDb3VudBIlCg5zb25nbGlzdF9saW1p'
    'dBgDIAIoDVINc29uZ2xpc3RMaW1pdBImCgRsaXN0GAQgAygLMhIucHJvdG9jb2wuU29uZ2xpc3'
    'RSBGxpc3Q=');

@$core.Deprecated('Use songlistDescriptor instead')
const Songlist$json = {
  '1': 'Songlist',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 13, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    {'1': 'song_count', '3': 3, '4': 2, '5': 13, '10': 'songCount'},
  ],
  '3': [Songlist_Request$json, Songlist_Response$json],
};

@$core.Deprecated('Use songlistDescriptor instead')
const Songlist_Request$json = {
  '1': 'Request',
  '2': [
    {
      '1': 'cmd',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.Songlist.Request.Cmd',
      '10': 'cmd'
    },
    {'1': 'id', '3': 2, '4': 2, '5': 13, '10': 'id'},
    {'1': 'name', '3': 3, '4': 2, '5': 9, '10': 'name'},
    {'1': 'song_ids', '3': 4, '4': 2, '5': 12, '10': 'songIds'},
  ],
  '4': [Songlist_Request_Cmd$json],
};

@$core.Deprecated('Use songlistDescriptor instead')
const Songlist_Request_Cmd$json = {
  '1': 'Cmd',
  '2': [
    {'1': 'ADD', '2': 1},
    {'1': 'REMOVE', '2': 2},
    {'1': 'RENAME', '2': 3},
    {'1': 'QUERY_SONG', '2': 4},
    {'1': 'ADD_SONG', '2': 5},
    {'1': 'REMOVE_SONG', '2': 6},
  ],
};

@$core.Deprecated('Use songlistDescriptor instead')
const Songlist_Response$json = {
  '1': 'Response',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.Songlist.Response.Code',
      '10': 'code'
    },
    {'1': 'song_ids', '3': 2, '4': 2, '5': 12, '10': 'songIds'},
  ],
  '4': [Songlist_Response_Code$json],
};

@$core.Deprecated('Use songlistDescriptor instead')
const Songlist_Response_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'NO_ERROR', '2': 0},
    {'1': 'CMD_NOT_SUPPORT', '2': 1},
    {'1': 'EXCEED_LIMIT', '2': 2},
    {'1': 'ID_EXIST', '2': 3},
    {'1': 'ID_NOT_FOUND', '2': 4},
  ],
};

/// Descriptor for `Songlist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songlistDescriptor = $convert.base64Decode(
    'CghTb25nbGlzdBIOCgJpZBgBIAIoDVICaWQSEgoEbmFtZRgCIAIoCVIEbmFtZRIdCgpzb25nX2'
    'NvdW50GAMgAigNUglzb25nQ291bnQa0QEKB1JlcXVlc3QSMAoDY21kGAEgAigOMh4ucHJvdG9j'
    'b2wuU29uZ2xpc3QuUmVxdWVzdC5DbWRSA2NtZBIOCgJpZBgCIAIoDVICaWQSEgoEbmFtZRgDIA'
    'IoCVIEbmFtZRIZCghzb25nX2lkcxgEIAIoDFIHc29uZ0lkcyJVCgNDbWQSBwoDQUREEAESCgoG'
    'UkVNT1ZFEAISCgoGUkVOQU1FEAMSDgoKUVVFUllfU09ORxAEEgwKCEFERF9TT05HEAUSDwoLUk'
    'VNT1ZFX1NPTkcQBhq4AQoIUmVzcG9uc2USNAoEY29kZRgBIAIoDjIgLnByb3RvY29sLlNvbmds'
    'aXN0LlJlc3BvbnNlLkNvZGVSBGNvZGUSGQoIc29uZ19pZHMYAiACKAxSB3NvbmdJZHMiWwoEQ2'
    '9kZRIMCghOT19FUlJPUhAAEhMKD0NNRF9OT1RfU1VQUE9SVBABEhAKDEVYQ0VFRF9MSU1JVBAC'
    'EgwKCElEX0VYSVNUEAMSEAoMSURfTk9UX0ZPVU5EEAQ=');

@$core.Deprecated('Use songDescriptor instead')
const Song$json = {
  '1': 'Song',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 12, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    {'1': 'size', '3': 3, '4': 2, '5': 13, '10': 'size'},
    {'1': 'duration', '3': 5, '4': 1, '5': 13, '10': 'duration'},
    {'1': 'album', '3': 6, '4': 2, '5': 9, '10': 'album'},
    {'1': 'artist', '3': 7, '4': 2, '5': 9, '10': 'artist'},
  ],
  '3': [
    Song_GetRequest$json,
    Song_GetResponse$json,
    Song_AddRequest$json,
    Song_AddResponse$json,
    Song_ReportResult$json,
    Song_RemoveRequest$json,
    Song_RemoveResponse$json
  ],
};

@$core.Deprecated('Use songDescriptor instead')
const Song_GetRequest$json = {
  '1': 'GetRequest',
  '2': [
    {'1': 'index', '3': 1, '4': 2, '5': 13, '10': 'index'},
  ],
};

@$core.Deprecated('Use songDescriptor instead')
const Song_GetResponse$json = {
  '1': 'GetResponse',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.protocol.Song', '10': 'list'},
    {'1': 'next_index', '3': 2, '4': 2, '5': 13, '10': 'nextIndex'},
  ],
};

@$core.Deprecated('Use songDescriptor instead')
const Song_AddRequest$json = {
  '1': 'AddRequest',
  '2': [
    {'1': 'song', '3': 1, '4': 2, '5': 11, '6': '.protocol.Song', '10': 'song'},
  ],
};

@$core.Deprecated('Use songDescriptor instead')
const Song_AddResponse$json = {
  '1': 'AddResponse',
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

@$core.Deprecated('Use songDescriptor instead')
const Song_ReportResult$json = {
  '1': 'ReportResult',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.Song.ReportResult.Code',
      '10': 'code'
    },
    {'1': 'id', '3': 2, '4': 1, '5': 12, '10': 'id'},
  ],
  '4': [Song_ReportResult_Code$json],
};

@$core.Deprecated('Use songDescriptor instead')
const Song_ReportResult_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'ID_NOT_MATCH', '2': 1},
    {'1': 'FAIL', '2': 2},
  ],
};

@$core.Deprecated('Use songDescriptor instead')
const Song_RemoveRequest$json = {
  '1': 'RemoveRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 12, '10': 'id'},
  ],
};

@$core.Deprecated('Use songDescriptor instead')
const Song_RemoveResponse$json = {
  '1': 'RemoveResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 2, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `Song`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songDescriptor = $convert.base64Decode(
    'CgRTb25nEg4KAmlkGAEgAigMUgJpZBISCgRuYW1lGAIgAigJUgRuYW1lEhIKBHNpemUYAyACKA'
    '1SBHNpemUSGgoIZHVyYXRpb24YBSABKA1SCGR1cmF0aW9uEhQKBWFsYnVtGAYgAigJUgVhbGJ1'
    'bRIWCgZhcnRpc3QYByACKAlSBmFydGlzdBoiCgpHZXRSZXF1ZXN0EhQKBWluZGV4GAEgAigNUg'
    'VpbmRleBpQCgtHZXRSZXNwb25zZRIiCgRsaXN0GAEgAygLMg4ucHJvdG9jb2wuU29uZ1IEbGlz'
    'dBIdCgpuZXh0X2luZGV4GAIgAigNUgluZXh0SW5kZXgaMAoKQWRkUmVxdWVzdBIiCgRzb25nGA'
    'EgAigLMg4ucHJvdG9jb2wuU29uZ1IEc29uZxqBAQoLQWRkUmVzcG9uc2USPgoOcHJlcGFyZV9z'
    'dGF0dXMYASACKA4yFy5wcm90b2NvbC5QcmVwYXJlU3RhdHVzUg1wcmVwYXJlU3RhdHVzEjIKFW'
    'V4cGVjdGVkX3NsaWNlX2xlbmd0aBgCIAEoDVITZXhwZWN0ZWRTbGljZUxlbmd0aBqFAQoMUmVw'
    'b3J0UmVzdWx0EjQKBGNvZGUYASACKA4yIC5wcm90b2NvbC5Tb25nLlJlcG9ydFJlc3VsdC5Db2'
    'RlUgRjb2RlEg4KAmlkGAIgASgMUgJpZCIvCgRDb2RlEgsKB1NVQ0NFU1MQABIQCgxJRF9OT1Rf'
    'TUFUQ0gQARIICgRGQUlMEAIaHwoNUmVtb3ZlUmVxdWVzdBIOCgJpZBgBIAIoDFICaWQaKgoOUm'
    'Vtb3ZlUmVzcG9uc2USGAoHc3VjY2VzcxgBIAIoCFIHc3VjY2Vzcw==');

@$core.Deprecated('Use mediaFileDescriptor instead')
const MediaFile$json = {
  '1': 'MediaFile',
  '3': [MediaFile_Summary$json, MediaFile_List$json, MediaFile_Identifier$json],
  '4': [MediaFile_Type$json],
};

@$core.Deprecated('Use mediaFileDescriptor instead')
const MediaFile_Summary$json = {
  '1': 'Summary',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.MediaFile.Summary.Item',
      '10': 'list'
    },
  ],
  '3': [MediaFile_Summary_Item$json],
};

@$core.Deprecated('Use mediaFileDescriptor instead')
const MediaFile_Summary_Item$json = {
  '1': 'Item',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.MediaFile.Type',
      '10': 'type'
    },
    {'1': 'count', '3': 2, '4': 2, '5': 13, '10': 'count'},
  ],
};

@$core.Deprecated('Use mediaFileDescriptor instead')
const MediaFile_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.MediaFile',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use mediaFileDescriptor instead')
const MediaFile_Identifier$json = {
  '1': 'Identifier',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'thumbnail', '3': 2, '4': 2, '5': 8, '10': 'thumbnail'},
  ],
  '3': [MediaFile_Identifier_List$json],
};

@$core.Deprecated('Use mediaFileDescriptor instead')
const MediaFile_Identifier_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.MediaFile.Identifier',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use mediaFileDescriptor instead')
const MediaFile_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'JPEG', '2': 0},
    {'1': 'PNG', '2': 1},
    {'1': 'MP4', '2': 2},
    {'1': 'QUICKTIME', '2': 3},
    {'1': 'PCM', '2': 4},
    {'1': 'OPUS', '2': 5},
    {'1': 'SBC', '2': 6},
    {'1': 'MSBC', '2': 7},
  ],
};

/// Descriptor for `MediaFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mediaFileDescriptor = $convert.base64Decode(
    'CglNZWRpYUZpbGUaiwEKB1N1bW1hcnkSNAoEbGlzdBgBIAMoCzIgLnByb3RvY29sLk1lZGlhRm'
    'lsZS5TdW1tYXJ5Lkl0ZW1SBGxpc3QaSgoESXRlbRIsCgR0eXBlGAEgAigOMhgucHJvdG9jb2wu'
    'TWVkaWFGaWxlLlR5cGVSBHR5cGUSFAoFY291bnQYAiACKA1SBWNvdW50Gi8KBExpc3QSJwoEbG'
    'lzdBgBIAMoCzITLnByb3RvY29sLk1lZGlhRmlsZVIEbGlzdBp2CgpJZGVudGlmaWVyEg4KAmlk'
    'GAEgAigJUgJpZBIcCgl0aHVtYm5haWwYAiACKAhSCXRodW1ibmFpbBo6CgRMaXN0EjIKBGxpc3'
    'QYASADKAsyHi5wcm90b2NvbC5NZWRpYUZpbGUuSWRlbnRpZmllclIEbGlzdCJXCgRUeXBlEggK'
    'BEpQRUcQABIHCgNQTkcQARIHCgNNUDQQAhINCglRVUlDS1RJTUUQAxIHCgNQQ00QBBIICgRPUF'
    'VTEAUSBwoDU0JDEAYSCAoETVNCQxAH');

@$core.Deprecated('Use recordRequestDescriptor instead')
const RecordRequest$json = {
  '1': 'RecordRequest',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.RecordType',
      '10': 'type'
    },
    {'1': 'action', '3': 2, '4': 2, '5': 13, '10': 'action'},
  ],
};

/// Descriptor for `RecordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordRequestDescriptor = $convert.base64Decode(
    'Cg1SZWNvcmRSZXF1ZXN0EigKBHR5cGUYASACKA4yFC5wcm90b2NvbC5SZWNvcmRUeXBlUgR0eX'
    'BlEhYKBmFjdGlvbhgCIAIoDVIGYWN0aW9u');

@$core.Deprecated('Use recordResponseDescriptor instead')
const RecordResponse$json = {
  '1': 'RecordResponse',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 13, '10': 'code'},
    {
      '1': 'media_file_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.MediaFile.Identifier',
      '10': 'mediaFileId'
    },
    {'1': 'duration', '3': 3, '4': 1, '5': 13, '10': 'duration'},
  ],
};

/// Descriptor for `RecordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordResponseDescriptor = $convert.base64Decode(
    'Cg5SZWNvcmRSZXNwb25zZRISCgRjb2RlGAEgAigNUgRjb2RlEkIKDW1lZGlhX2ZpbGVfaWQYAi'
    'ABKAsyHi5wcm90b2NvbC5NZWRpYUZpbGUuSWRlbnRpZmllclILbWVkaWFGaWxlSWQSGgoIZHVy'
    'YXRpb24YAyABKA1SCGR1cmF0aW9u');

@$core.Deprecated('Use recordStatusDescriptor instead')
const RecordStatus$json = {
  '1': 'RecordStatus',
  '2': [
    {
      '1': 'duration',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.LimitValue',
      '10': 'duration'
    },
    {
      '1': 'size',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.LimitValue',
      '10': 'size'
    },
    {
      '1': 'extra_data',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.RecordStatus.ExtraData',
      '10': 'extraData'
    },
  ],
  '3': [RecordStatus_ExtraData$json],
};

@$core.Deprecated('Use recordStatusDescriptor instead')
const RecordStatus_ExtraData$json = {
  '1': 'ExtraData',
  '2': [
    {
      '1': 'media_file',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.MediaFile',
      '10': 'mediaFile'
    },
    {'1': 'status', '3': 2, '4': 2, '5': 13, '10': 'status'},
  ],
};

/// Descriptor for `RecordStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordStatusDescriptor = $convert.base64Decode(
    'CgxSZWNvcmRTdGF0dXMSMAoIZHVyYXRpb24YASACKAsyFC5wcm90b2NvbC5MaW1pdFZhbHVlUg'
    'hkdXJhdGlvbhIoCgRzaXplGAIgASgLMhQucHJvdG9jb2wuTGltaXRWYWx1ZVIEc2l6ZRI/Cgpl'
    'eHRyYV9kYXRhGAMgASgLMiAucHJvdG9jb2wuUmVjb3JkU3RhdHVzLkV4dHJhRGF0YVIJZXh0cm'
    'FEYXRhGlcKCUV4dHJhRGF0YRIyCgptZWRpYV9maWxlGAEgAigLMhMucHJvdG9jb2wuTWVkaWFG'
    'aWxlUgltZWRpYUZpbGUSFgoGc3RhdHVzGAIgAigNUgZzdGF0dXM=');
