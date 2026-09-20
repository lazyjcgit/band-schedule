// This is a generated file - do not edit.
//
// Generated from wear_nfc.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class IssueCardStatus extends $pb.ProtobufEnum {
  static const IssueCardStatus START =
      IssueCardStatus._(0, _omitEnumNames ? '' : 'START');
  static const IssueCardStatus CONTINUE =
      IssueCardStatus._(3, _omitEnumNames ? '' : 'CONTINUE');
  static const IssueCardStatus SUCCESS =
      IssueCardStatus._(1, _omitEnumNames ? '' : 'SUCCESS');
  static const IssueCardStatus FAILURE =
      IssueCardStatus._(2, _omitEnumNames ? '' : 'FAILURE');

  static const $core.List<IssueCardStatus> values = <IssueCardStatus>[
    START,
    CONTINUE,
    SUCCESS,
    FAILURE,
  ];

  static final $core.List<IssueCardStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static IssueCardStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const IssueCardStatus._(super.value, super.name);
}

class IssueCardType extends $pb.ProtobufEnum {
  static const IssueCardType DOOR_CARD =
      IssueCardType._(0, _omitEnumNames ? '' : 'DOOR_CARD');
  static const IssueCardType BUS_CARD =
      IssueCardType._(1, _omitEnumNames ? '' : 'BUS_CARD');
  static const IssueCardType UNION_PAY_CARD =
      IssueCardType._(2, _omitEnumNames ? '' : 'UNION_PAY_CARD');
  static const IssueCardType CLOUD_CARD =
      IssueCardType._(3, _omitEnumNames ? '' : 'CLOUD_CARD');
  static const IssueCardType MASTER_CARD =
      IssueCardType._(4, _omitEnumNames ? '' : 'MASTER_CARD');
  static const IssueCardType CAR_KEY =
      IssueCardType._(5, _omitEnumNames ? '' : 'CAR_KEY');
  static const IssueCardType CAR_KEY_ICCOA =
      IssueCardType._(7, _omitEnumNames ? '' : 'CAR_KEY_ICCOA');
  static const IssueCardType CAR_KEY_BYD =
      IssueCardType._(8, _omitEnumNames ? '' : 'CAR_KEY_BYD');
  static const IssueCardType EASY_CARD =
      IssueCardType._(6, _omitEnumNames ? '' : 'EASY_CARD');

  static const $core.List<IssueCardType> values = <IssueCardType>[
    DOOR_CARD,
    BUS_CARD,
    UNION_PAY_CARD,
    CLOUD_CARD,
    MASTER_CARD,
    CAR_KEY,
    CAR_KEY_ICCOA,
    CAR_KEY_BYD,
    EASY_CARD,
  ];

  static final $core.List<IssueCardType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 8);
  static IssueCardType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const IssueCardType._(super.value, super.name);
}

