// This is a generated file - do not edit.
//
// Generated from wear.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wear.pbenum.dart';
import 'wear_account.pb.dart' as $0;
import 'wear_aivs.pb.dart' as $11;
import 'wear_alexa.pb.dart' as $16;
import 'wear_calendar.pb.dart' as $9;
import 'wear_clock.pb.dart' as $14;
import 'wear_common.pbenum.dart' as $21;
import 'wear_contact.pb.dart' as $18;
import 'wear_factory.pb.dart' as $10;
import 'wear_fitness.pb.dart' as $5;
import 'wear_gnss.pb.dart' as $13;
import 'wear_interconnection.pb.dart' as $20;
import 'wear_lpa.pb.dart' as $6;
import 'wear_market.pb.dart' as $12;
import 'wear_mass.pb.dart' as $19;
import 'wear_media.pb.dart' as $15;
import 'wear_nfc.pb.dart' as $3;
import 'wear_notification.pb.dart' as $4;
import 'wear_stock.pb.dart' as $8;
import 'wear_system.pb.dart' as $1;
import 'wear_thirdparty_app.pb.dart' as $17;
import 'wear_watch_face.pb.dart' as $2;
import 'wear_weather.pb.dart' as $7;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear.pbenum.dart';

enum WearPacket_Payload {
  account,
  system,
  watchFace,
  nfc,
  notification,
  fitness,
  lpa,
  weather,
  stock,
  calendar,
  factory,
  aivs,
  market,
  gnss,
  clock,
  media,
  alexa,
  thirdpartyApp,
  contact,
  mass,
  interconnection,
  errorCode,
  notSet
}

