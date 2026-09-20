// This is a generated file - do not edit.
//
// Generated from wear_account.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VerifyMode extends $pb.ProtobufEnum {
  static const VerifyMode SERVER_PSK =
      VerifyMode._(1, _omitEnumNames ? '' : 'SERVER_PSK');
  static const VerifyMode APP_LOCAL =
      VerifyMode._(2, _omitEnumNames ? '' : 'APP_LOCAL');

  static const $core.List<VerifyMode> values = <VerifyMode>[
    SERVER_PSK,
    APP_LOCAL,
  ];

  static final $core.Map<$core.int, VerifyMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static VerifyMode? valueOf($core.int value) => _byValue[value];

  const VerifyMode._(super.value, super.name);
}

class OOBMode extends $pb.ProtobufEnum {
  static const OOBMode NO_OOB = OOBMode._(0, _omitEnumNames ? '' : 'NO_OOB');
  static const OOBMode NUMERIC_COMPARISON =
      OOBMode._(1, _omitEnumNames ? '' : 'NUMERIC_COMPARISON');
  static const OOBMode DYNAMIC_CODE =
      OOBMode._(2, _omitEnumNames ? '' : 'DYNAMIC_CODE');
  static const OOBMode BUTTON_CONFIRM =
      OOBMode._(3, _omitEnumNames ? '' : 'BUTTON_CONFIRM');

  static const $core.List<OOBMode> values = <OOBMode>[
    NO_OOB,
    NUMERIC_COMPARISON,
    DYNAMIC_CODE,
    BUTTON_CONFIRM,
  ];

  static final $core.List<OOBMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static OOBMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const OOBMode._(super.value, super.name);
}

class Account_AccountID extends $pb.ProtobufEnum {
  static const Account_AccountID BIND_STATUS =
      Account_AccountID._(0, _omitEnumNames ? '' : 'BIND_STATUS');
  static const Account_AccountID BIND_START =
      Account_AccountID._(1, _omitEnumNames ? '' : 'BIND_START');
  static const Account_AccountID BIND_RESULT =
      Account_AccountID._(2, _omitEnumNames ? '' : 'BIND_RESULT');
  static const Account_AccountID LOGIN_STATUS =
      Account_AccountID._(3, _omitEnumNames ? '' : 'LOGIN_STATUS');
  static const Account_AccountID LOGIN_START =
      Account_AccountID._(4, _omitEnumNames ? '' : 'LOGIN_START');
  static const Account_AccountID ACCOUNT_VERIFY =
      Account_AccountID._(5, _omitEnumNames ? '' : 'ACCOUNT_VERIFY');
  static const Account_AccountID BOND_APPLY =
      Account_AccountID._(16, _omitEnumNames ? '' : 'BOND_APPLY');
  static const Account_AccountID BIND_START_V2 =
      Account_AccountID._(17, _omitEnumNames ? '' : 'BIND_START_V2');
  static const Account_AccountID BIND_VERIFY =
      Account_AccountID._(18, _omitEnumNames ? '' : 'BIND_VERIFY');
  static const Account_AccountID BIND_CONFIRM =
      Account_AccountID._(19, _omitEnumNames ? '' : 'BIND_CONFIRM');
  static const Account_AccountID BIND_RESULT_V2 =
      Account_AccountID._(25, _omitEnumNames ? '' : 'BIND_RESULT_V2');
  static const Account_AccountID AUTH_VERIFY =
      Account_AccountID._(26, _omitEnumNames ? '' : 'AUTH_VERIFY');
  static const Account_AccountID AUTH_CONFIRM =
      Account_AccountID._(27, _omitEnumNames ? '' : 'AUTH_CONFIRM');
  static const Account_AccountID APPLY_DEVICE_PASSTOKEN =
      Account_AccountID._(28, _omitEnumNames ? '' : 'APPLY_DEVICE_PASSTOKEN');
  static const Account_AccountID REPLY_DEVICE_PASSTOKEN =
      Account_AccountID._(29, _omitEnumNames ? '' : 'REPLY_DEVICE_PASSTOKEN');
  static const Account_AccountID NOTIFY_LOGIN_STATUS_CHANGED =
      Account_AccountID._(
          30, _omitEnumNames ? '' : 'NOTIFY_LOGIN_STATUS_CHANGED');

  static const $core.List<Account_AccountID> values = <Account_AccountID>[
    BIND_STATUS,
    BIND_START,
    BIND_RESULT,
    LOGIN_STATUS,
    LOGIN_START,
    ACCOUNT_VERIFY,
    BOND_APPLY,
    BIND_START_V2,
    BIND_VERIFY,
    BIND_CONFIRM,
    BIND_RESULT_V2,
    AUTH_VERIFY,
    AUTH_CONFIRM,
    APPLY_DEVICE_PASSTOKEN,
    REPLY_DEVICE_PASSTOKEN,
    NOTIFY_LOGIN_STATUS_CHANGED,
  ];

