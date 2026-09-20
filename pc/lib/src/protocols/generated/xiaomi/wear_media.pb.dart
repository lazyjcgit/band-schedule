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

import 'wear_common.pb.dart' as $0;
import 'wear_media.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_media.pbenum.dart';

enum Media_Payload {
  playerInfo,
  playerControl,
  songSummary,
  songlistRequest,
  songlistResponse,
  songGetRequest,
  songGetResponse,
  songAddRequest,
  songAddResponse,
  songReportResult,
  songRemoveRequest,
  songRemoveResponse,
  mediaFileSummary,
  mediaFileList,
  mediaFileIdentifier,
  mediaFileIdentifiers,
  recordRequest,
  recordResponse,
  recordStatus,
  notSet
}

class Media extends $pb.GeneratedMessage {
  factory Media({
    PlayerInfo? playerInfo,
    PlayerControl? playerControl,
    SongSummary? songSummary,
    Songlist_Request? songlistRequest,
    Songlist_Response? songlistResponse,
    Song_GetRequest? songGetRequest,
    Song_GetResponse? songGetResponse,
    Song_AddRequest? songAddRequest,
    Song_AddResponse? songAddResponse,
    Song_ReportResult? songReportResult,
    Song_RemoveRequest? songRemoveRequest,
    Song_RemoveResponse? songRemoveResponse,
    MediaFile_Summary? mediaFileSummary,
    MediaFile_List? mediaFileList,
    MediaFile_Identifier? mediaFileIdentifier,
    MediaFile_Identifier_List? mediaFileIdentifiers,
    RecordRequest? recordRequest,
    RecordResponse? recordResponse,
    RecordStatus? recordStatus,
  }) {
    final result = create();
    if (playerInfo != null) result.playerInfo = playerInfo;
    if (playerControl != null) result.playerControl = playerControl;
    if (songSummary != null) result.songSummary = songSummary;
    if (songlistRequest != null) result.songlistRequest = songlistRequest;
    if (songlistResponse != null) result.songlistResponse = songlistResponse;
    if (songGetRequest != null) result.songGetRequest = songGetRequest;
    if (songGetResponse != null) result.songGetResponse = songGetResponse;
    if (songAddRequest != null) result.songAddRequest = songAddRequest;
    if (songAddResponse != null) result.songAddResponse = songAddResponse;
    if (songReportResult != null) result.songReportResult = songReportResult;
    if (songRemoveRequest != null) result.songRemoveRequest = songRemoveRequest;
    if (songRemoveResponse != null)
      result.songRemoveResponse = songRemoveResponse;
    if (mediaFileSummary != null) result.mediaFileSummary = mediaFileSummary;
    if (mediaFileList != null) result.mediaFileList = mediaFileList;
    if (mediaFileIdentifier != null)
      result.mediaFileIdentifier = mediaFileIdentifier;
    if (mediaFileIdentifiers != null)
      result.mediaFileIdentifiers = mediaFileIdentifiers;
    if (recordRequest != null) result.recordRequest = recordRequest;
    if (recordResponse != null) result.recordResponse = recordResponse;
    if (recordStatus != null) result.recordStatus = recordStatus;
    return result;
  }

  Media._();