class Nfc_NfcID extends $pb.ProtobufEnum {
  static const Nfc_NfcID COMMAND =
      Nfc_NfcID._(0, _omitEnumNames ? '' : 'COMMAND');
  static const Nfc_NfcID ISSUE_CARD =
      Nfc_NfcID._(1, _omitEnumNames ? '' : 'ISSUE_CARD');
  static const Nfc_NfcID ADD_CARD =
      Nfc_NfcID._(2, _omitEnumNames ? '' : 'ADD_CARD');
  static const Nfc_NfcID DEL_CARD =
      Nfc_NfcID._(3, _omitEnumNames ? '' : 'DEL_CARD');
  static const Nfc_NfcID SYNC_CARD_LIST =
      Nfc_NfcID._(4, _omitEnumNames ? '' : 'SYNC_CARD_LIST');
  static const Nfc_NfcID SET_DEFAULT_CARD =
      Nfc_NfcID._(5, _omitEnumNames ? '' : 'SET_DEFAULT_CARD');
  static const Nfc_NfcID GET_DEFAULT_CARD =
      Nfc_NfcID._(6, _omitEnumNames ? '' : 'GET_DEFAULT_CARD');
  static const Nfc_NfcID SET_BALANCE =
      Nfc_NfcID._(7, _omitEnumNames ? '' : 'SET_BALANCE');
  static const Nfc_NfcID GET_BALANCE =
      Nfc_NfcID._(8, _omitEnumNames ? '' : 'GET_BALANCE');
  static const Nfc_NfcID SET_CONFIG =
      Nfc_NfcID._(9, _omitEnumNames ? '' : 'SET_CONFIG');
  static const Nfc_NfcID CAPABILITY_SET =
      Nfc_NfcID._(10, _omitEnumNames ? '' : 'CAPABILITY_SET');
  static const Nfc_NfcID COMMAND_BATCH =
      Nfc_NfcID._(16, _omitEnumNames ? '' : 'COMMAND_BATCH');
  static const Nfc_NfcID GET_CARD_SWITCHER_TIME =
      Nfc_NfcID._(11, _omitEnumNames ? '' : 'GET_CARD_SWITCHER_TIME');
  static const Nfc_NfcID UPDATE_CARD_SWITCHER_TIME =
      Nfc_NfcID._(12, _omitEnumNames ? '' : 'UPDATE_CARD_SWITCHER_TIME');
  static const Nfc_NfcID ADD_CARD_SWITCHER_TIME =
      Nfc_NfcID._(13, _omitEnumNames ? '' : 'ADD_CARD_SWITCHER_TIME');
  static const Nfc_NfcID REMOVE_CARD_SWITCHER_TIME =
      Nfc_NfcID._(14, _omitEnumNames ? '' : 'REMOVE_CARD_SWITCHER_TIME');
  static const Nfc_NfcID GET_CARD_SWITCHER_SMART =
      Nfc_NfcID._(21, _omitEnumNames ? '' : 'GET_CARD_SWITCHER_SMART');
  static const Nfc_NfcID SET_CARD_SWITCHER_SMART =
      Nfc_NfcID._(22, _omitEnumNames ? '' : 'SET_CARD_SWITCHER_SMART');
  static const Nfc_NfcID NOTIFY_CARD_STICK =
      Nfc_NfcID._(15, _omitEnumNames ? '' : 'NOTIFY_CARD_STICK');
  static const Nfc_NfcID OPEN_TAI =
      Nfc_NfcID._(17, _omitEnumNames ? '' : 'OPEN_TAI');
  static const Nfc_NfcID PROBE_SECTOR =
      Nfc_NfcID._(18, _omitEnumNames ? '' : 'PROBE_SECTOR');
  static const Nfc_NfcID CLOSE_TAI =
      Nfc_NfcID._(19, _omitEnumNames ? '' : 'CLOSE_TAI');
  static const Nfc_NfcID CRACK_SECTORS =
      Nfc_NfcID._(20, _omitEnumNames ? '' : 'CRACK_SECTORS');

  static const $core.List<Nfc_NfcID> values = <Nfc_NfcID>[
    COMMAND,
    ISSUE_CARD,
    ADD_CARD,
    DEL_CARD,
    SYNC_CARD_LIST,
    SET_DEFAULT_CARD,
    GET_DEFAULT_CARD,
    SET_BALANCE,
    GET_BALANCE,
    SET_CONFIG,
    CAPABILITY_SET,
    COMMAND_BATCH,
    GET_CARD_SWITCHER_TIME,
    UPDATE_CARD_SWITCHER_TIME,
    ADD_CARD_SWITCHER_TIME,
    REMOVE_CARD_SWITCHER_TIME,
    GET_CARD_SWITCHER_SMART,
    SET_CARD_SWITCHER_SMART,
    NOTIFY_CARD_STICK,
    OPEN_TAI,
    PROBE_SECTOR,
    CLOSE_TAI,
    CRACK_SECTORS,
  ];

  static final $core.List<Nfc_NfcID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 22);
  static Nfc_NfcID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Nfc_NfcID._(super.value, super.name);
}

class CardSwitcher_Result_Code extends $pb.ProtobufEnum {
  static const CardSwitcher_Result_Code SUCCESS =
      CardSwitcher_Result_Code._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const CardSwitcher_Result_Code AID_NOT_FOUND =
      CardSwitcher_Result_Code._(1, _omitEnumNames ? '' : 'AID_NOT_FOUND');
  static const CardSwitcher_Result_Code TIME_CONFLICT =
      CardSwitcher_Result_Code._(2, _omitEnumNames ? '' : 'TIME_CONFLICT');
  static const CardSwitcher_Result_Code FAIL =
      CardSwitcher_Result_Code._(10, _omitEnumNames ? '' : 'FAIL');

  static const $core.List<CardSwitcher_Result_Code> values =
      <CardSwitcher_Result_Code>[
    SUCCESS,
    AID_NOT_FOUND,
    TIME_CONFLICT,
    FAIL,
  ];

  static final $core.Map<$core.int, CardSwitcher_Result_Code> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static CardSwitcher_Result_Code? valueOf($core.int value) => _byValue[value];

  const CardSwitcher_Result_Code._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
