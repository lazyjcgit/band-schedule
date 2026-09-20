// This is a generated file - do not edit.
//
// Generated from wear_media.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RecordType extends $pb.ProtobufEnum {
  static const RecordType RECORD_NORMAL =
      RecordType._(0, _omitEnumNames ? '' : 'RECORD_NORMAL');
  static const RecordType RECORD_REALTIME =
      RecordType._(1, _omitEnumNames ? '' : 'RECORD_REALTIME');
  static const RecordType RECORD_MUSIC =
      RecordType._(2, _omitEnumNames ? '' : 'RECORD_MUSIC');
  static const RecordType RECORD_TRANSLATION =
      RecordType._(3, _omitEnumNames ? '' : 'RECORD_TRANSLATION');
  static const RecordType RECORD_TRANSLATION_FACE =
      RecordType._(4, _omitEnumNames ? '' : 'RECORD_TRANSLATION_FACE');

  static const $core.List<RecordType> values = <RecordType>[
    RECORD_NORMAL,
    RECORD_REALTIME,
    RECORD_MUSIC,
    RECORD_TRANSLATION,
    RECORD_TRANSLATION_FACE,
  ];

  static final $core.List<RecordType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static RecordType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RecordType._(super.value, super.name);
}

class Media_MediaID extends $pb.ProtobufEnum {
  static const Media_MediaID WEAR_REQUEST =
      Media_MediaID._(0, _omitEnumNames ? '' : 'WEAR_REQUEST');
  static const Media_MediaID SYNC_PLAYER_INFO =
      Media_MediaID._(1, _omitEnumNames ? '' : 'SYNC_PLAYER_INFO');
  static const Media_MediaID CONTROL_PLAYER =
      Media_MediaID._(2, _omitEnumNames ? '' : 'CONTROL_PLAYER');
  static const Media_MediaID GET_SONG_SUMMARY =
      Media_MediaID._(3, _omitEnumNames ? '' : 'GET_SONG_SUMMARY');
  static const Media_MediaID ADD_SONGLIST =
      Media_MediaID._(4, _omitEnumNames ? '' : 'ADD_SONGLIST');
  static const Media_MediaID REMOVE_SONGLIST =
      Media_MediaID._(5, _omitEnumNames ? '' : 'REMOVE_SONGLIST');
  static const Media_MediaID RENAME_SONGLIST =
      Media_MediaID._(6, _omitEnumNames ? '' : 'RENAME_SONGLIST');
  static const Media_MediaID QUERY_SONG_FOR_SONGLIST =
      Media_MediaID._(7, _omitEnumNames ? '' : 'QUERY_SONG_FOR_SONGLIST');
  static const Media_MediaID ADD_SONG_TO_SONGLIST =
      Media_MediaID._(8, _omitEnumNames ? '' : 'ADD_SONG_TO_SONGLIST');
  static const Media_MediaID REMOVE_SONG_FROM_SONGLIST =
      Media_MediaID._(9, _omitEnumNames ? '' : 'REMOVE_SONG_FROM_SONGLIST');
  static const Media_MediaID GET_SONG =
      Media_MediaID._(10, _omitEnumNames ? '' : 'GET_SONG');
  static const Media_MediaID ADD_SONG =
      Media_MediaID._(11, _omitEnumNames ? '' : 'ADD_SONG');
  static const Media_MediaID REPORT_SONG_RESULT =
      Media_MediaID._(12, _omitEnumNames ? '' : 'REPORT_SONG_RESULT');
  static const Media_MediaID REMOVE_SONG =
      Media_MediaID._(13, _omitEnumNames ? '' : 'REMOVE_SONG');
  static const Media_MediaID GET_MEDIA_FILE_SUMMARY =
      Media_MediaID._(14, _omitEnumNames ? '' : 'GET_MEDIA_FILE_SUMMARY');
  static const Media_MediaID SYNC_MEDIA_FILE_LIST =
      Media_MediaID._(15, _omitEnumNames ? '' : 'SYNC_MEDIA_FILE_LIST');
  static const Media_MediaID REPORT_MEDIA_FILE_LIST =
      Media_MediaID._(16, _omitEnumNames ? '' : 'REPORT_MEDIA_FILE_LIST');
  static const Media_MediaID REQUEST_MEDIA_FILE =
      Media_MediaID._(17, _omitEnumNames ? '' : 'REQUEST_MEDIA_FILE');
  static const Media_MediaID REQUEST_MEDIA_FILE_LIST =
      Media_MediaID._(18, _omitEnumNames ? '' : 'REQUEST_MEDIA_FILE_LIST');
  static const Media_MediaID CONFIRM_MEDIA_FILE =
      Media_MediaID._(19, _omitEnumNames ? '' : 'CONFIRM_MEDIA_FILE');
  static const Media_MediaID REQUEST_RECORD =
      Media_MediaID._(20, _omitEnumNames ? '' : 'REQUEST_RECORD');
  static const Media_MediaID GET_RECORD_STATUS =
      Media_MediaID._(21, _omitEnumNames ? '' : 'GET_RECORD_STATUS');
  static const Media_MediaID REPORT_RECORD_STATUS =
      Media_MediaID._(22, _omitEnumNames ? '' : 'REPORT_RECORD_STATUS');