  factory Media.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Media.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Media_Payload> _Media_PayloadByTag = {
    1: Media_Payload.playerInfo,
    2: Media_Payload.playerControl,
    3: Media_Payload.songSummary,
    4: Media_Payload.songlistRequest,
    5: Media_Payload.songlistResponse,
    6: Media_Payload.songGetRequest,
    7: Media_Payload.songGetResponse,
    8: Media_Payload.songAddRequest,
    9: Media_Payload.songAddResponse,
    10: Media_Payload.songReportResult,
    11: Media_Payload.songRemoveRequest,
    12: Media_Payload.songRemoveResponse,
    13: Media_Payload.mediaFileSummary,
    14: Media_Payload.mediaFileList,
    15: Media_Payload.mediaFileIdentifier,
    16: Media_Payload.mediaFileIdentifiers,
    17: Media_Payload.recordRequest,
    18: Media_Payload.recordResponse,
    19: Media_Payload.recordStatus,
    0: Media_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Media',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19])
    ..aOM<PlayerInfo>(1, _omitFieldNames ? '' : 'playerInfo',
        subBuilder: PlayerInfo.create)
    ..aOM<PlayerControl>(2, _omitFieldNames ? '' : 'playerControl',
        subBuilder: PlayerControl.create)
    ..aOM<SongSummary>(3, _omitFieldNames ? '' : 'songSummary',
        subBuilder: SongSummary.create)
    ..aOM<Songlist_Request>(4, _omitFieldNames ? '' : 'songlistRequest',
        subBuilder: Songlist_Request.create)
    ..aOM<Songlist_Response>(5, _omitFieldNames ? '' : 'songlistResponse',
        subBuilder: Songlist_Response.create)
    ..aOM<Song_GetRequest>(6, _omitFieldNames ? '' : 'songGetRequest',
        subBuilder: Song_GetRequest.create)
    ..aOM<Song_GetResponse>(7, _omitFieldNames ? '' : 'songGetResponse',
        subBuilder: Song_GetResponse.create)
    ..aOM<Song_AddRequest>(8, _omitFieldNames ? '' : 'songAddRequest',
        subBuilder: Song_AddRequest.create)
    ..aOM<Song_AddResponse>(9, _omitFieldNames ? '' : 'songAddResponse',
        subBuilder: Song_AddResponse.create)
    ..aOM<Song_ReportResult>(10, _omitFieldNames ? '' : 'songReportResult',
        subBuilder: Song_ReportResult.create)
    ..aOM<Song_RemoveRequest>(11, _omitFieldNames ? '' : 'songRemoveRequest',
        subBuilder: Song_RemoveRequest.create)
    ..aOM<Song_RemoveResponse>(12, _omitFieldNames ? '' : 'songRemoveResponse',
        subBuilder: Song_RemoveResponse.create)
    ..aOM<MediaFile_Summary>(13, _omitFieldNames ? '' : 'mediaFileSummary',
        subBuilder: MediaFile_Summary.create)
    ..aOM<MediaFile_List>(14, _omitFieldNames ? '' : 'mediaFileList',
        subBuilder: MediaFile_List.create)
    ..aOM<MediaFile_Identifier>(
        15, _omitFieldNames ? '' : 'mediaFileIdentifier',
        subBuilder: MediaFile_Identifier.create)
    ..aOM<MediaFile_Identifier_List>(
        16, _omitFieldNames ? '' : 'mediaFileIdentifiers',
        subBuilder: MediaFile_Identifier_List.create)
    ..aOM<RecordRequest>(17, _omitFieldNames ? '' : 'recordRequest',
        subBuilder: RecordRequest.create)
    ..aOM<RecordResponse>(18, _omitFieldNames ? '' : 'recordResponse',
        subBuilder: RecordResponse.create)
    ..aOM<RecordStatus>(19, _omitFieldNames ? '' : 'recordStatus',
        subBuilder: RecordStatus.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Media clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Media copyWith(void Function(Media) updates) =>
      super.copyWith((message) => updates(message as Media)) as Media;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Media create() => Media._();
  @$core.override
  Media createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Media getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Media>(create);
  static Media? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  Media_Payload whichPayload() => _Media_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PlayerInfo get playerInfo => $_getN(0);
  @$pb.TagNumber(1)
  set playerInfo(PlayerInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPlayerInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  PlayerInfo ensurePlayerInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  PlayerControl get playerControl => $_getN(1);
  @$pb.TagNumber(2)
  set playerControl(PlayerControl value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPlayerControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerControl() => $_clearField(2);
  @$pb.TagNumber(2)
  PlayerControl ensurePlayerControl() => $_ensure(1);

  @$pb.TagNumber(3)
  SongSummary get songSummary => $_getN(2);
  @$pb.TagNumber(3)
  set songSummary(SongSummary value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSongSummary() => $_has(2);
  @$pb.TagNumber(3)
  void clearSongSummary() => $_clearField(3);
  @$pb.TagNumber(3)
  SongSummary ensureSongSummary() => $_ensure(2);

  @$pb.TagNumber(4)
  Songlist_Request get songlistRequest => $_getN(3);
  @$pb.TagNumber(4)
  set songlistRequest(Songlist_Request value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSonglistRequest() => $_has(3);
  @$pb.TagNumber(4)
  void clearSonglistRequest() => $_clearField(4);
  @$pb.TagNumber(4)
  Songlist_Request ensureSonglistRequest() => $_ensure(3);

  @$pb.TagNumber(5)
  Songlist_Response get songlistResponse => $_getN(4);
  @$pb.TagNumber(5)
  set songlistResponse(Songlist_Response value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSonglistResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearSonglistResponse() => $_clearField(5);
  @$pb.TagNumber(5)
  Songlist_Response ensureSonglistResponse() => $_ensure(4);

  @$pb.TagNumber(6)
  Song_GetRequest get songGetRequest => $_getN(5);
  @$pb.TagNumber(6)
  set songGetRequest(Song_GetRequest value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSongGetRequest() => $_has(5);
  @$pb.TagNumber(6)
  void clearSongGetRequest() => $_clearField(6);
  @$pb.TagNumber(6)
  Song_GetRequest ensureSongGetRequest() => $_ensure(5);

  @$pb.TagNumber(7)
  Song_GetResponse get songGetResponse => $_getN(6);
  @$pb.TagNumber(7)
  set songGetResponse(Song_GetResponse value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSongGetResponse() => $_has(6);
  @$pb.TagNumber(7)
  void clearSongGetResponse() => $_clearField(7);
  @$pb.TagNumber(7)
  Song_GetResponse ensureSongGetResponse() => $_ensure(6);

  @$pb.TagNumber(8)
  Song_AddRequest get songAddRequest => $_getN(7);
  @$pb.TagNumber(8)
  set songAddRequest(Song_AddRequest value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasSongAddRequest() => $_has(7);
  @$pb.TagNumber(8)
  void clearSongAddRequest() => $_clearField(8);
  @$pb.TagNumber(8)
  Song_AddRequest ensureSongAddRequest() => $_ensure(7);

  @$pb.TagNumber(9)
  Song_AddResponse get songAddResponse => $_getN(8);
  @$pb.TagNumber(9)
  set songAddResponse(Song_AddResponse value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSongAddResponse() => $_has(8);
  @$pb.TagNumber(9)
  void clearSongAddResponse() => $_clearField(9);
  @$pb.TagNumber(9)
  Song_AddResponse ensureSongAddResponse() => $_ensure(8);

  @$pb.TagNumber(10)
  Song_ReportResult get songReportResult => $_getN(9);
  @$pb.TagNumber(10)
  set songReportResult(Song_ReportResult value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasSongReportResult() => $_has(9);
  @$pb.TagNumber(10)
  void clearSongReportResult() => $_clearField(10);
  @$pb.TagNumber(10)
  Song_ReportResult ensureSongReportResult() => $_ensure(9);

  @$pb.TagNumber(11)
  Song_RemoveRequest get songRemoveRequest => $_getN(10);
  @$pb.TagNumber(11)
  set songRemoveRequest(Song_RemoveRequest value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSongRemoveRequest() => $_has(10);
  @$pb.TagNumber(11)
  void clearSongRemoveRequest() => $_clearField(11);
  @$pb.TagNumber(11)
  Song_RemoveRequest ensureSongRemoveRequest() => $_ensure(10);

  @$pb.TagNumber(12)
  Song_RemoveResponse get songRemoveResponse => $_getN(11);
  @$pb.TagNumber(12)
  set songRemoveResponse(Song_RemoveResponse value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSongRemoveResponse() => $_has(11);
  @$pb.TagNumber(12)
  void clearSongRemoveResponse() => $_clearField(12);
  @$pb.TagNumber(12)
  Song_RemoveResponse ensureSongRemoveResponse() => $_ensure(11);

  @$pb.TagNumber(13)
  MediaFile_Summary get mediaFileSummary => $_getN(12);
  @$pb.TagNumber(13)
  set mediaFileSummary(MediaFile_Summary value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasMediaFileSummary() => $_has(12);
  @$pb.TagNumber(13)
  void clearMediaFileSummary() => $_clearField(13);
  @$pb.TagNumber(13)
  MediaFile_Summary ensureMediaFileSummary() => $_ensure(12);

  @$pb.TagNumber(14)
  MediaFile_List get mediaFileList => $_getN(13);
  @$pb.TagNumber(14)
  set mediaFileList(MediaFile_List value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasMediaFileList() => $_has(13);
  @$pb.TagNumber(14)
  void clearMediaFileList() => $_clearField(14);
  @$pb.TagNumber(14)
  MediaFile_List ensureMediaFileList() => $_ensure(13);

  @$pb.TagNumber(15)
  MediaFile_Identifier get mediaFileIdentifier => $_getN(14);
  @$pb.TagNumber(15)
  set mediaFileIdentifier(MediaFile_Identifier value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasMediaFileIdentifier() => $_has(14);
  @$pb.TagNumber(15)
  void clearMediaFileIdentifier() => $_clearField(15);
  @$pb.TagNumber(15)
  MediaFile_Identifier ensureMediaFileIdentifier() => $_ensure(14);

  @$pb.TagNumber(16)
  MediaFile_Identifier_List get mediaFileIdentifiers => $_getN(15);
  @$pb.TagNumber(16)
  set mediaFileIdentifiers(MediaFile_Identifier_List value) =>
      $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasMediaFileIdentifiers() => $_has(15);
  @$pb.TagNumber(16)
  void clearMediaFileIdentifiers() => $_clearField(16);
  @$pb.TagNumber(16)
  MediaFile_Identifier_List ensureMediaFileIdentifiers() => $_ensure(15);

  @$pb.TagNumber(17)
  RecordRequest get recordRequest => $_getN(16);
  @$pb.TagNumber(17)
  set recordRequest(RecordRequest value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasRecordRequest() => $_has(16);
  @$pb.TagNumber(17)
  void clearRecordRequest() => $_clearField(17);
  @$pb.TagNumber(17)
  RecordRequest ensureRecordRequest() => $_ensure(16);

  @$pb.TagNumber(18)
  RecordResponse get recordResponse => $_getN(17);
  @$pb.TagNumber(18)
  set recordResponse(RecordResponse value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasRecordResponse() => $_has(17);
  @$pb.TagNumber(18)
  void clearRecordResponse() => $_clearField(18);
  @$pb.TagNumber(18)
  RecordResponse ensureRecordResponse() => $_ensure(17);

  @$pb.TagNumber(19)
  RecordStatus get recordStatus => $_getN(18);
  @$pb.TagNumber(19)
  set recordStatus(RecordStatus value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasRecordStatus() => $_has(18);
  @$pb.TagNumber(19)
  void clearRecordStatus() => $_clearField(19);
  @$pb.TagNumber(19)
  RecordStatus ensureRecordStatus() => $_ensure(18);
}

class PlayerInfo extends $pb.GeneratedMessage {
  factory PlayerInfo({
    PlayerInfo_State? state,
    $core.int? volume,
    $core.String? playerName,
    $core.String? songTitle,
    $core.String? songArtist,
    $core.int? currentPosition,
    $core.int? duration,
  }) {
    final result = create();
    if (state != null) result.state = state;
    if (volume != null) result.volume = volume;
    if (playerName != null) result.playerName = playerName;
    if (songTitle != null) result.songTitle = songTitle;
    if (songArtist != null) result.songArtist = songArtist;
    if (currentPosition != null) result.currentPosition = currentPosition;
    if (duration != null) result.duration = duration;
    return result;
  }

  PlayerInfo._();

  factory PlayerInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PlayerInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PlayerInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<PlayerInfo_State>(1, _omitFieldNames ? '' : 'state',
        fieldType: $pb.PbFieldType.QE, enumValues: PlayerInfo_State.values)
    ..aI(2, _omitFieldNames ? '' : 'volume', fieldType: $pb.PbFieldType.OU3)
    ..aQS(3, _omitFieldNames ? '' : 'playerName')
    ..aQS(4, _omitFieldNames ? '' : 'songTitle')
    ..aQS(5, _omitFieldNames ? '' : 'songArtist')
    ..aI(6, _omitFieldNames ? '' : 'currentPosition',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlayerInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlayerInfo copyWith(void Function(PlayerInfo) updates) =>
      super.copyWith((message) => updates(message as PlayerInfo)) as PlayerInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerInfo create() => PlayerInfo._();
  @$core.override
  PlayerInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PlayerInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PlayerInfo>(create);
  static PlayerInfo? _defaultInstance;

  @$pb.TagNumber(1)
  PlayerInfo_State get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(PlayerInfo_State value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get volume => $_getIZ(1);
  @$pb.TagNumber(2)
  set volume($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVolume() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolume() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get playerName => $_getSZ(2);
  @$pb.TagNumber(3)
  set playerName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPlayerName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayerName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get songTitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set songTitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSongTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSongTitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get songArtist => $_getSZ(4);
  @$pb.TagNumber(5)
  set songArtist($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSongArtist() => $_has(4);
  @$pb.TagNumber(5)
  void clearSongArtist() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get currentPosition => $_getIZ(5);
  @$pb.TagNumber(6)
  set currentPosition($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCurrentPosition() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentPosition() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get duration => $_getIZ(6);
  @$pb.TagNumber(7)
  set duration($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDuration() => $_has(6);
  @$pb.TagNumber(7)
  void clearDuration() => $_clearField(7);
}

class PlayerControl extends $pb.GeneratedMessage {
  factory PlayerControl({
    PlayerControl_Command? command,
    $core.int? volume,
  }) {
    final result = create();
    if (command != null) result.command = command;
    if (volume != null) result.volume = volume;
    return result;
  }

  PlayerControl._();

  factory PlayerControl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PlayerControl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PlayerControl',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<PlayerControl_Command>(1, _omitFieldNames ? '' : 'command',
        fieldType: $pb.PbFieldType.QE, enumValues: PlayerControl_Command.values)
    ..aI(2, _omitFieldNames ? '' : 'volume', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlayerControl clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlayerControl copyWith(void Function(PlayerControl) updates) =>
      super.copyWith((message) => updates(message as PlayerControl))
          as PlayerControl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerControl create() => PlayerControl._();
  @$core.override
  PlayerControl createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PlayerControl getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PlayerControl>(create);
  static PlayerControl? _defaultInstance;

  @$pb.TagNumber(1)
  PlayerControl_Command get command => $_getN(0);
  @$pb.TagNumber(1)
  set command(PlayerControl_Command value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommand() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get volume => $_getIZ(1);
  @$pb.TagNumber(2)
  set volume($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVolume() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolume() => $_clearField(2);
}

class SongSummary extends $pb.GeneratedMessage {
  factory SongSummary({
    $core.int? supportMediaFormat,
    $core.int? songCount,
    $core.int? songlistLimit,
    $core.Iterable<Songlist>? list,
  }) {
    final result = create();
    if (supportMediaFormat != null)
      result.supportMediaFormat = supportMediaFormat;
    if (songCount != null) result.songCount = songCount;
    if (songlistLimit != null) result.songlistLimit = songlistLimit;
    if (list != null) result.list.addAll(list);
    return result;
  }

  SongSummary._();

  factory SongSummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SongSummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SongSummary',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'supportMediaFormat',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'songCount', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'songlistLimit',
        fieldType: $pb.PbFieldType.QU3)
    ..pPM<Songlist>(4, _omitFieldNames ? '' : 'list',
        subBuilder: Songlist.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SongSummary clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SongSummary copyWith(void Function(SongSummary) updates) =>
      super.copyWith((message) => updates(message as SongSummary))
          as SongSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SongSummary create() => SongSummary._();
  @$core.override
  SongSummary createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SongSummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SongSummary>(create);
  static SongSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get supportMediaFormat => $_getIZ(0);
  @$pb.TagNumber(1)
  set supportMediaFormat($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSupportMediaFormat() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupportMediaFormat() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get songCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set songCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSongCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get songlistLimit => $_getIZ(2);
  @$pb.TagNumber(3)
  set songlistLimit($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSonglistLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearSonglistLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<Songlist> get list => $_getList(3);
}

class Songlist_Request extends $pb.GeneratedMessage {
  factory Songlist_Request({
    Songlist_Request_Cmd? cmd,
    $core.int? id,
    $core.String? name,
    $core.List<$core.int>? songIds,
  }) {
    final result = create();
    if (cmd != null) result.cmd = cmd;
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (songIds != null) result.songIds = songIds;
    return result;
  }

  Songlist_Request._();

  factory Songlist_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Songlist_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Songlist.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<Songlist_Request_Cmd>(1, _omitFieldNames ? '' : 'cmd',
        fieldType: $pb.PbFieldType.QE, enumValues: Songlist_Request_Cmd.values)
    ..aI(2, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aQS(3, _omitFieldNames ? '' : 'name')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'songIds', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Songlist_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Songlist_Request copyWith(void Function(Songlist_Request) updates) =>
      super.copyWith((message) => updates(message as Songlist_Request))
          as Songlist_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Songlist_Request create() => Songlist_Request._();
  @$core.override
  Songlist_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Songlist_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Songlist_Request>(create);
  static Songlist_Request? _defaultInstance;

  @$pb.TagNumber(1)
  Songlist_Request_Cmd get cmd => $_getN(0);
  @$pb.TagNumber(1)
  set cmd(Songlist_Request_Cmd value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCmd() => $_has(0);
  @$pb.TagNumber(1)
  void clearCmd() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get songIds => $_getN(3);
  @$pb.TagNumber(4)
  set songIds($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSongIds() => $_has(3);
  @$pb.TagNumber(4)
  void clearSongIds() => $_clearField(4);
}

class Songlist_Response extends $pb.GeneratedMessage {
  factory Songlist_Response({
    Songlist_Response_Code? code,
    $core.List<$core.int>? songIds,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (songIds != null) result.songIds = songIds;
    return result;
  }

  Songlist_Response._();

  factory Songlist_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Songlist_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Songlist.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<Songlist_Response_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE,
        enumValues: Songlist_Response_Code.values)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'songIds', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Songlist_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Songlist_Response copyWith(void Function(Songlist_Response) updates) =>
      super.copyWith((message) => updates(message as Songlist_Response))
          as Songlist_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Songlist_Response create() => Songlist_Response._();
  @$core.override
  Songlist_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Songlist_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Songlist_Response>(create);
  static Songlist_Response? _defaultInstance;

  @$pb.TagNumber(1)
  Songlist_Response_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(Songlist_Response_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get songIds => $_getN(1);
  @$pb.TagNumber(2)
  set songIds($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSongIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongIds() => $_clearField(2);
}

class Songlist extends $pb.GeneratedMessage {
  factory Songlist({
    $core.int? id,
    $core.String? name,
    $core.int? songCount,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (songCount != null) result.songCount = songCount;
    return result;
  }

  Songlist._();

  factory Songlist.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Songlist.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Songlist',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..aI(3, _omitFieldNames ? '' : 'songCount', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Songlist clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Songlist copyWith(void Function(Songlist) updates) =>
      super.copyWith((message) => updates(message as Songlist)) as Songlist;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Songlist create() => Songlist._();
  @$core.override
  Songlist createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Songlist getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Songlist>(create);
  static Songlist? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get songCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set songCount($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSongCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearSongCount() => $_clearField(3);
}

class Song_GetRequest extends $pb.GeneratedMessage {
  factory Song_GetRequest({
    $core.int? index,
  }) {
    final result = create();
    if (index != null) result.index = index;
    return result;
  }

  Song_GetRequest._();

  factory Song_GetRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Song_GetRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Song.GetRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'index', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_GetRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_GetRequest copyWith(void Function(Song_GetRequest) updates) =>
      super.copyWith((message) => updates(message as Song_GetRequest))
          as Song_GetRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Song_GetRequest create() => Song_GetRequest._();
  @$core.override
  Song_GetRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Song_GetRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Song_GetRequest>(create);
  static Song_GetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get index => $_getIZ(0);
  @$pb.TagNumber(1)
  set index($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => $_clearField(1);
}

class Song_GetResponse extends $pb.GeneratedMessage {
  factory Song_GetResponse({
    $core.Iterable<Song>? list,
    $core.int? nextIndex,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (nextIndex != null) result.nextIndex = nextIndex;
    return result;
  }

  Song_GetResponse._();

  factory Song_GetResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Song_GetResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Song.GetResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Song>(1, _omitFieldNames ? '' : 'list', subBuilder: Song.create)
    ..aI(2, _omitFieldNames ? '' : 'nextIndex', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_GetResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_GetResponse copyWith(void Function(Song_GetResponse) updates) =>
      super.copyWith((message) => updates(message as Song_GetResponse))
          as Song_GetResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Song_GetResponse create() => Song_GetResponse._();
  @$core.override
  Song_GetResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Song_GetResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Song_GetResponse>(create);
  static Song_GetResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Song> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get nextIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set nextIndex($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextIndex() => $_clearField(2);
}

class Song_AddRequest extends $pb.GeneratedMessage {
  factory Song_AddRequest({
    Song? song,
  }) {
    final result = create();
    if (song != null) result.song = song;
    return result;
  }

  Song_AddRequest._();

  factory Song_AddRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Song_AddRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Song.AddRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<Song>(1, _omitFieldNames ? '' : 'song', subBuilder: Song.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_AddRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_AddRequest copyWith(void Function(Song_AddRequest) updates) =>
      super.copyWith((message) => updates(message as Song_AddRequest))
          as Song_AddRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Song_AddRequest create() => Song_AddRequest._();
  @$core.override
  Song_AddRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Song_AddRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Song_AddRequest>(create);
  static Song_AddRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song(Song value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => $_clearField(1);
  @$pb.TagNumber(1)
  Song ensureSong() => $_ensure(0);
}

class Song_AddResponse extends $pb.GeneratedMessage {
  factory Song_AddResponse({
    $0.PrepareStatus? prepareStatus,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (prepareStatus != null) result.prepareStatus = prepareStatus;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  Song_AddResponse._();

  factory Song_AddResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Song_AddResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Song.AddResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.PrepareStatus>(1, _omitFieldNames ? '' : 'prepareStatus',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.PrepareStatus.values)
    ..aI(2, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_AddResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_AddResponse copyWith(void Function(Song_AddResponse) updates) =>
      super.copyWith((message) => updates(message as Song_AddResponse))
          as Song_AddResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Song_AddResponse create() => Song_AddResponse._();
  @$core.override
  Song_AddResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Song_AddResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Song_AddResponse>(create);
  static Song_AddResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.PrepareStatus get prepareStatus => $_getN(0);
  @$pb.TagNumber(1)
  set prepareStatus($0.PrepareStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPrepareStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrepareStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get expectedSliceLength => $_getIZ(1);
  @$pb.TagNumber(2)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExpectedSliceLength() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpectedSliceLength() => $_clearField(2);
}

class Song_ReportResult extends $pb.GeneratedMessage {
  factory Song_ReportResult({
    Song_ReportResult_Code? code,
    $core.List<$core.int>? id,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (id != null) result.id = id;
    return result;
  }

  Song_ReportResult._();

  factory Song_ReportResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Song_ReportResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Song.ReportResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<Song_ReportResult_Code>(1, _omitFieldNames ? '' : 'code',
        fieldType: $pb.PbFieldType.QE,
        enumValues: Song_ReportResult_Code.values)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_ReportResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_ReportResult copyWith(void Function(Song_ReportResult) updates) =>
      super.copyWith((message) => updates(message as Song_ReportResult))
          as Song_ReportResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Song_ReportResult create() => Song_ReportResult._();
  @$core.override
  Song_ReportResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Song_ReportResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Song_ReportResult>(create);
  static Song_ReportResult? _defaultInstance;

  @$pb.TagNumber(1)
  Song_ReportResult_Code get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(Song_ReportResult_Code value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get id => $_getN(1);
  @$pb.TagNumber(2)
  set id($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
}

class Song_RemoveRequest extends $pb.GeneratedMessage {
  factory Song_RemoveRequest({
    $core.List<$core.int>? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  Song_RemoveRequest._();

  factory Song_RemoveRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Song_RemoveRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Song.RemoveRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_RemoveRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_RemoveRequest copyWith(void Function(Song_RemoveRequest) updates) =>
      super.copyWith((message) => updates(message as Song_RemoveRequest))
          as Song_RemoveRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Song_RemoveRequest create() => Song_RemoveRequest._();
  @$core.override
  Song_RemoveRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Song_RemoveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Song_RemoveRequest>(create);
  static Song_RemoveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class Song_RemoveResponse extends $pb.GeneratedMessage {
  factory Song_RemoveResponse({
    $core.bool? success,
  }) {
    final result = create();
    if (success != null) result.success = success;
    return result;
  }

  Song_RemoveResponse._();

  factory Song_RemoveResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Song_RemoveResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Song.RemoveResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'success', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_RemoveResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song_RemoveResponse copyWith(void Function(Song_RemoveResponse) updates) =>
      super.copyWith((message) => updates(message as Song_RemoveResponse))
          as Song_RemoveResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Song_RemoveResponse create() => Song_RemoveResponse._();
  @$core.override
  Song_RemoveResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Song_RemoveResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Song_RemoveResponse>(create);
  static Song_RemoveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

class Song extends $pb.GeneratedMessage {
  factory Song({
    $core.List<$core.int>? id,
    $core.String? name,
    $core.int? size,
    $core.int? duration,
    $core.String? album,
    $core.String? artist,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (size != null) result.size = size;
    if (duration != null) result.duration = duration;
    if (album != null) result.album = album;
    if (artist != null) result.artist = artist;
    return result;
  }

  Song._();

  factory Song.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Song.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Song',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.QY)
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..aI(3, _omitFieldNames ? '' : 'size', fieldType: $pb.PbFieldType.QU3)
    ..aI(5, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.OU3)
    ..aQS(6, _omitFieldNames ? '' : 'album')
    ..aQS(7, _omitFieldNames ? '' : 'artist');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song copyWith(void Function(Song) updates) =>
      super.copyWith((message) => updates(message as Song)) as Song;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Song create() => Song._();
  @$core.override
  Song createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Song getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Song>(create);
  static Song? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(2);
  @$pb.TagNumber(3)
  set size($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => $_clearField(3);

  @$pb.TagNumber(5)
  $core.int get duration => $_getIZ(3);
  @$pb.TagNumber(5)
  set duration($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(5)
  $core.bool hasDuration() => $_has(3);
  @$pb.TagNumber(5)
  void clearDuration() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get album => $_getSZ(4);
  @$pb.TagNumber(6)
  set album($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasAlbum() => $_has(4);
  @$pb.TagNumber(6)
  void clearAlbum() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get artist => $_getSZ(5);
  @$pb.TagNumber(7)
  set artist($core.String value) => $_setString(5, value);
  @$pb.TagNumber(7)
  $core.bool hasArtist() => $_has(5);
  @$pb.TagNumber(7)
  void clearArtist() => $_clearField(7);
}

class MediaFile_Summary_Item extends $pb.GeneratedMessage {
  factory MediaFile_Summary_Item({
    MediaFile_Type? type,
    $core.int? count,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (count != null) result.count = count;
    return result;
  }

  MediaFile_Summary_Item._();

  factory MediaFile_Summary_Item.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaFile_Summary_Item.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaFile.Summary.Item',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<MediaFile_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: MediaFile_Type.values)
    ..aI(2, _omitFieldNames ? '' : 'count', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_Summary_Item clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_Summary_Item copyWith(
          void Function(MediaFile_Summary_Item) updates) =>
      super.copyWith((message) => updates(message as MediaFile_Summary_Item))
          as MediaFile_Summary_Item;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaFile_Summary_Item create() => MediaFile_Summary_Item._();
  @$core.override
  MediaFile_Summary_Item createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaFile_Summary_Item getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MediaFile_Summary_Item>(create);
  static MediaFile_Summary_Item? _defaultInstance;

  @$pb.TagNumber(1)
  MediaFile_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(MediaFile_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => $_clearField(2);
}

class MediaFile_Summary extends $pb.GeneratedMessage {
  factory MediaFile_Summary({
    $core.Iterable<MediaFile_Summary_Item>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  MediaFile_Summary._();

  factory MediaFile_Summary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaFile_Summary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaFile.Summary',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<MediaFile_Summary_Item>(1, _omitFieldNames ? '' : 'list',
        subBuilder: MediaFile_Summary_Item.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_Summary clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_Summary copyWith(void Function(MediaFile_Summary) updates) =>
      super.copyWith((message) => updates(message as MediaFile_Summary))
          as MediaFile_Summary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaFile_Summary create() => MediaFile_Summary._();
  @$core.override
  MediaFile_Summary createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaFile_Summary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MediaFile_Summary>(create);
  static MediaFile_Summary? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MediaFile_Summary_Item> get list => $_getList(0);
}

class MediaFile_List extends $pb.GeneratedMessage {
  factory MediaFile_List({
    $core.Iterable<MediaFile>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  MediaFile_List._();

  factory MediaFile_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaFile_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaFile.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<MediaFile>(1, _omitFieldNames ? '' : 'list',
        subBuilder: MediaFile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_List copyWith(void Function(MediaFile_List) updates) =>
      super.copyWith((message) => updates(message as MediaFile_List))
          as MediaFile_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaFile_List create() => MediaFile_List._();
  @$core.override
  MediaFile_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaFile_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MediaFile_List>(create);
  static MediaFile_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MediaFile> get list => $_getList(0);
}

class MediaFile_Identifier_List extends $pb.GeneratedMessage {
  factory MediaFile_Identifier_List({
    $core.Iterable<MediaFile_Identifier>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  MediaFile_Identifier_List._();

  factory MediaFile_Identifier_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaFile_Identifier_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaFile.Identifier.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<MediaFile_Identifier>(1, _omitFieldNames ? '' : 'list',
        subBuilder: MediaFile_Identifier.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_Identifier_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_Identifier_List copyWith(
          void Function(MediaFile_Identifier_List) updates) =>
      super.copyWith((message) => updates(message as MediaFile_Identifier_List))
          as MediaFile_Identifier_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaFile_Identifier_List create() => MediaFile_Identifier_List._();
  @$core.override
  MediaFile_Identifier_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaFile_Identifier_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MediaFile_Identifier_List>(create);
  static MediaFile_Identifier_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MediaFile_Identifier> get list => $_getList(0);
}

class MediaFile_Identifier extends $pb.GeneratedMessage {
  factory MediaFile_Identifier({
    $core.String? id,
    $core.bool? thumbnail,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (thumbnail != null) result.thumbnail = thumbnail;
    return result;
  }

  MediaFile_Identifier._();

  factory MediaFile_Identifier.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaFile_Identifier.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaFile.Identifier',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'thumbnail', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_Identifier clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile_Identifier copyWith(void Function(MediaFile_Identifier) updates) =>
      super.copyWith((message) => updates(message as MediaFile_Identifier))
          as MediaFile_Identifier;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaFile_Identifier create() => MediaFile_Identifier._();
  @$core.override
  MediaFile_Identifier createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaFile_Identifier getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MediaFile_Identifier>(create);
  static MediaFile_Identifier? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get thumbnail => $_getBF(1);
  @$pb.TagNumber(2)
  set thumbnail($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasThumbnail() => $_has(1);
  @$pb.TagNumber(2)
  void clearThumbnail() => $_clearField(2);
}

class MediaFile extends $pb.GeneratedMessage {
  factory MediaFile() => create();

  MediaFile._();

  factory MediaFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MediaFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MediaFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MediaFile copyWith(void Function(MediaFile) updates) =>
      super.copyWith((message) => updates(message as MediaFile)) as MediaFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MediaFile create() => MediaFile._();
  @$core.override
  MediaFile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MediaFile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MediaFile>(create);
  static MediaFile? _defaultInstance;
}

class RecordRequest extends $pb.GeneratedMessage {
  factory RecordRequest({
    RecordType? type,
    $core.int? action,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (action != null) result.action = action;
    return result;
  }

  RecordRequest._();

  factory RecordRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecordRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecordRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<RecordType>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: RecordType.values)
    ..aI(2, _omitFieldNames ? '' : 'action', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordRequest copyWith(void Function(RecordRequest) updates) =>
      super.copyWith((message) => updates(message as RecordRequest))
          as RecordRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordRequest create() => RecordRequest._();
  @$core.override
  RecordRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecordRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecordRequest>(create);
  static RecordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  RecordType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(RecordType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get action => $_getIZ(1);
  @$pb.TagNumber(2)
  set action($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => $_clearField(2);
}

class RecordResponse extends $pb.GeneratedMessage {
  factory RecordResponse({
    $core.int? code,
    MediaFile_Identifier? mediaFileId,
    $core.int? duration,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (mediaFileId != null) result.mediaFileId = mediaFileId;
    if (duration != null) result.duration = duration;
    return result;
  }

  RecordResponse._();

  factory RecordResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecordResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecordResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3)
    ..aOM<MediaFile_Identifier>(2, _omitFieldNames ? '' : 'mediaFileId',
        subBuilder: MediaFile_Identifier.create)
    ..aI(3, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordResponse copyWith(void Function(RecordResponse) updates) =>
      super.copyWith((message) => updates(message as RecordResponse))
          as RecordResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordResponse create() => RecordResponse._();
  @$core.override
  RecordResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecordResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecordResponse>(create);
  static RecordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  MediaFile_Identifier get mediaFileId => $_getN(1);
  @$pb.TagNumber(2)
  set mediaFileId(MediaFile_Identifier value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMediaFileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMediaFileId() => $_clearField(2);
  @$pb.TagNumber(2)
  MediaFile_Identifier ensureMediaFileId() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get duration => $_getIZ(2);
  @$pb.TagNumber(3)
  set duration($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => $_clearField(3);
}

class RecordStatus_ExtraData extends $pb.GeneratedMessage {
  factory RecordStatus_ExtraData({
    MediaFile? mediaFile,
    $core.int? status,
  }) {
    final result = create();
    if (mediaFile != null) result.mediaFile = mediaFile;
    if (status != null) result.status = status;
    return result;
  }

  RecordStatus_ExtraData._();

  factory RecordStatus_ExtraData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecordStatus_ExtraData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecordStatus.ExtraData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<MediaFile>(1, _omitFieldNames ? '' : 'mediaFile',
        subBuilder: MediaFile.create)
    ..aI(2, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordStatus_ExtraData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordStatus_ExtraData copyWith(
          void Function(RecordStatus_ExtraData) updates) =>
      super.copyWith((message) => updates(message as RecordStatus_ExtraData))
          as RecordStatus_ExtraData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordStatus_ExtraData create() => RecordStatus_ExtraData._();
  @$core.override
  RecordStatus_ExtraData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecordStatus_ExtraData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecordStatus_ExtraData>(create);
  static RecordStatus_ExtraData? _defaultInstance;

  @$pb.TagNumber(1)
  MediaFile get mediaFile => $_getN(0);
  @$pb.TagNumber(1)
  set mediaFile(MediaFile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMediaFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearMediaFile() => $_clearField(1);
  @$pb.TagNumber(1)
  MediaFile ensureMediaFile() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
}

class RecordStatus extends $pb.GeneratedMessage {
  factory RecordStatus({
    $0.LimitValue? duration,
    $0.LimitValue? size,
    RecordStatus_ExtraData? extraData,
  }) {
    final result = create();
    if (duration != null) result.duration = duration;
    if (size != null) result.size = size;
    if (extraData != null) result.extraData = extraData;
    return result;
  }

  RecordStatus._();

  factory RecordStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RecordStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RecordStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQM<$0.LimitValue>(1, _omitFieldNames ? '' : 'duration',
        subBuilder: $0.LimitValue.create)
    ..aOM<$0.LimitValue>(2, _omitFieldNames ? '' : 'size',
        subBuilder: $0.LimitValue.create)
    ..aOM<RecordStatus_ExtraData>(3, _omitFieldNames ? '' : 'extraData',
        subBuilder: RecordStatus_ExtraData.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RecordStatus copyWith(void Function(RecordStatus) updates) =>
      super.copyWith((message) => updates(message as RecordStatus))
          as RecordStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecordStatus create() => RecordStatus._();
  @$core.override
  RecordStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RecordStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecordStatus>(create);
  static RecordStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $0.LimitValue get duration => $_getN(0);
  @$pb.TagNumber(1)
  set duration($0.LimitValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDuration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDuration() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.LimitValue ensureDuration() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.LimitValue get size => $_getN(1);
  @$pb.TagNumber(2)
  set size($0.LimitValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.LimitValue ensureSize() => $_ensure(1);

  @$pb.TagNumber(3)
  RecordStatus_ExtraData get extraData => $_getN(2);
  @$pb.TagNumber(3)
  set extraData(RecordStatus_ExtraData value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasExtraData() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtraData() => $_clearField(3);
  @$pb.TagNumber(3)
  RecordStatus_ExtraData ensureExtraData() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
