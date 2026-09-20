// This is a generated file - do not edit.
//
// Generated from wear_gnss.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_gnss.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_gnss.pbenum.dart';

enum Gnss_Payload { days, data, gpsInfo, notSet }

class Gnss extends $pb.GeneratedMessage {
  factory Gnss({
    $core.int? days,
    Data? data,
    GpsInfo? gpsInfo,
  }) {
    final result = create();
    if (days != null) result.days = days;
    if (data != null) result.data = data;
    if (gpsInfo != null) result.gpsInfo = gpsInfo;
    return result;
  }

  Gnss._();

  factory Gnss.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Gnss.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Gnss_Payload> _Gnss_PayloadByTag = {
    1: Gnss_Payload.days,
    2: Gnss_Payload.data,
    3: Gnss_Payload.gpsInfo,
    0: Gnss_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Gnss',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aI(1, _omitFieldNames ? '' : 'days', fieldType: $pb.PbFieldType.OU3)
    ..aOM<Data>(2, _omitFieldNames ? '' : 'data', subBuilder: Data.create)
    ..aOM<GpsInfo>(3, _omitFieldNames ? '' : 'gpsInfo',
        subBuilder: GpsInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Gnss clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Gnss copyWith(void Function(Gnss) updates) =>
      super.copyWith((message) => updates(message as Gnss)) as Gnss;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Gnss create() => Gnss._();
  @$core.override
  Gnss createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Gnss getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gnss>(create);
  static Gnss? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Gnss_Payload whichPayload() => _Gnss_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.int get days => $_getIZ(0);
  @$pb.TagNumber(1)
  set days($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDays() => $_has(0);
  @$pb.TagNumber(1)
  void clearDays() => $_clearField(1);

  @$pb.TagNumber(2)
  Data get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(Data value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  Data ensureData() => $_ensure(1);

  @$pb.TagNumber(3)
  GpsInfo get gpsInfo => $_getN(2);
  @$pb.TagNumber(3)
  set gpsInfo(GpsInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGpsInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearGpsInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  GpsInfo ensureGpsInfo() => $_ensure(2);
}

class Data extends $pb.GeneratedMessage {
  factory Data({
    Data_Type? type,
    $core.String? source,
    $core.int? days,
    $core.bool? needGpsInfo,
    $core.int? expectedSliceLength,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (source != null) result.source = source;
    if (days != null) result.days = days;
    if (needGpsInfo != null) result.needGpsInfo = needGpsInfo;
    if (expectedSliceLength != null)
      result.expectedSliceLength = expectedSliceLength;
    return result;
  }

  Data._();

  factory Data.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Data.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Data',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<Data_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: Data_Type.values)
    ..aQS(2, _omitFieldNames ? '' : 'source')
    ..aI(3, _omitFieldNames ? '' : 'days', fieldType: $pb.PbFieldType.OU3)
    ..aOB(4, _omitFieldNames ? '' : 'needGpsInfo')
    ..aI(5, _omitFieldNames ? '' : 'expectedSliceLength',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Data clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Data copyWith(void Function(Data) updates) =>
      super.copyWith((message) => updates(message as Data)) as Data;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Data create() => Data._();
  @$core.override
  Data createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Data getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Data>(create);
  static Data? _defaultInstance;

  @$pb.TagNumber(1)
  Data_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(Data_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get source => $_getSZ(1);
  @$pb.TagNumber(2)
  set source($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearSource() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get days => $_getIZ(2);
  @$pb.TagNumber(3)
  set days($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDays() => $_has(2);
  @$pb.TagNumber(3)
  void clearDays() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get needGpsInfo => $_getBF(3);
  @$pb.TagNumber(4)
  set needGpsInfo($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNeedGpsInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearNeedGpsInfo() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get expectedSliceLength => $_getIZ(4);
  @$pb.TagNumber(5)
  set expectedSliceLength($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExpectedSliceLength() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpectedSliceLength() => $_clearField(5);
}

class GpsInfo extends $pb.GeneratedMessage {
  factory GpsInfo({
    $core.int? timestamp,
    $core.double? longitude,
    $core.double? latitude,
    $core.double? altitude,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (longitude != null) result.longitude = longitude;
    if (latitude != null) result.latitude = latitude;
    if (altitude != null) result.altitude = altitude;
    return result;
  }

  GpsInfo._();

  factory GpsInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GpsInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GpsInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.QU3)
    ..aD(2, _omitFieldNames ? '' : 'longitude', fieldType: $pb.PbFieldType.QD)
    ..aD(3, _omitFieldNames ? '' : 'latitude', fieldType: $pb.PbFieldType.QD)
    ..aD(4, _omitFieldNames ? '' : 'altitude');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GpsInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GpsInfo copyWith(void Function(GpsInfo) updates) =>
      super.copyWith((message) => updates(message as GpsInfo)) as GpsInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GpsInfo create() => GpsInfo._();
  @$core.override
  GpsInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GpsInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GpsInfo>(create);
  static GpsInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get longitude => $_getN(1);
  @$pb.TagNumber(2)
  set longitude($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLongitude() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitude() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get latitude => $_getN(2);
  @$pb.TagNumber(3)
  set latitude($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLatitude() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatitude() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get altitude => $_getN(3);
  @$pb.TagNumber(4)
  set altitude($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAltitude() => $_has(3);
  @$pb.TagNumber(4)
  void clearAltitude() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