  static const $core.List<Media_MediaID> values = <Media_MediaID>[
    WEAR_REQUEST,
    SYNC_PLAYER_INFO,
    CONTROL_PLAYER,
    GET_SONG_SUMMARY,
    ADD_SONGLIST,
    REMOVE_SONGLIST,
    RENAME_SONGLIST,
    QUERY_SONG_FOR_SONGLIST,
    ADD_SONG_TO_SONGLIST,
    REMOVE_SONG_FROM_SONGLIST,
    GET_SONG,
    ADD_SONG,
    REPORT_SONG_RESULT,
    REMOVE_SONG,
    GET_MEDIA_FILE_SUMMARY,
    SYNC_MEDIA_FILE_LIST,
    REPORT_MEDIA_FILE_LIST,
    REQUEST_MEDIA_FILE,
    REQUEST_MEDIA_FILE_LIST,
    CONFIRM_MEDIA_FILE,
    REQUEST_RECORD,
    GET_RECORD_STATUS,
    REPORT_RECORD_STATUS,
  ];

  static final $core.List<Media_MediaID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 22);
  static Media_MediaID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Media_MediaID._(super.value, super.name);
}

class PlayerInfo_State extends $pb.ProtobufEnum {
  static const PlayerInfo_State NONE =
      PlayerInfo_State._(0, _omitEnumNames ? '' : 'NONE');
  static const PlayerInfo_State PLAYING =
      PlayerInfo_State._(1, _omitEnumNames ? '' : 'PLAYING');
  static const PlayerInfo_State PAUSE =
      PlayerInfo_State._(2, _omitEnumNames ? '' : 'PAUSE');
  static const PlayerInfo_State STOP =
      PlayerInfo_State._(3, _omitEnumNames ? '' : 'STOP');
  static const PlayerInfo_State NO_PERMISSION =
      PlayerInfo_State._(10, _omitEnumNames ? '' : 'NO_PERMISSION');

  static const $core.List<PlayerInfo_State> values = <PlayerInfo_State>[
    NONE,
    PLAYING,
    PAUSE,
    STOP,
    NO_PERMISSION,
  ];

  static final $core.Map<$core.int, PlayerInfo_State> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PlayerInfo_State? valueOf($core.int value) => _byValue[value];

  const PlayerInfo_State._(super.value, super.name);
}

class PlayerControl_Command extends $pb.ProtobufEnum {
  static const PlayerControl_Command PLAY =
      PlayerControl_Command._(0, _omitEnumNames ? '' : 'PLAY');
  static const PlayerControl_Command PAUSE =
      PlayerControl_Command._(1, _omitEnumNames ? '' : 'PAUSE');
  static const PlayerControl_Command STOP =
      PlayerControl_Command._(2, _omitEnumNames ? '' : 'STOP');
  static const PlayerControl_Command PREV =
      PlayerControl_Command._(3, _omitEnumNames ? '' : 'PREV');
  static const PlayerControl_Command NEXT =
      PlayerControl_Command._(4, _omitEnumNames ? '' : 'NEXT');
  static const PlayerControl_Command ADJUST_VOLUME =
      PlayerControl_Command._(5, _omitEnumNames ? '' : 'ADJUST_VOLUME');

  static const $core.List<PlayerControl_Command> values =
      <PlayerControl_Command>[
    PLAY,
    PAUSE,
    STOP,
    PREV,
    NEXT,
    ADJUST_VOLUME,
  ];

  static final $core.List<PlayerControl_Command?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static PlayerControl_Command? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PlayerControl_Command._(super.value, super.name);
}

