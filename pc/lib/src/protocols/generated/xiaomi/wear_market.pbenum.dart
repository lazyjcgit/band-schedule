// This is a generated file - do not edit.
//
// Generated from wear_market.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ApkType extends $pb.ProtobufEnum {
  static const ApkType APP = ApkType._(0, _omitEnumNames ? '' : 'APP');
  static const ApkType WATCH_FACE =
      ApkType._(1, _omitEnumNames ? '' : 'WATCH_FACE');

  static const $core.List<ApkType> values = <ApkType>[
    APP,
    WATCH_FACE,
  ];

  static final $core.List<ApkType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ApkType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ApkType._(super.value, super.name);
}

class InstallCode extends $pb.ProtobufEnum {
  static const InstallCode VERSION_DOWNGRADE =
      InstallCode._(0, _omitEnumNames ? '' : 'VERSION_DOWNGRADE');
  static const InstallCode LATEST_VERSION =
      InstallCode._(1, _omitEnumNames ? '' : 'LATEST_VERSION');
  static const InstallCode APK_NOT_FOUND =
      InstallCode._(2, _omitEnumNames ? '' : 'APK_NOT_FOUND');
  static const InstallCode WAITING_DOWNLOAD =
      InstallCode._(3, _omitEnumNames ? '' : 'WAITING_DOWNLOAD');
  static const InstallCode DOWNLOADING =
      InstallCode._(4, _omitEnumNames ? '' : 'DOWNLOADING');
  static const InstallCode DOWNLOAD_FAILED =
      InstallCode._(5, _omitEnumNames ? '' : 'DOWNLOAD_FAILED');
  static const InstallCode INSTALLING =
      InstallCode._(6, _omitEnumNames ? '' : 'INSTALLING');
  static const InstallCode INSTALL_SUCCESS =
      InstallCode._(7, _omitEnumNames ? '' : 'INSTALL_SUCCESS');
  static const InstallCode INSTALL_FAILED =
      InstallCode._(8, _omitEnumNames ? '' : 'INSTALL_FAILED');
  static const InstallCode CANCELLED =
      InstallCode._(9, _omitEnumNames ? '' : 'CANCELLED');

  static const $core.List<InstallCode> values = <InstallCode>[
    VERSION_DOWNGRADE,
    LATEST_VERSION,
    APK_NOT_FOUND,
    WAITING_DOWNLOAD,
    DOWNLOADING,
    DOWNLOAD_FAILED,
    INSTALLING,
    INSTALL_SUCCESS,
    INSTALL_FAILED,
    CANCELLED,
  ];

  static final $core.List<InstallCode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static InstallCode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const InstallCode._(super.value, super.name);
}

class Market_MarketID extends $pb.ProtobufEnum {
  static const Market_MarketID TRY_INSTALL_APK =
      Market_MarketID._(0, _omitEnumNames ? '' : 'TRY_INSTALL_APK');
  static const Market_MarketID TRY_INSTALL_APKS =
      Market_MarketID._(1, _omitEnumNames ? '' : 'TRY_INSTALL_APKS');
  static const Market_MarketID REPORT_INSTALL_PROGRESS =
      Market_MarketID._(2, _omitEnumNames ? '' : 'REPORT_INSTALL_PROGRESS');
  static const Market_MarketID TRY_INSTALL_APK_NEW =
      Market_MarketID._(3, _omitEnumNames ? '' : 'TRY_INSTALL_APK_NEW');
  static const Market_MarketID TRY_INSTALL_APKS_NEW =
      Market_MarketID._(4, _omitEnumNames ? '' : 'TRY_INSTALL_APKS_NEW');
  static const Market_MarketID SEND_PHONE_MESSAGE =
      Market_MarketID._(5, _omitEnumNames ? '' : 'SEND_PHONE_MESSAGE');
  static const Market_MarketID SEND_WEAR_MESSAGE =
      Market_MarketID._(6, _omitEnumNames ? '' : 'SEND_WEAR_MESSAGE');

  static const $core.List<Market_MarketID> values = <Market_MarketID>[
    TRY_INSTALL_APK,
    TRY_INSTALL_APKS,
    REPORT_INSTALL_PROGRESS,
    TRY_INSTALL_APK_NEW,
    TRY_INSTALL_APKS_NEW,
    SEND_PHONE_MESSAGE,
    SEND_WEAR_MESSAGE,
  ];

  static final $core.List<Market_MarketID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static Market_MarketID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Market_MarketID._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