  static final $core.Map<$core.int, Account_AccountID> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Account_AccountID? valueOf($core.int value) => _byValue[value];

  const Account_AccountID._(super.value, super.name);
}

class Account_ErrorCode extends $pb.ProtobufEnum {
  static const Account_ErrorCode NO_ERROR =
      Account_ErrorCode._(0, _omitEnumNames ? '' : 'NO_ERROR');
  static const Account_ErrorCode HAVE_BOUND =
      Account_ErrorCode._(1, _omitEnumNames ? '' : 'HAVE_BOUND');
  static const Account_ErrorCode INFO_MISSING =
      Account_ErrorCode._(2, _omitEnumNames ? '' : 'INFO_MISSING');
  static const Account_ErrorCode INVALID_PARAM =
      Account_ErrorCode._(3, _omitEnumNames ? '' : 'INVALID_PARAM');
  static const Account_ErrorCode NO_BOUND =
      Account_ErrorCode._(4, _omitEnumNames ? '' : 'NO_BOUND');
  static const Account_ErrorCode SERVER_ERROR =
      Account_ErrorCode._(5, _omitEnumNames ? '' : 'SERVER_ERROR');
  static const Account_ErrorCode CANCEL =
      Account_ErrorCode._(6, _omitEnumNames ? '' : 'CANCEL');
  static const Account_ErrorCode VERIFY_ERROR =
      Account_ErrorCode._(7, _omitEnumNames ? '' : 'VERIFY_ERROR');
  static const Account_ErrorCode STATE_NOT_MATCH =
      Account_ErrorCode._(8, _omitEnumNames ? '' : 'STATE_NOT_MATCH');
  static const Account_ErrorCode USER_CHANGED =
      Account_ErrorCode._(9, _omitEnumNames ? '' : 'USER_CHANGED');
  static const Account_ErrorCode CONNECTION_REACH_LIMIT =
      Account_ErrorCode._(10, _omitEnumNames ? '' : 'CONNECTION_REACH_LIMIT');
  static const Account_ErrorCode UNKNOWN =
      Account_ErrorCode._(100, _omitEnumNames ? '' : 'UNKNOWN');

  static const $core.List<Account_ErrorCode> values = <Account_ErrorCode>[
    NO_ERROR,
    HAVE_BOUND,
    INFO_MISSING,
    INVALID_PARAM,
    NO_BOUND,
    SERVER_ERROR,
    CANCEL,
    VERIFY_ERROR,
    STATE_NOT_MATCH,
    USER_CHANGED,
    CONNECTION_REACH_LIMIT,
    UNKNOWN,
  ];

  static final $core.Map<$core.int, Account_ErrorCode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Account_ErrorCode? valueOf($core.int value) => _byValue[value];

  const Account_ErrorCode._(super.value, super.name);
}

class CompanionDevice_DeviceType extends $pb.ProtobufEnum {
  static const CompanionDevice_DeviceType ANDROID =
      CompanionDevice_DeviceType._(0, _omitEnumNames ? '' : 'ANDROID');
  static const CompanionDevice_DeviceType IOS =
      CompanionDevice_DeviceType._(1, _omitEnumNames ? '' : 'IOS');
  static const CompanionDevice_DeviceType VELA =
      CompanionDevice_DeviceType._(2, _omitEnumNames ? '' : 'VELA');
  static const CompanionDevice_DeviceType OTHER =
      CompanionDevice_DeviceType._(15, _omitEnumNames ? '' : 'OTHER');

  static const $core.List<CompanionDevice_DeviceType> values =
      <CompanionDevice_DeviceType>[
    ANDROID,
    IOS,
    VELA,
    OTHER,
  ];

  static final $core.Map<$core.int, CompanionDevice_DeviceType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static CompanionDevice_DeviceType? valueOf($core.int value) =>
      _byValue[value];

  const CompanionDevice_DeviceType._(super.value, super.name);
}

class BondReply_Status extends $pb.ProtobufEnum {
  static const BondReply_Status NOT_SUPPORT =
      BondReply_Status._(1, _omitEnumNames ? '' : 'NOT_SUPPORT');
  static const BondReply_Status BOND_SUCCESS =
      BondReply_Status._(2, _omitEnumNames ? '' : 'BOND_SUCCESS');
  static const BondReply_Status BOND_FAIL =
      BondReply_Status._(3, _omitEnumNames ? '' : 'BOND_FAIL');

  static const $core.List<BondReply_Status> values = <BondReply_Status>[
    NOT_SUPPORT,
    BOND_SUCCESS,
    BOND_FAIL,
  ];

  static final $core.List<BondReply_Status?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static BondReply_Status? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BondReply_Status._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