class WearPacket extends $pb.GeneratedMessage {
  factory WearPacket({
    WearPacket_Type? type,
    $core.int? id,
    $0.Account? account,
    $1.System? system,
    $2.WatchFace? watchFace,
    $3.Nfc? nfc,
    $4.Notification? notification,
    $5.Fitness? fitness,
    $6.Lpa? lpa,
    $7.Weather? weather,
    $8.Stock? stock,
    $9.Calendar? calendar,
    $10.Factory? factory,
    $11.Aivs? aivs,
    $12.Market? market,
    $13.Gnss? gnss,
    $14.Clock? clock,
    $15.Media? media,
    $16.Alexa? alexa,
    $17.ThirdpartyApp? thirdpartyApp,
    $18.Contact? contact,
    $19.Mass? mass,
    $20.Interconnection? interconnection,
    $21.ErrorCode? errorCode,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    if (account != null) result.account = account;
    if (system != null) result.system = system;
    if (watchFace != null) result.watchFace = watchFace;
    if (nfc != null) result.nfc = nfc;
    if (notification != null) result.notification = notification;
    if (fitness != null) result.fitness = fitness;
    if (lpa != null) result.lpa = lpa;
    if (weather != null) result.weather = weather;
    if (stock != null) result.stock = stock;
    if (calendar != null) result.calendar = calendar;
    if (factory != null) result.factory = factory;
    if (aivs != null) result.aivs = aivs;
    if (market != null) result.market = market;
    if (gnss != null) result.gnss = gnss;
    if (clock != null) result.clock = clock;
    if (media != null) result.media = media;
    if (alexa != null) result.alexa = alexa;
    if (thirdpartyApp != null) result.thirdpartyApp = thirdpartyApp;
    if (contact != null) result.contact = contact;
    if (mass != null) result.mass = mass;
    if (interconnection != null) result.interconnection = interconnection;
    if (errorCode != null) result.errorCode = errorCode;
    return result;
  }

  WearPacket._();

  factory WearPacket.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WearPacket.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, WearPacket_Payload>
      _WearPacket_PayloadByTag = {
    3: WearPacket_Payload.account,
    4: WearPacket_Payload.system,
    6: WearPacket_Payload.watchFace,
    7: WearPacket_Payload.nfc,
    9: WearPacket_Payload.notification,
    10: WearPacket_Payload.fitness,
    11: WearPacket_Payload.lpa,
    12: WearPacket_Payload.weather,
    13: WearPacket_Payload.stock,
    14: WearPacket_Payload.calendar,
    15: WearPacket_Payload.factory,
    16: WearPacket_Payload.aivs,
    17: WearPacket_Payload.market,
    18: WearPacket_Payload.gnss,
    19: WearPacket_Payload.clock,
    20: WearPacket_Payload.media,
    21: WearPacket_Payload.alexa,
    22: WearPacket_Payload.thirdpartyApp,
    23: WearPacket_Payload.contact,
    24: WearPacket_Payload.mass,
    25: WearPacket_Payload.interconnection,
    100: WearPacket_Payload.errorCode,
    0: WearPacket_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WearPacket',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [
      3,
      4,
      6,
      7,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      100
    ])
    ..aE<WearPacket_Type>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: WearPacket_Type.values)
    ..aI(2, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.QU3)
    ..aOM<$0.Account>(3, _omitFieldNames ? '' : 'account',
        subBuilder: $0.Account.create)
    ..aOM<$1.System>(4, _omitFieldNames ? '' : 'system',
        subBuilder: $1.System.create)
    ..aOM<$2.WatchFace>(6, _omitFieldNames ? '' : 'watchFace',
        subBuilder: $2.WatchFace.create)
    ..aOM<$3.Nfc>(7, _omitFieldNames ? '' : 'nfc', subBuilder: $3.Nfc.create)
    ..aOM<$4.Notification>(9, _omitFieldNames ? '' : 'notification',
        subBuilder: $4.Notification.create)
    ..aOM<$5.Fitness>(10, _omitFieldNames ? '' : 'fitness',
        subBuilder: $5.Fitness.create)
    ..aOM<$6.Lpa>(11, _omitFieldNames ? '' : 'lpa', subBuilder: $6.Lpa.create)
    ..aOM<$7.Weather>(12, _omitFieldNames ? '' : 'weather',
        subBuilder: $7.Weather.create)
    ..aOM<$8.Stock>(13, _omitFieldNames ? '' : 'stock',
        subBuilder: $8.Stock.create)
    ..aOM<$9.Calendar>(14, _omitFieldNames ? '' : 'calendar',
        subBuilder: $9.Calendar.create)
    ..aOM<$10.Factory>(15, _omitFieldNames ? '' : 'factory',
        subBuilder: $10.Factory.create)
    ..aOM<$11.Aivs>(16, _omitFieldNames ? '' : 'aivs',
        subBuilder: $11.Aivs.create)
    ..aOM<$12.Market>(17, _omitFieldNames ? '' : 'market',
        subBuilder: $12.Market.create)
    ..aOM<$13.Gnss>(18, _omitFieldNames ? '' : 'gnss',
        subBuilder: $13.Gnss.create)
    ..aOM<$14.Clock>(19, _omitFieldNames ? '' : 'clock',
        subBuilder: $14.Clock.create)
    ..aOM<$15.Media>(20, _omitFieldNames ? '' : 'media',
        subBuilder: $15.Media.create)
    ..aOM<$16.Alexa>(21, _omitFieldNames ? '' : 'alexa',
        subBuilder: $16.Alexa.create)
    ..aOM<$17.ThirdpartyApp>(22, _omitFieldNames ? '' : 'thirdpartyApp',
        subBuilder: $17.ThirdpartyApp.create)
    ..aOM<$18.Contact>(23, _omitFieldNames ? '' : 'contact',
        subBuilder: $18.Contact.create)
    ..aOM<$19.Mass>(24, _omitFieldNames ? '' : 'mass',
        subBuilder: $19.Mass.create)
    ..aOM<$20.Interconnection>(25, _omitFieldNames ? '' : 'interconnection',
        subBuilder: $20.Interconnection.create)
    ..aE<$21.ErrorCode>(100, _omitFieldNames ? '' : 'errorCode',
        enumValues: $21.ErrorCode.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearPacket clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WearPacket copyWith(void Function(WearPacket) updates) =>
      super.copyWith((message) => updates(message as WearPacket)) as WearPacket;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WearPacket create() => WearPacket._();
  @$core.override
  WearPacket createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WearPacket getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WearPacket>(create);
  static WearPacket? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
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
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(100)
  WearPacket_Payload whichPayload() =>
      _WearPacket_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
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
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(100)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WearPacket_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(WearPacket_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.Account get account => $_getN(2);
  @$pb.TagNumber(3)
  set account($0.Account value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccount() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Account ensureAccount() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.System get system => $_getN(3);
  @$pb.TagNumber(4)
  set system($1.System value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSystem() => $_has(3);
  @$pb.TagNumber(4)
  void clearSystem() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.System ensureSystem() => $_ensure(3);

  @$pb.TagNumber(6)
  $2.WatchFace get watchFace => $_getN(4);
  @$pb.TagNumber(6)
  set watchFace($2.WatchFace value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasWatchFace() => $_has(4);
  @$pb.TagNumber(6)
  void clearWatchFace() => $_clearField(6);
  @$pb.TagNumber(6)
  $2.WatchFace ensureWatchFace() => $_ensure(4);

  @$pb.TagNumber(7)
  $3.Nfc get nfc => $_getN(5);
  @$pb.TagNumber(7)
  set nfc($3.Nfc value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasNfc() => $_has(5);
  @$pb.TagNumber(7)
  void clearNfc() => $_clearField(7);
  @$pb.TagNumber(7)
  $3.Nfc ensureNfc() => $_ensure(5);

  @$pb.TagNumber(9)
  $4.Notification get notification => $_getN(6);
  @$pb.TagNumber(9)
  set notification($4.Notification value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasNotification() => $_has(6);
  @$pb.TagNumber(9)
  void clearNotification() => $_clearField(9);
  @$pb.TagNumber(9)
  $4.Notification ensureNotification() => $_ensure(6);

  @$pb.TagNumber(10)
  $5.Fitness get fitness => $_getN(7);
  @$pb.TagNumber(10)
  set fitness($5.Fitness value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFitness() => $_has(7);
  @$pb.TagNumber(10)
  void clearFitness() => $_clearField(10);
  @$pb.TagNumber(10)
  $5.Fitness ensureFitness() => $_ensure(7);

  @$pb.TagNumber(11)
  $6.Lpa get lpa => $_getN(8);
  @$pb.TagNumber(11)
  set lpa($6.Lpa value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasLpa() => $_has(8);
  @$pb.TagNumber(11)
  void clearLpa() => $_clearField(11);
  @$pb.TagNumber(11)
  $6.Lpa ensureLpa() => $_ensure(8);

  @$pb.TagNumber(12)
  $7.Weather get weather => $_getN(9);
  @$pb.TagNumber(12)
  set weather($7.Weather value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasWeather() => $_has(9);
  @$pb.TagNumber(12)
  void clearWeather() => $_clearField(12);
  @$pb.TagNumber(12)
  $7.Weather ensureWeather() => $_ensure(9);

  @$pb.TagNumber(13)
  $8.Stock get stock => $_getN(10);
  @$pb.TagNumber(13)
  set stock($8.Stock value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasStock() => $_has(10);
  @$pb.TagNumber(13)
  void clearStock() => $_clearField(13);
  @$pb.TagNumber(13)
  $8.Stock ensureStock() => $_ensure(10);

  @$pb.TagNumber(14)
  $9.Calendar get calendar => $_getN(11);
  @$pb.TagNumber(14)
  set calendar($9.Calendar value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasCalendar() => $_has(11);
  @$pb.TagNumber(14)
  void clearCalendar() => $_clearField(14);
  @$pb.TagNumber(14)
  $9.Calendar ensureCalendar() => $_ensure(11);

  @$pb.TagNumber(15)
  $10.Factory get factory => $_getN(12);
  @$pb.TagNumber(15)
  set factory($10.Factory value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasFactory() => $_has(12);
  @$pb.TagNumber(15)
  void clearFactory() => $_clearField(15);
  @$pb.TagNumber(15)
  $10.Factory ensureFactory() => $_ensure(12);

  @$pb.TagNumber(16)
  $11.Aivs get aivs => $_getN(13);
  @$pb.TagNumber(16)
  set aivs($11.Aivs value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasAivs() => $_has(13);
  @$pb.TagNumber(16)
  void clearAivs() => $_clearField(16);
  @$pb.TagNumber(16)
  $11.Aivs ensureAivs() => $_ensure(13);

  @$pb.TagNumber(17)
  $12.Market get market => $_getN(14);
  @$pb.TagNumber(17)
  set market($12.Market value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasMarket() => $_has(14);
  @$pb.TagNumber(17)
  void clearMarket() => $_clearField(17);
  @$pb.TagNumber(17)
  $12.Market ensureMarket() => $_ensure(14);

  @$pb.TagNumber(18)
  $13.Gnss get gnss => $_getN(15);
  @$pb.TagNumber(18)
  set gnss($13.Gnss value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasGnss() => $_has(15);
  @$pb.TagNumber(18)
  void clearGnss() => $_clearField(18);
  @$pb.TagNumber(18)
  $13.Gnss ensureGnss() => $_ensure(15);

  @$pb.TagNumber(19)
  $14.Clock get clock => $_getN(16);
  @$pb.TagNumber(19)
  set clock($14.Clock value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasClock() => $_has(16);
  @$pb.TagNumber(19)
  void clearClock() => $_clearField(19);
  @$pb.TagNumber(19)
  $14.Clock ensureClock() => $_ensure(16);

  @$pb.TagNumber(20)
  $15.Media get media => $_getN(17);
  @$pb.TagNumber(20)
  set media($15.Media value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasMedia() => $_has(17);
  @$pb.TagNumber(20)
  void clearMedia() => $_clearField(20);
  @$pb.TagNumber(20)
  $15.Media ensureMedia() => $_ensure(17);

  @$pb.TagNumber(21)
  $16.Alexa get alexa => $_getN(18);
  @$pb.TagNumber(21)
  set alexa($16.Alexa value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasAlexa() => $_has(18);
  @$pb.TagNumber(21)
  void clearAlexa() => $_clearField(21);
  @$pb.TagNumber(21)
  $16.Alexa ensureAlexa() => $_ensure(18);

  @$pb.TagNumber(22)
  $17.ThirdpartyApp get thirdpartyApp => $_getN(19);
  @$pb.TagNumber(22)
  set thirdpartyApp($17.ThirdpartyApp value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasThirdpartyApp() => $_has(19);
  @$pb.TagNumber(22)
  void clearThirdpartyApp() => $_clearField(22);
  @$pb.TagNumber(22)
  $17.ThirdpartyApp ensureThirdpartyApp() => $_ensure(19);

  @$pb.TagNumber(23)
  $18.Contact get contact => $_getN(20);
  @$pb.TagNumber(23)
  set contact($18.Contact value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasContact() => $_has(20);
  @$pb.TagNumber(23)
  void clearContact() => $_clearField(23);
  @$pb.TagNumber(23)
  $18.Contact ensureContact() => $_ensure(20);

  @$pb.TagNumber(24)
  $19.Mass get mass => $_getN(21);
  @$pb.TagNumber(24)
  set mass($19.Mass value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasMass() => $_has(21);
  @$pb.TagNumber(24)
  void clearMass() => $_clearField(24);
  @$pb.TagNumber(24)
  $19.Mass ensureMass() => $_ensure(21);

  @$pb.TagNumber(25)
  $20.Interconnection get interconnection => $_getN(22);
  @$pb.TagNumber(25)
  set interconnection($20.Interconnection value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasInterconnection() => $_has(22);
  @$pb.TagNumber(25)
  void clearInterconnection() => $_clearField(25);
  @$pb.TagNumber(25)
  $20.Interconnection ensureInterconnection() => $_ensure(22);

  @$pb.TagNumber(100)
  $21.ErrorCode get errorCode => $_getN(23);
  @$pb.TagNumber(100)
  set errorCode($21.ErrorCode value) => $_setField(100, value);
  @$pb.TagNumber(100)
  $core.bool hasErrorCode() => $_has(23);
  @$pb.TagNumber(100)
  void clearErrorCode() => $_clearField(100);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