class Songlist_Request_Cmd extends $pb.ProtobufEnum {
  static const Songlist_Request_Cmd ADD =
      Songlist_Request_Cmd._(1, _omitEnumNames ? '' : 'ADD');
  static const Songlist_Request_Cmd REMOVE =
      Songlist_Request_Cmd._(2, _omitEnumNames ? '' : 'REMOVE');
  static const Songlist_Request_Cmd RENAME =
      Songlist_Request_Cmd._(3, _omitEnumNames ? '' : 'RENAME');
  static const Songlist_Request_Cmd QUERY_SONG =
      Songlist_Request_Cmd._(4, _omitEnumNames ? '' : 'QUERY_SONG');
  static const Songlist_Request_Cmd ADD_SONG =
      Songlist_Request_Cmd._(5, _omitEnumNames ? '' : 'ADD_SONG');
  static const Songlist_Request_Cmd REMOVE_SONG =
      Songlist_Request_Cmd._(6, _omitEnumNames ? '' : 'REMOVE_SONG');

  static const $core.List<Songlist_Request_Cmd> values = <Songlist_Request_Cmd>[
    ADD,
    REMOVE,
    RENAME,
    QUERY_SONG,
    ADD_SONG,
    REMOVE_SONG,
  ];

  static final $core.List<Songlist_Request_Cmd?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static Songlist_Request_Cmd? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Songlist_Request_Cmd._(super.value, super.name);
}

class Songlist_Response_Code extends $pb.ProtobufEnum {
  static const Songlist_Response_Code NO_ERROR =
      Songlist_Response_Code._(0, _omitEnumNames ? '' : 'NO_ERROR');
  static const Songlist_Response_Code CMD_NOT_SUPPORT =
      Songlist_Response_Code._(1, _omitEnumNames ? '' : 'CMD_NOT_SUPPORT');
  static const Songlist_Response_Code EXCEED_LIMIT =
      Songlist_Response_Code._(2, _omitEnumNames ? '' : 'EXCEED_LIMIT');
  static const Songlist_Response_Code ID_EXIST =
      Songlist_Response_Code._(3, _omitEnumNames ? '' : 'ID_EXIST');
  static const Songlist_Response_Code ID_NOT_FOUND =
      Songlist_Response_Code._(4, _omitEnumNames ? '' : 'ID_NOT_FOUND');

  static const $core.List<Songlist_Response_Code> values =
      <Songlist_Response_Code>[
    NO_ERROR,
    CMD_NOT_SUPPORT,
    EXCEED_LIMIT,
    ID_EXIST,
    ID_NOT_FOUND,
  ];

  static final $core.List<Songlist_Response_Code?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static Songlist_Response_Code? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Songlist_Response_Code._(super.value, super.name);
}

class Song_ReportResult_Code extends $pb.ProtobufEnum {
  static const Song_ReportResult_Code SUCCESS =
      Song_ReportResult_Code._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const Song_ReportResult_Code ID_NOT_MATCH =
      Song_ReportResult_Code._(1, _omitEnumNames ? '' : 'ID_NOT_MATCH');
  static const Song_ReportResult_Code FAIL =
      Song_ReportResult_Code._(2, _omitEnumNames ? '' : 'FAIL');

  static const $core.List<Song_ReportResult_Code> values =
      <Song_ReportResult_Code>[
    SUCCESS,
    ID_NOT_MATCH,
    FAIL,
  ];

  static final $core.List<Song_ReportResult_Code?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Song_ReportResult_Code? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Song_ReportResult_Code._(super.value, super.name);
}

class MediaFile_Type extends $pb.ProtobufEnum {
  static const MediaFile_Type JPEG =
      MediaFile_Type._(0, _omitEnumNames ? '' : 'JPEG');
  static const MediaFile_Type PNG =
      MediaFile_Type._(1, _omitEnumNames ? '' : 'PNG');
  static const MediaFile_Type MP4 =
      MediaFile_Type._(2, _omitEnumNames ? '' : 'MP4');
  static const MediaFile_Type QUICKTIME =
      MediaFile_Type._(3, _omitEnumNames ? '' : 'QUICKTIME');
  static const MediaFile_Type PCM =
      MediaFile_Type._(4, _omitEnumNames ? '' : 'PCM');
  static const MediaFile_Type OPUS =
      MediaFile_Type._(5, _omitEnumNames ? '' : 'OPUS');
  static const MediaFile_Type SBC =
      MediaFile_Type._(6, _omitEnumNames ? '' : 'SBC');
  static const MediaFile_Type MSBC =
      MediaFile_Type._(7, _omitEnumNames ? '' : 'MSBC');

  static const $core.List<MediaFile_Type> values = <MediaFile_Type>[
    JPEG,
    PNG,
    MP4,
    QUICKTIME,
    PCM,
    OPUS,
    SBC,
    MSBC,
  ];

  static final $core.List<MediaFile_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static MediaFile_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MediaFile_Type._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
