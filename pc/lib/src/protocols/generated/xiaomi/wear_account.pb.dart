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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_account.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_account.pbenum.dart';

enum Account_Payload {
  bindStatus,
  bindKey,
  errorCode,
  bindInfo,
  bindResult,
  loginStatus,
  verifyKey,
  verifyResult,
  bondApply,
  bondReply,
  bindStartV2,
  bindInfoV2,
  pskServerVerify,
  pskDeviceVerify,
  pskAppConfirm,
  pskDeviceConfirm,
  localAppVerify,
  localDeviceVerify,
  localAppConfirm,
  localDeviceConfirm,
  bindResultV2,
  authAppVerify,
  authDeviceVerify,
  authAppConfirm,
  authDeviceConfirm,
  passTokenApply,
  passTokenReply,
  statusChange,
  notSet
}

class Account extends $pb.GeneratedMessage {
  factory Account({
    $core.bool? bindStatus,
    $core.String? bindKey,
    Account_ErrorCode? errorCode,
    BindInfo? bindInfo,
    BindResult? bindResult,
    $core.bool? loginStatus,
    $core.String? verifyKey,
    $core.bool? verifyResult,
    BondApply? bondApply,
    BondReply? bondReply,
    BindStartV2? bindStartV2,
    BindInfoV2? bindInfoV2,
    BindPsk_ServerVerify? pskServerVerify,
    BindPsk_DeviceVerify? pskDeviceVerify,
    BindPsk_AppConfirm? pskAppConfirm,
    BindPsk_DeviceConfirm? pskDeviceConfirm,
    BindLocal_AppVerify? localAppVerify,
    BindLocal_DeviceVerify? localDeviceVerify,
    BindLocal_AppConfirm? localAppConfirm,
    BindLocal_DeviceConfirm? localDeviceConfirm,
    BindResultV2? bindResultV2,
    Auth_AppVerify? authAppVerify,
    Auth_DeviceVerify? authDeviceVerify,
    Auth_AppConfirm? authAppConfirm,
    Auth_DeviceConfirm? authDeviceConfirm,
    Login_PassTokenApply? passTokenApply,
    Login_PassTokenReply? passTokenReply,
    Login_StatusChange? statusChange,
  }) {
    final result = create();
    if (bindStatus != null) result.bindStatus = bindStatus;
    if (bindKey != null) result.bindKey = bindKey;
    if (errorCode != null) result.errorCode = errorCode;
    if (bindInfo != null) result.bindInfo = bindInfo;
    if (bindResult != null) result.bindResult = bindResult;
    if (loginStatus != null) result.loginStatus = loginStatus;
    if (verifyKey != null) result.verifyKey = verifyKey;
    if (verifyResult != null) result.verifyResult = verifyResult;
    if (bondApply != null) result.bondApply = bondApply;
    if (bondReply != null) result.bondReply = bondReply;
    if (bindStartV2 != null) result.bindStartV2 = bindStartV2;
    if (bindInfoV2 != null) result.bindInfoV2 = bindInfoV2;
    if (pskServerVerify != null) result.pskServerVerify = pskServerVerify;
    if (pskDeviceVerify != null) result.pskDeviceVerify = pskDeviceVerify;
    if (pskAppConfirm != null) result.pskAppConfirm = pskAppConfirm;
    if (pskDeviceConfirm != null) result.pskDeviceConfirm = pskDeviceConfirm;
    if (localAppVerify != null) result.localAppVerify = localAppVerify;
    if (localDeviceVerify != null) result.localDeviceVerify = localDeviceVerify;
    if (localAppConfirm != null) result.localAppConfirm = localAppConfirm;
    if (localDeviceConfirm != null)
      result.localDeviceConfirm = localDeviceConfirm;
    if (bindResultV2 != null) result.bindResultV2 = bindResultV2;
    if (authAppVerify != null) result.authAppVerify = authAppVerify;
    if (authDeviceVerify != null) result.authDeviceVerify = authDeviceVerify;
    if (authAppConfirm != null) result.authAppConfirm = authAppConfirm;
    if (authDeviceConfirm != null) result.authDeviceConfirm = authDeviceConfirm;
    if (passTokenApply != null) result.passTokenApply = passTokenApply;
    if (passTokenReply != null) result.passTokenReply = passTokenReply;
    if (statusChange != null) result.statusChange = statusChange;
    return result;
  }

  Account._();

  factory Account.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Account.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Account_Payload> _Account_PayloadByTag = {
    1: Account_Payload.bindStatus,
    2: Account_Payload.bindKey,
    3: Account_Payload.errorCode,
    4: Account_Payload.bindInfo,
    5: Account_Payload.bindResult,
    6: Account_Payload.loginStatus,
    7: Account_Payload.verifyKey,
    8: Account_Payload.verifyResult,
    9: Account_Payload.bondApply,
    10: Account_Payload.bondReply,
    11: Account_Payload.bindStartV2,
    12: Account_Payload.bindInfoV2,
    13: Account_Payload.pskServerVerify,
    14: Account_Payload.pskDeviceVerify,
    15: Account_Payload.pskAppConfirm,
    16: Account_Payload.pskDeviceConfirm,
    17: Account_Payload.localAppVerify,
    18: Account_Payload.localDeviceVerify,
    19: Account_Payload.localAppConfirm,
    20: Account_Payload.localDeviceConfirm,
    29: Account_Payload.bindResultV2,
    30: Account_Payload.authAppVerify,
    31: Account_Payload.authDeviceVerify,
    32: Account_Payload.authAppConfirm,
    33: Account_Payload.authDeviceConfirm,
    34: Account_Payload.passTokenApply,
    35: Account_Payload.passTokenReply,
    36: Account_Payload.statusChange,
    0: Account_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Account',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
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
      29,
      30,
      31,
      32,
      33,
      34,
      35,
      36
    ])
    ..aOB(1, _omitFieldNames ? '' : 'bindStatus')
    ..aOS(2, _omitFieldNames ? '' : 'bindKey')
    ..aE<Account_ErrorCode>(3, _omitFieldNames ? '' : 'errorCode',
        enumValues: Account_ErrorCode.values)
    ..aOM<BindInfo>(4, _omitFieldNames ? '' : 'bindInfo',
        subBuilder: BindInfo.create)
    ..aOM<BindResult>(5, _omitFieldNames ? '' : 'bindResult',
        subBuilder: BindResult.create)
    ..aOB(6, _omitFieldNames ? '' : 'loginStatus')
    ..aOS(7, _omitFieldNames ? '' : 'verifyKey')
    ..aOB(8, _omitFieldNames ? '' : 'verifyResult')
    ..aOM<BondApply>(9, _omitFieldNames ? '' : 'bondApply',
        subBuilder: BondApply.create)
    ..aOM<BondReply>(10, _omitFieldNames ? '' : 'bondReply',
        subBuilder: BondReply.create)
    ..aOM<BindStartV2>(11, _omitFieldNames ? '' : 'bindStartV2',
        subBuilder: BindStartV2.create)
    ..aOM<BindInfoV2>(12, _omitFieldNames ? '' : 'bindInfoV2',
        subBuilder: BindInfoV2.create)
    ..aOM<BindPsk_ServerVerify>(13, _omitFieldNames ? '' : 'pskServerVerify',
        subBuilder: BindPsk_ServerVerify.create)
    ..aOM<BindPsk_DeviceVerify>(14, _omitFieldNames ? '' : 'pskDeviceVerify',
        subBuilder: BindPsk_DeviceVerify.create)
    ..aOM<BindPsk_AppConfirm>(15, _omitFieldNames ? '' : 'pskAppConfirm',
        subBuilder: BindPsk_AppConfirm.create)
    ..aOM<BindPsk_DeviceConfirm>(16, _omitFieldNames ? '' : 'pskDeviceConfirm',
        subBuilder: BindPsk_DeviceConfirm.create)
    ..aOM<BindLocal_AppVerify>(17, _omitFieldNames ? '' : 'localAppVerify',
        subBuilder: BindLocal_AppVerify.create)
    ..aOM<BindLocal_DeviceVerify>(
        18, _omitFieldNames ? '' : 'localDeviceVerify',
        subBuilder: BindLocal_DeviceVerify.create)
    ..aOM<BindLocal_AppConfirm>(19, _omitFieldNames ? '' : 'localAppConfirm',
        subBuilder: BindLocal_AppConfirm.create)
    ..aOM<BindLocal_DeviceConfirm>(
        20, _omitFieldNames ? '' : 'localDeviceConfirm',
        subBuilder: BindLocal_DeviceConfirm.create)
    ..aOM<BindResultV2>(29, _omitFieldNames ? '' : 'bindResultV2',
        subBuilder: BindResultV2.create)
    ..aOM<Auth_AppVerify>(30, _omitFieldNames ? '' : 'authAppVerify',
        subBuilder: Auth_AppVerify.create)
    ..aOM<Auth_DeviceVerify>(31, _omitFieldNames ? '' : 'authDeviceVerify',
        subBuilder: Auth_DeviceVerify.create)
    ..aOM<Auth_AppConfirm>(32, _omitFieldNames ? '' : 'authAppConfirm',
        subBuilder: Auth_AppConfirm.create)
    ..aOM<Auth_DeviceConfirm>(33, _omitFieldNames ? '' : 'authDeviceConfirm',
        subBuilder: Auth_DeviceConfirm.create)
    ..aOM<Login_PassTokenApply>(34, _omitFieldNames ? '' : 'passTokenApply',
        subBuilder: Login_PassTokenApply.create)
    ..aOM<Login_PassTokenReply>(35, _omitFieldNames ? '' : 'passTokenReply',
        subBuilder: Login_PassTokenReply.create)
    ..aOM<Login_StatusChange>(36, _omitFieldNames ? '' : 'statusChange',
        subBuilder: Login_StatusChange.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account copyWith(void Function(Account) updates) =>
      super.copyWith((message) => updates(message as Account)) as Account;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  @$core.override
  Account createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

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
  @$pb.TagNumber(20)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  Account_Payload whichPayload() => _Account_PayloadByTag[$_whichOneof(0)]!;
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
  @$pb.TagNumber(20)
  @$pb.TagNumber(29)
  @$pb.TagNumber(30)
  @$pb.TagNumber(31)
  @$pb.TagNumber(32)
  @$pb.TagNumber(33)
  @$pb.TagNumber(34)
  @$pb.TagNumber(35)
  @$pb.TagNumber(36)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get bindStatus => $_getBF(0);
  @$pb.TagNumber(1)
  set bindStatus($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBindStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearBindStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get bindKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set bindKey($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBindKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearBindKey() => $_clearField(2);

  @$pb.TagNumber(3)
  Account_ErrorCode get errorCode => $_getN(2);
  @$pb.TagNumber(3)
  set errorCode(Account_ErrorCode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasErrorCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorCode() => $_clearField(3);

  @$pb.TagNumber(4)
  BindInfo get bindInfo => $_getN(3);
  @$pb.TagNumber(4)
  set bindInfo(BindInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBindInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearBindInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  BindInfo ensureBindInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  BindResult get bindResult => $_getN(4);
  @$pb.TagNumber(5)
  set bindResult(BindResult value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBindResult() => $_has(4);
  @$pb.TagNumber(5)
  void clearBindResult() => $_clearField(5);
  @$pb.TagNumber(5)
  BindResult ensureBindResult() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get loginStatus => $_getBF(5);
  @$pb.TagNumber(6)
  set loginStatus($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLoginStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearLoginStatus() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get verifyKey => $_getSZ(6);
  @$pb.TagNumber(7)
  set verifyKey($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasVerifyKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearVerifyKey() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get verifyResult => $_getBF(7);
  @$pb.TagNumber(8)
  set verifyResult($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasVerifyResult() => $_has(7);
  @$pb.TagNumber(8)
  void clearVerifyResult() => $_clearField(8);

  @$pb.TagNumber(9)
  BondApply get bondApply => $_getN(8);
  @$pb.TagNumber(9)
  set bondApply(BondApply value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasBondApply() => $_has(8);
  @$pb.TagNumber(9)
  void clearBondApply() => $_clearField(9);
  @$pb.TagNumber(9)
  BondApply ensureBondApply() => $_ensure(8);

  @$pb.TagNumber(10)
  BondReply get bondReply => $_getN(9);
  @$pb.TagNumber(10)
  set bondReply(BondReply value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasBondReply() => $_has(9);
  @$pb.TagNumber(10)
  void clearBondReply() => $_clearField(10);
  @$pb.TagNumber(10)
  BondReply ensureBondReply() => $_ensure(9);

  @$pb.TagNumber(11)
  BindStartV2 get bindStartV2 => $_getN(10);
  @$pb.TagNumber(11)
  set bindStartV2(BindStartV2 value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasBindStartV2() => $_has(10);
  @$pb.TagNumber(11)
  void clearBindStartV2() => $_clearField(11);
  @$pb.TagNumber(11)
  BindStartV2 ensureBindStartV2() => $_ensure(10);

  @$pb.TagNumber(12)
  BindInfoV2 get bindInfoV2 => $_getN(11);
  @$pb.TagNumber(12)
  set bindInfoV2(BindInfoV2 value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasBindInfoV2() => $_has(11);
  @$pb.TagNumber(12)
  void clearBindInfoV2() => $_clearField(12);
  @$pb.TagNumber(12)
  BindInfoV2 ensureBindInfoV2() => $_ensure(11);

  @$pb.TagNumber(13)
  BindPsk_ServerVerify get pskServerVerify => $_getN(12);
  @$pb.TagNumber(13)
  set pskServerVerify(BindPsk_ServerVerify value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasPskServerVerify() => $_has(12);
  @$pb.TagNumber(13)
  void clearPskServerVerify() => $_clearField(13);
  @$pb.TagNumber(13)
  BindPsk_ServerVerify ensurePskServerVerify() => $_ensure(12);

  @$pb.TagNumber(14)
  BindPsk_DeviceVerify get pskDeviceVerify => $_getN(13);
  @$pb.TagNumber(14)
  set pskDeviceVerify(BindPsk_DeviceVerify value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasPskDeviceVerify() => $_has(13);
  @$pb.TagNumber(14)
  void clearPskDeviceVerify() => $_clearField(14);
  @$pb.TagNumber(14)
  BindPsk_DeviceVerify ensurePskDeviceVerify() => $_ensure(13);

  @$pb.TagNumber(15)
  BindPsk_AppConfirm get pskAppConfirm => $_getN(14);
  @$pb.TagNumber(15)
  set pskAppConfirm(BindPsk_AppConfirm value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasPskAppConfirm() => $_has(14);
  @$pb.TagNumber(15)
  void clearPskAppConfirm() => $_clearField(15);
  @$pb.TagNumber(15)
  BindPsk_AppConfirm ensurePskAppConfirm() => $_ensure(14);

  @$pb.TagNumber(16)
  BindPsk_DeviceConfirm get pskDeviceConfirm => $_getN(15);
  @$pb.TagNumber(16)
  set pskDeviceConfirm(BindPsk_DeviceConfirm value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasPskDeviceConfirm() => $_has(15);
  @$pb.TagNumber(16)
  void clearPskDeviceConfirm() => $_clearField(16);
  @$pb.TagNumber(16)
  BindPsk_DeviceConfirm ensurePskDeviceConfirm() => $_ensure(15);

  @$pb.TagNumber(17)
  BindLocal_AppVerify get localAppVerify => $_getN(16);
  @$pb.TagNumber(17)
  set localAppVerify(BindLocal_AppVerify value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasLocalAppVerify() => $_has(16);
  @$pb.TagNumber(17)
  void clearLocalAppVerify() => $_clearField(17);
  @$pb.TagNumber(17)
  BindLocal_AppVerify ensureLocalAppVerify() => $_ensure(16);

  @$pb.TagNumber(18)
  BindLocal_DeviceVerify get localDeviceVerify => $_getN(17);
  @$pb.TagNumber(18)
  set localDeviceVerify(BindLocal_DeviceVerify value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasLocalDeviceVerify() => $_has(17);
  @$pb.TagNumber(18)
  void clearLocalDeviceVerify() => $_clearField(18);
  @$pb.TagNumber(18)
  BindLocal_DeviceVerify ensureLocalDeviceVerify() => $_ensure(17);

  @$pb.TagNumber(19)
  BindLocal_AppConfirm get localAppConfirm => $_getN(18);
  @$pb.TagNumber(19)
  set localAppConfirm(BindLocal_AppConfirm value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasLocalAppConfirm() => $_has(18);
  @$pb.TagNumber(19)
  void clearLocalAppConfirm() => $_clearField(19);
  @$pb.TagNumber(19)
  BindLocal_AppConfirm ensureLocalAppConfirm() => $_ensure(18);

  @$pb.TagNumber(20)
  BindLocal_DeviceConfirm get localDeviceConfirm => $_getN(19);
  @$pb.TagNumber(20)
  set localDeviceConfirm(BindLocal_DeviceConfirm value) =>
      $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasLocalDeviceConfirm() => $_has(19);
  @$pb.TagNumber(20)
  void clearLocalDeviceConfirm() => $_clearField(20);
  @$pb.TagNumber(20)
  BindLocal_DeviceConfirm ensureLocalDeviceConfirm() => $_ensure(19);

  @$pb.TagNumber(29)
  BindResultV2 get bindResultV2 => $_getN(20);
  @$pb.TagNumber(29)
  set bindResultV2(BindResultV2 value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasBindResultV2() => $_has(20);
  @$pb.TagNumber(29)
  void clearBindResultV2() => $_clearField(29);
  @$pb.TagNumber(29)
  BindResultV2 ensureBindResultV2() => $_ensure(20);

  @$pb.TagNumber(30)
  Auth_AppVerify get authAppVerify => $_getN(21);
  @$pb.TagNumber(30)
  set authAppVerify(Auth_AppVerify value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasAuthAppVerify() => $_has(21);
  @$pb.TagNumber(30)
  void clearAuthAppVerify() => $_clearField(30);
  @$pb.TagNumber(30)
  Auth_AppVerify ensureAuthAppVerify() => $_ensure(21);

  @$pb.TagNumber(31)
  Auth_DeviceVerify get authDeviceVerify => $_getN(22);
  @$pb.TagNumber(31)
  set authDeviceVerify(Auth_DeviceVerify value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasAuthDeviceVerify() => $_has(22);
  @$pb.TagNumber(31)
  void clearAuthDeviceVerify() => $_clearField(31);
  @$pb.TagNumber(31)
  Auth_DeviceVerify ensureAuthDeviceVerify() => $_ensure(22);

  @$pb.TagNumber(32)
  Auth_AppConfirm get authAppConfirm => $_getN(23);
  @$pb.TagNumber(32)
  set authAppConfirm(Auth_AppConfirm value) => $_setField(32, value);
  @$pb.TagNumber(32)
  $core.bool hasAuthAppConfirm() => $_has(23);
  @$pb.TagNumber(32)
  void clearAuthAppConfirm() => $_clearField(32);
  @$pb.TagNumber(32)
  Auth_AppConfirm ensureAuthAppConfirm() => $_ensure(23);

  @$pb.TagNumber(33)
  Auth_DeviceConfirm get authDeviceConfirm => $_getN(24);
  @$pb.TagNumber(33)
  set authDeviceConfirm(Auth_DeviceConfirm value) => $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasAuthDeviceConfirm() => $_has(24);
  @$pb.TagNumber(33)
  void clearAuthDeviceConfirm() => $_clearField(33);
  @$pb.TagNumber(33)
  Auth_DeviceConfirm ensureAuthDeviceConfirm() => $_ensure(24);

  @$pb.TagNumber(34)
  Login_PassTokenApply get passTokenApply => $_getN(25);
  @$pb.TagNumber(34)
  set passTokenApply(Login_PassTokenApply value) => $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasPassTokenApply() => $_has(25);
  @$pb.TagNumber(34)
  void clearPassTokenApply() => $_clearField(34);
  @$pb.TagNumber(34)
  Login_PassTokenApply ensurePassTokenApply() => $_ensure(25);

  @$pb.TagNumber(35)
  Login_PassTokenReply get passTokenReply => $_getN(26);
  @$pb.TagNumber(35)
  set passTokenReply(Login_PassTokenReply value) => $_setField(35, value);
  @$pb.TagNumber(35)
  $core.bool hasPassTokenReply() => $_has(26);
  @$pb.TagNumber(35)
  void clearPassTokenReply() => $_clearField(35);
  @$pb.TagNumber(35)
  Login_PassTokenReply ensurePassTokenReply() => $_ensure(26);

  @$pb.TagNumber(36)
  Login_StatusChange get statusChange => $_getN(27);
  @$pb.TagNumber(36)
  set statusChange(Login_StatusChange value) => $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasStatusChange() => $_has(27);
  @$pb.TagNumber(36)
  void clearStatusChange() => $_clearField(36);
  @$pb.TagNumber(36)
  Login_StatusChange ensureStatusChange() => $_ensure(27);
}

class BindInfo extends $pb.GeneratedMessage {
  factory BindInfo({
    $core.String? bindKey,
    $core.String? did,
    $core.String? model,
    $core.String? mac,
    $core.String? sign,
    $core.String? serialNumber,
  }) {
    final result = create();
    if (bindKey != null) result.bindKey = bindKey;
    if (did != null) result.did = did;
    if (model != null) result.model = model;
    if (mac != null) result.mac = mac;
    if (sign != null) result.sign = sign;
    if (serialNumber != null) result.serialNumber = serialNumber;
    return result;
  }

  BindInfo._();

  factory BindInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'bindKey')
    ..aQS(2, _omitFieldNames ? '' : 'did')
    ..aQS(3, _omitFieldNames ? '' : 'model')
    ..aQS(4, _omitFieldNames ? '' : 'mac')
    ..aQS(5, _omitFieldNames ? '' : 'sign')
    ..aQS(6, _omitFieldNames ? '' : 'serialNumber');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindInfo copyWith(void Function(BindInfo) updates) =>
      super.copyWith((message) => updates(message as BindInfo)) as BindInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindInfo create() => BindInfo._();
  @$core.override
  BindInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BindInfo>(create);
  static BindInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bindKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set bindKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBindKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearBindKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get did => $_getSZ(1);
  @$pb.TagNumber(2)
  set did($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDid() => $_has(1);
  @$pb.TagNumber(2)
  void clearDid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get model => $_getSZ(2);
  @$pb.TagNumber(3)
  set model($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearModel() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get mac => $_getSZ(3);
  @$pb.TagNumber(4)
  set mac($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMac() => $_has(3);
  @$pb.TagNumber(4)
  void clearMac() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sign => $_getSZ(4);
  @$pb.TagNumber(5)
  set sign($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSign() => $_has(4);
  @$pb.TagNumber(5)
  void clearSign() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get serialNumber => $_getSZ(5);
  @$pb.TagNumber(6)
  set serialNumber($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSerialNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearSerialNumber() => $_clearField(6);
}

class BindResult extends $pb.GeneratedMessage {
  factory BindResult({
    $core.String? userId,
    $core.String? token,
    CompanionDevice? companionDevice,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (token != null) result.token = token;
    if (companionDevice != null) result.companionDevice = companionDevice;
    return result;
  }

  BindResult._();

  factory BindResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'userId')
    ..aQS(2, _omitFieldNames ? '' : 'token')
    ..aOM<CompanionDevice>(3, _omitFieldNames ? '' : 'companionDevice',
        subBuilder: CompanionDevice.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindResult copyWith(void Function(BindResult) updates) =>
      super.copyWith((message) => updates(message as BindResult)) as BindResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindResult create() => BindResult._();
  @$core.override
  BindResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindResult>(create);
  static BindResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => $_clearField(2);

  @$pb.TagNumber(3)
  CompanionDevice get companionDevice => $_getN(2);
  @$pb.TagNumber(3)
  set companionDevice(CompanionDevice value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCompanionDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompanionDevice() => $_clearField(3);
  @$pb.TagNumber(3)
  CompanionDevice ensureCompanionDevice() => $_ensure(2);
}

class CompanionDevice extends $pb.GeneratedMessage {
  factory CompanionDevice({
    CompanionDevice_DeviceType? deviceType,
    $core.double? systemVersion,
    $core.String? deviceName,
    $core.int? appCapability,
    $core.String? region,
    $core.String? serverPrefix,
  }) {
    final result = create();
    if (deviceType != null) result.deviceType = deviceType;
    if (systemVersion != null) result.systemVersion = systemVersion;
    if (deviceName != null) result.deviceName = deviceName;
    if (appCapability != null) result.appCapability = appCapability;
    if (region != null) result.region = region;
    if (serverPrefix != null) result.serverPrefix = serverPrefix;
    return result;
  }

  CompanionDevice._();

  factory CompanionDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CompanionDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompanionDevice',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<CompanionDevice_DeviceType>(1, _omitFieldNames ? '' : 'deviceType',
        fieldType: $pb.PbFieldType.QE,
        enumValues: CompanionDevice_DeviceType.values)
    ..aD(2, _omitFieldNames ? '' : 'systemVersion',
        fieldType: $pb.PbFieldType.OF)
    ..aQS(3, _omitFieldNames ? '' : 'deviceName')
    ..aI(4, _omitFieldNames ? '' : 'appCapability',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'region')
    ..aOS(6, _omitFieldNames ? '' : 'serverPrefix');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompanionDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompanionDevice copyWith(void Function(CompanionDevice) updates) =>
      super.copyWith((message) => updates(message as CompanionDevice))
          as CompanionDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompanionDevice create() => CompanionDevice._();
  @$core.override
  CompanionDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CompanionDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompanionDevice>(create);
  static CompanionDevice? _defaultInstance;

  @$pb.TagNumber(1)
  CompanionDevice_DeviceType get deviceType => $_getN(0);
  @$pb.TagNumber(1)
  set deviceType(CompanionDevice_DeviceType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get systemVersion => $_getN(1);
  @$pb.TagNumber(2)
  set systemVersion($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSystemVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemVersion() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceName => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDeviceName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get appCapability => $_getIZ(3);
  @$pb.TagNumber(4)
  set appCapability($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAppCapability() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppCapability() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get region => $_getSZ(4);
  @$pb.TagNumber(5)
  set region($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRegion() => $_has(4);
  @$pb.TagNumber(5)
  void clearRegion() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get serverPrefix => $_getSZ(5);
  @$pb.TagNumber(6)
  set serverPrefix($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasServerPrefix() => $_has(5);
  @$pb.TagNumber(6)
  void clearServerPrefix() => $_clearField(6);
}

class BondApply extends $pb.GeneratedMessage {
  factory BondApply({
    $core.List<$core.int>? hashUserId,
  }) {
    final result = create();
    if (hashUserId != null) result.hashUserId = hashUserId;
    return result;
  }

  BondApply._();

  factory BondApply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BondApply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BondApply',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'hashUserId', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BondApply clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BondApply copyWith(void Function(BondApply) updates) =>
      super.copyWith((message) => updates(message as BondApply)) as BondApply;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BondApply create() => BondApply._();
  @$core.override
  BondApply createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BondApply getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BondApply>(create);
  static BondApply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hashUserId => $_getN(0);
  @$pb.TagNumber(1)
  set hashUserId($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHashUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHashUserId() => $_clearField(1);
}

class BondReply extends $pb.GeneratedMessage {
  factory BondReply({
    BondReply_Status? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  BondReply._();

  factory BondReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BondReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BondReply',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<BondReply_Status>(1, _omitFieldNames ? '' : 'status',
        fieldType: $pb.PbFieldType.QE, enumValues: BondReply_Status.values);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BondReply clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BondReply copyWith(void Function(BondReply) updates) =>
      super.copyWith((message) => updates(message as BondReply)) as BondReply;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BondReply create() => BondReply._();
  @$core.override
  BondReply createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BondReply getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BondReply>(create);
  static BondReply? _defaultInstance;

  @$pb.TagNumber(1)
  BondReply_Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(BondReply_Status value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

class BindStartV2 extends $pb.GeneratedMessage {
  factory BindStartV2({
    $core.bool? checkDynamicCode,
    $core.List<$core.int>? hashUserId,
    $core.String? deviceName,
    $core.int? pid,
  }) {
    final result = create();
    if (checkDynamicCode != null) result.checkDynamicCode = checkDynamicCode;
    if (hashUserId != null) result.hashUserId = hashUserId;
    if (deviceName != null) result.deviceName = deviceName;
    if (pid != null) result.pid = pid;
    return result;
  }

  BindStartV2._();

  factory BindStartV2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindStartV2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindStartV2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(
        1, _omitFieldNames ? '' : 'checkDynamicCode', $pb.PbFieldType.QB)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'hashUserId', $pb.PbFieldType.QY)
    ..aQS(3, _omitFieldNames ? '' : 'deviceName')
    ..aI(4, _omitFieldNames ? '' : 'pid', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindStartV2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindStartV2 copyWith(void Function(BindStartV2) updates) =>
      super.copyWith((message) => updates(message as BindStartV2))
          as BindStartV2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindStartV2 create() => BindStartV2._();
  @$core.override
  BindStartV2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindStartV2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindStartV2>(create);
  static BindStartV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get checkDynamicCode => $_getBF(0);
  @$pb.TagNumber(1)
  set checkDynamicCode($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCheckDynamicCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCheckDynamicCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get hashUserId => $_getN(1);
  @$pb.TagNumber(2)
  set hashUserId($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHashUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearHashUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceName => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDeviceName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pid => $_getIZ(3);
  @$pb.TagNumber(4)
  set pid($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPid() => $_has(3);
  @$pb.TagNumber(4)
  void clearPid() => $_clearField(4);
}

class BindInfoV2 extends $pb.GeneratedMessage {
  factory BindInfoV2({
    VerifyMode? verifyMode,
    $core.String? serialNumber,
    $core.String? mac,
    $core.String? model,
    OOBMode? oobMode,
    $core.List<$core.int>? deviceRandom,
    $core.String? did,
  }) {
    final result = create();
    if (verifyMode != null) result.verifyMode = verifyMode;
    if (serialNumber != null) result.serialNumber = serialNumber;
    if (mac != null) result.mac = mac;
    if (model != null) result.model = model;
    if (oobMode != null) result.oobMode = oobMode;
    if (deviceRandom != null) result.deviceRandom = deviceRandom;
    if (did != null) result.did = did;
    return result;
  }

  BindInfoV2._();

  factory BindInfoV2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindInfoV2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindInfoV2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<VerifyMode>(1, _omitFieldNames ? '' : 'verifyMode',
        fieldType: $pb.PbFieldType.QE, enumValues: VerifyMode.values)
    ..aQS(2, _omitFieldNames ? '' : 'serialNumber')
    ..aQS(3, _omitFieldNames ? '' : 'mac')
    ..aQS(4, _omitFieldNames ? '' : 'model')
    ..aE<OOBMode>(5, _omitFieldNames ? '' : 'oobMode',
        fieldType: $pb.PbFieldType.QE, enumValues: OOBMode.values)
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'deviceRandom', $pb.PbFieldType.QY)
    ..aQS(7, _omitFieldNames ? '' : 'did');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindInfoV2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindInfoV2 copyWith(void Function(BindInfoV2) updates) =>
      super.copyWith((message) => updates(message as BindInfoV2)) as BindInfoV2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindInfoV2 create() => BindInfoV2._();
  @$core.override
  BindInfoV2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindInfoV2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindInfoV2>(create);
  static BindInfoV2? _defaultInstance;

  @$pb.TagNumber(1)
  VerifyMode get verifyMode => $_getN(0);
  @$pb.TagNumber(1)
  set verifyMode(VerifyMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVerifyMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerifyMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get serialNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set serialNumber($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSerialNumber() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get mac => $_getSZ(2);
  @$pb.TagNumber(3)
  set mac($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMac() => $_has(2);
  @$pb.TagNumber(3)
  void clearMac() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get model => $_getSZ(3);
  @$pb.TagNumber(4)
  set model($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasModel() => $_has(3);
  @$pb.TagNumber(4)
  void clearModel() => $_clearField(4);

  @$pb.TagNumber(5)
  OOBMode get oobMode => $_getN(4);
  @$pb.TagNumber(5)
  set oobMode(OOBMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOobMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearOobMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get deviceRandom => $_getN(5);
  @$pb.TagNumber(6)
  set deviceRandom($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDeviceRandom() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceRandom() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get did => $_getSZ(6);
  @$pb.TagNumber(7)
  set did($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDid() => $_has(6);
  @$pb.TagNumber(7)
  void clearDid() => $_clearField(7);
}

class BindPsk_ServerVerify extends $pb.GeneratedMessage {
  factory BindPsk_ServerVerify({
    $core.List<$core.int>? serverPublicKey,
    $core.List<$core.int>? serverSign,
    $core.List<$core.int>? serverRandom,
  }) {
    final result = create();
    if (serverPublicKey != null) result.serverPublicKey = serverPublicKey;
    if (serverSign != null) result.serverSign = serverSign;
    if (serverRandom != null) result.serverRandom = serverRandom;
    return result;
  }

  BindPsk_ServerVerify._();

  factory BindPsk_ServerVerify.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindPsk_ServerVerify.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindPsk.ServerVerify',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'serverPublicKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'serverSign', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'serverRandom', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_ServerVerify clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_ServerVerify copyWith(void Function(BindPsk_ServerVerify) updates) =>
      super.copyWith((message) => updates(message as BindPsk_ServerVerify))
          as BindPsk_ServerVerify;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindPsk_ServerVerify create() => BindPsk_ServerVerify._();
  @$core.override
  BindPsk_ServerVerify createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindPsk_ServerVerify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindPsk_ServerVerify>(create);
  static BindPsk_ServerVerify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get serverPublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set serverPublicKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasServerPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerPublicKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get serverSign => $_getN(1);
  @$pb.TagNumber(2)
  set serverSign($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasServerSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearServerSign() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get serverRandom => $_getN(2);
  @$pb.TagNumber(3)
  set serverRandom($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasServerRandom() => $_has(2);
  @$pb.TagNumber(3)
  void clearServerRandom() => $_clearField(3);
}

class BindPsk_DeviceVerify extends $pb.GeneratedMessage {
  factory BindPsk_DeviceVerify({
    $core.List<$core.int>? devicePublicKey,
    $core.List<$core.int>? deviceSign,
  }) {
    final result = create();
    if (devicePublicKey != null) result.devicePublicKey = devicePublicKey;
    if (deviceSign != null) result.deviceSign = deviceSign;
    return result;
  }

  BindPsk_DeviceVerify._();

  factory BindPsk_DeviceVerify.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindPsk_DeviceVerify.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindPsk.DeviceVerify',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'devicePublicKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'deviceSign', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_DeviceVerify clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_DeviceVerify copyWith(void Function(BindPsk_DeviceVerify) updates) =>
      super.copyWith((message) => updates(message as BindPsk_DeviceVerify))
          as BindPsk_DeviceVerify;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindPsk_DeviceVerify create() => BindPsk_DeviceVerify._();
  @$core.override
  BindPsk_DeviceVerify createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindPsk_DeviceVerify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindPsk_DeviceVerify>(create);
  static BindPsk_DeviceVerify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get devicePublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set devicePublicKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDevicePublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevicePublicKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get deviceSign => $_getN(1);
  @$pb.TagNumber(2)
  set deviceSign($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceSign() => $_clearField(2);
}

class BindPsk_AppConfirm extends $pb.GeneratedMessage {
  factory BindPsk_AppConfirm({
    $core.List<$core.int>? appRandom,
    $core.List<$core.int>? appSign,
    $core.List<$core.int>? bindKey,
  }) {
    final result = create();
    if (appRandom != null) result.appRandom = appRandom;
    if (appSign != null) result.appSign = appSign;
    if (bindKey != null) result.bindKey = bindKey;
    return result;
  }

  BindPsk_AppConfirm._();

  factory BindPsk_AppConfirm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindPsk_AppConfirm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindPsk.AppConfirm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'appRandom', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'appSign', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'bindKey', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_AppConfirm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_AppConfirm copyWith(void Function(BindPsk_AppConfirm) updates) =>
      super.copyWith((message) => updates(message as BindPsk_AppConfirm))
          as BindPsk_AppConfirm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindPsk_AppConfirm create() => BindPsk_AppConfirm._();
  @$core.override
  BindPsk_AppConfirm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindPsk_AppConfirm getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindPsk_AppConfirm>(create);
  static BindPsk_AppConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get appRandom => $_getN(0);
  @$pb.TagNumber(1)
  set appRandom($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppRandom() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppRandom() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get appSign => $_getN(1);
  @$pb.TagNumber(2)
  set appSign($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppSign() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get bindKey => $_getN(2);
  @$pb.TagNumber(3)
  set bindKey($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBindKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearBindKey() => $_clearField(3);
}

class BindPsk_DeviceConfirm extends $pb.GeneratedMessage {
  factory BindPsk_DeviceConfirm({
    $core.List<$core.int>? deviceRandom,
    $core.List<$core.int>? deviceSign,
    $core.List<$core.int>? bindSign,
  }) {
    final result = create();
    if (deviceRandom != null) result.deviceRandom = deviceRandom;
    if (deviceSign != null) result.deviceSign = deviceSign;
    if (bindSign != null) result.bindSign = bindSign;
    return result;
  }

  BindPsk_DeviceConfirm._();

  factory BindPsk_DeviceConfirm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindPsk_DeviceConfirm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindPsk.DeviceConfirm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'deviceRandom', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'deviceSign', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'bindSign', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_DeviceConfirm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_DeviceConfirm copyWith(
          void Function(BindPsk_DeviceConfirm) updates) =>
      super.copyWith((message) => updates(message as BindPsk_DeviceConfirm))
          as BindPsk_DeviceConfirm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindPsk_DeviceConfirm create() => BindPsk_DeviceConfirm._();
  @$core.override
  BindPsk_DeviceConfirm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindPsk_DeviceConfirm getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindPsk_DeviceConfirm>(create);
  static BindPsk_DeviceConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get deviceRandom => $_getN(0);
  @$pb.TagNumber(1)
  set deviceRandom($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceRandom() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceRandom() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get deviceSign => $_getN(1);
  @$pb.TagNumber(2)
  set deviceSign($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceSign() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get bindSign => $_getN(2);
  @$pb.TagNumber(3)
  set bindSign($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBindSign() => $_has(2);
  @$pb.TagNumber(3)
  void clearBindSign() => $_clearField(3);
}

class BindPsk_ResultInfo extends $pb.GeneratedMessage {
  factory BindPsk_ResultInfo({
    $core.String? userId,
    CompanionDevice? companionDevice,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (companionDevice != null) result.companionDevice = companionDevice;
    return result;
  }

  BindPsk_ResultInfo._();

  factory BindPsk_ResultInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindPsk_ResultInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindPsk.ResultInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'userId')
    ..aOM<CompanionDevice>(2, _omitFieldNames ? '' : 'companionDevice',
        subBuilder: CompanionDevice.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_ResultInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk_ResultInfo copyWith(void Function(BindPsk_ResultInfo) updates) =>
      super.copyWith((message) => updates(message as BindPsk_ResultInfo))
          as BindPsk_ResultInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindPsk_ResultInfo create() => BindPsk_ResultInfo._();
  @$core.override
  BindPsk_ResultInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindPsk_ResultInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindPsk_ResultInfo>(create);
  static BindPsk_ResultInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  CompanionDevice get companionDevice => $_getN(1);
  @$pb.TagNumber(2)
  set companionDevice(CompanionDevice value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCompanionDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompanionDevice() => $_clearField(2);
  @$pb.TagNumber(2)
  CompanionDevice ensureCompanionDevice() => $_ensure(1);
}

class BindPsk extends $pb.GeneratedMessage {
  factory BindPsk() => create();

  BindPsk._();

  factory BindPsk.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindPsk.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindPsk',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindPsk copyWith(void Function(BindPsk) updates) =>
      super.copyWith((message) => updates(message as BindPsk)) as BindPsk;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindPsk create() => BindPsk._();
  @$core.override
  BindPsk createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindPsk getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BindPsk>(create);
  static BindPsk? _defaultInstance;
}

class BindLocal_AppVerify extends $pb.GeneratedMessage {
  factory BindLocal_AppVerify({
    $core.String? appDeviceId,
    $core.List<$core.int>? appPublicKey,
  }) {
    final result = create();
    if (appDeviceId != null) result.appDeviceId = appDeviceId;
    if (appPublicKey != null) result.appPublicKey = appPublicKey;
    return result;
  }

  BindLocal_AppVerify._();

  factory BindLocal_AppVerify.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindLocal_AppVerify.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindLocal.AppVerify',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'appDeviceId')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'appPublicKey', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_AppVerify clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_AppVerify copyWith(void Function(BindLocal_AppVerify) updates) =>
      super.copyWith((message) => updates(message as BindLocal_AppVerify))
          as BindLocal_AppVerify;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindLocal_AppVerify create() => BindLocal_AppVerify._();
  @$core.override
  BindLocal_AppVerify createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindLocal_AppVerify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindLocal_AppVerify>(create);
  static BindLocal_AppVerify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appDeviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appDeviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get appPublicKey => $_getN(1);
  @$pb.TagNumber(2)
  set appPublicKey($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppPublicKey() => $_clearField(2);
}

class BindLocal_DeviceVerify extends $pb.GeneratedMessage {
  factory BindLocal_DeviceVerify({
    $core.List<$core.int>? devicePublicKey,
    $core.List<$core.int>? deviceRandom,
    $core.List<$core.int>? deviceSign,
  }) {
    final result = create();
    if (devicePublicKey != null) result.devicePublicKey = devicePublicKey;
    if (deviceRandom != null) result.deviceRandom = deviceRandom;
    if (deviceSign != null) result.deviceSign = deviceSign;
    return result;
  }

  BindLocal_DeviceVerify._();

  factory BindLocal_DeviceVerify.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindLocal_DeviceVerify.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindLocal.DeviceVerify',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'devicePublicKey', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'deviceRandom', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'deviceSign', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_DeviceVerify clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_DeviceVerify copyWith(
          void Function(BindLocal_DeviceVerify) updates) =>
      super.copyWith((message) => updates(message as BindLocal_DeviceVerify))
          as BindLocal_DeviceVerify;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindLocal_DeviceVerify create() => BindLocal_DeviceVerify._();
  @$core.override
  BindLocal_DeviceVerify createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindLocal_DeviceVerify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindLocal_DeviceVerify>(create);
  static BindLocal_DeviceVerify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get devicePublicKey => $_getN(0);
  @$pb.TagNumber(1)
  set devicePublicKey($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDevicePublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevicePublicKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get deviceRandom => $_getN(1);
  @$pb.TagNumber(2)
  set deviceRandom($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceRandom() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceRandom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get deviceSign => $_getN(2);
  @$pb.TagNumber(3)
  set deviceSign($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDeviceSign() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceSign() => $_clearField(3);
}

class BindLocal_AppConfirm extends $pb.GeneratedMessage {
  factory BindLocal_AppConfirm({
    $core.List<$core.int>? appRandom,
    $core.List<$core.int>? appSign,
  }) {
    final result = create();
    if (appRandom != null) result.appRandom = appRandom;
    if (appSign != null) result.appSign = appSign;
    return result;
  }

  BindLocal_AppConfirm._();

  factory BindLocal_AppConfirm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindLocal_AppConfirm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindLocal.AppConfirm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'appRandom', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'appSign', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_AppConfirm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_AppConfirm copyWith(void Function(BindLocal_AppConfirm) updates) =>
      super.copyWith((message) => updates(message as BindLocal_AppConfirm))
          as BindLocal_AppConfirm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindLocal_AppConfirm create() => BindLocal_AppConfirm._();
  @$core.override
  BindLocal_AppConfirm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindLocal_AppConfirm getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindLocal_AppConfirm>(create);
  static BindLocal_AppConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get appRandom => $_getN(0);
  @$pb.TagNumber(1)
  set appRandom($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppRandom() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppRandom() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get appSign => $_getN(1);
  @$pb.TagNumber(2)
  set appSign($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppSign() => $_clearField(2);
}

class BindLocal_DeviceConfirm extends $pb.GeneratedMessage {
  factory BindLocal_DeviceConfirm({
    $core.bool? confirmResult,
  }) {
    final result = create();
    if (confirmResult != null) result.confirmResult = confirmResult;
    return result;
  }

  BindLocal_DeviceConfirm._();

  factory BindLocal_DeviceConfirm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindLocal_DeviceConfirm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindLocal.DeviceConfirm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(
        1, _omitFieldNames ? '' : 'confirmResult', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_DeviceConfirm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_DeviceConfirm copyWith(
          void Function(BindLocal_DeviceConfirm) updates) =>
      super.copyWith((message) => updates(message as BindLocal_DeviceConfirm))
          as BindLocal_DeviceConfirm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindLocal_DeviceConfirm create() => BindLocal_DeviceConfirm._();
  @$core.override
  BindLocal_DeviceConfirm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindLocal_DeviceConfirm getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindLocal_DeviceConfirm>(create);
  static BindLocal_DeviceConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get confirmResult => $_getBF(0);
  @$pb.TagNumber(1)
  set confirmResult($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConfirmResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfirmResult() => $_clearField(1);
}

class BindLocal_ResultInfo extends $pb.GeneratedMessage {
  factory BindLocal_ResultInfo({
    $core.String? userId,
    CompanionDevice? companionDevice,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (companionDevice != null) result.companionDevice = companionDevice;
    return result;
  }

  BindLocal_ResultInfo._();

  factory BindLocal_ResultInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindLocal_ResultInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindLocal.ResultInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'userId')
    ..aQM<CompanionDevice>(2, _omitFieldNames ? '' : 'companionDevice',
        subBuilder: CompanionDevice.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_ResultInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal_ResultInfo copyWith(void Function(BindLocal_ResultInfo) updates) =>
      super.copyWith((message) => updates(message as BindLocal_ResultInfo))
          as BindLocal_ResultInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindLocal_ResultInfo create() => BindLocal_ResultInfo._();
  @$core.override
  BindLocal_ResultInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindLocal_ResultInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindLocal_ResultInfo>(create);
  static BindLocal_ResultInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  CompanionDevice get companionDevice => $_getN(1);
  @$pb.TagNumber(2)
  set companionDevice(CompanionDevice value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCompanionDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompanionDevice() => $_clearField(2);
  @$pb.TagNumber(2)
  CompanionDevice ensureCompanionDevice() => $_ensure(1);
}

class BindLocal extends $pb.GeneratedMessage {
  factory BindLocal() => create();

  BindLocal._();

  factory BindLocal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindLocal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindLocal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindLocal copyWith(void Function(BindLocal) updates) =>
      super.copyWith((message) => updates(message as BindLocal)) as BindLocal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindLocal create() => BindLocal._();
  @$core.override
  BindLocal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindLocal getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BindLocal>(create);
  static BindLocal? _defaultInstance;
}

class BindResultV2 extends $pb.GeneratedMessage {
  factory BindResultV2({
    $core.List<$core.int>? encryptResultInfo,
  }) {
    final result = create();
    if (encryptResultInfo != null) result.encryptResultInfo = encryptResultInfo;
    return result;
  }

  BindResultV2._();

  factory BindResultV2.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BindResultV2.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BindResultV2',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'encryptResultInfo', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindResultV2 clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BindResultV2 copyWith(void Function(BindResultV2) updates) =>
      super.copyWith((message) => updates(message as BindResultV2))
          as BindResultV2;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BindResultV2 create() => BindResultV2._();
  @$core.override
  BindResultV2 createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BindResultV2 getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BindResultV2>(create);
  static BindResultV2? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encryptResultInfo => $_getN(0);
  @$pb.TagNumber(1)
  set encryptResultInfo($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEncryptResultInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncryptResultInfo() => $_clearField(1);
}

class Auth_AppVerify extends $pb.GeneratedMessage {
  factory Auth_AppVerify({
    $core.List<$core.int>? appRandom,
    $core.String? appDeviceId,
    $core.bool? checkDynamicCode,
  }) {
    final result = create();
    if (appRandom != null) result.appRandom = appRandom;
    if (appDeviceId != null) result.appDeviceId = appDeviceId;
    if (checkDynamicCode != null) result.checkDynamicCode = checkDynamicCode;
    return result;
  }

  Auth_AppVerify._();

  factory Auth_AppVerify.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Auth_AppVerify.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Auth.AppVerify',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'appRandom', $pb.PbFieldType.QY)
    ..aOS(2, _omitFieldNames ? '' : 'appDeviceId')
    ..aOB(3, _omitFieldNames ? '' : 'checkDynamicCode');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth_AppVerify clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth_AppVerify copyWith(void Function(Auth_AppVerify) updates) =>
      super.copyWith((message) => updates(message as Auth_AppVerify))
          as Auth_AppVerify;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth_AppVerify create() => Auth_AppVerify._();
  @$core.override
  Auth_AppVerify createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Auth_AppVerify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Auth_AppVerify>(create);
  static Auth_AppVerify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get appRandom => $_getN(0);
  @$pb.TagNumber(1)
  set appRandom($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppRandom() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppRandom() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get appDeviceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appDeviceId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAppDeviceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppDeviceId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get checkDynamicCode => $_getBF(2);
  @$pb.TagNumber(3)
  set checkDynamicCode($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCheckDynamicCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCheckDynamicCode() => $_clearField(3);
}

class Auth_DeviceVerify extends $pb.GeneratedMessage {
  factory Auth_DeviceVerify({
    $core.List<$core.int>? deviceRandom,
    $core.List<$core.int>? deviceSign,
  }) {
    final result = create();
    if (deviceRandom != null) result.deviceRandom = deviceRandom;
    if (deviceSign != null) result.deviceSign = deviceSign;
    return result;
  }

  Auth_DeviceVerify._();

  factory Auth_DeviceVerify.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Auth_DeviceVerify.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Auth.DeviceVerify',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'deviceRandom', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'deviceSign', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth_DeviceVerify clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth_DeviceVerify copyWith(void Function(Auth_DeviceVerify) updates) =>
      super.copyWith((message) => updates(message as Auth_DeviceVerify))
          as Auth_DeviceVerify;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth_DeviceVerify create() => Auth_DeviceVerify._();
  @$core.override
  Auth_DeviceVerify createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Auth_DeviceVerify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Auth_DeviceVerify>(create);
  static Auth_DeviceVerify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get deviceRandom => $_getN(0);
  @$pb.TagNumber(1)
  set deviceRandom($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceRandom() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceRandom() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get deviceSign => $_getN(1);
  @$pb.TagNumber(2)
  set deviceSign($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceSign() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceSign() => $_clearField(2);
}

class Auth_AppConfirm extends $pb.GeneratedMessage {
  factory Auth_AppConfirm({
    $core.List<$core.int>? appSign,
    $core.List<$core.int>? encryptCompanionDevice,
  }) {
    final result = create();
    if (appSign != null) result.appSign = appSign;
    if (encryptCompanionDevice != null)
      result.encryptCompanionDevice = encryptCompanionDevice;
    return result;
  }

  Auth_AppConfirm._();

  factory Auth_AppConfirm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Auth_AppConfirm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Auth.AppConfirm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'appSign', $pb.PbFieldType.QY)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'encryptCompanionDevice', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth_AppConfirm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth_AppConfirm copyWith(void Function(Auth_AppConfirm) updates) =>
      super.copyWith((message) => updates(message as Auth_AppConfirm))
          as Auth_AppConfirm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth_AppConfirm create() => Auth_AppConfirm._();
  @$core.override
  Auth_AppConfirm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Auth_AppConfirm getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Auth_AppConfirm>(create);
  static Auth_AppConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get appSign => $_getN(0);
  @$pb.TagNumber(1)
  set appSign($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppSign() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppSign() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encryptCompanionDevice => $_getN(1);
  @$pb.TagNumber(2)
  set encryptCompanionDevice($core.List<$core.int> value) =>
      $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEncryptCompanionDevice() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncryptCompanionDevice() => $_clearField(2);
}

class Auth_DeviceConfirm extends $pb.GeneratedMessage {
  factory Auth_DeviceConfirm({
    $core.bool? confirmResult,
    $core.int? deviceCapability,
    $core.int? deviceCapability2,
  }) {
    final result = create();
    if (confirmResult != null) result.confirmResult = confirmResult;
    if (deviceCapability != null) result.deviceCapability = deviceCapability;
    if (deviceCapability2 != null) result.deviceCapability2 = deviceCapability2;
    return result;
  }

  Auth_DeviceConfirm._();

  factory Auth_DeviceConfirm.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Auth_DeviceConfirm.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Auth.DeviceConfirm',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(
        1, _omitFieldNames ? '' : 'confirmResult', $pb.PbFieldType.QB)
    ..aI(2, _omitFieldNames ? '' : 'deviceCapability',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'deviceCapability2',
        protoName: 'device_capability_2', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth_DeviceConfirm clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth_DeviceConfirm copyWith(void Function(Auth_DeviceConfirm) updates) =>
      super.copyWith((message) => updates(message as Auth_DeviceConfirm))
          as Auth_DeviceConfirm;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth_DeviceConfirm create() => Auth_DeviceConfirm._();
  @$core.override
  Auth_DeviceConfirm createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Auth_DeviceConfirm getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Auth_DeviceConfirm>(create);
  static Auth_DeviceConfirm? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get confirmResult => $_getBF(0);
  @$pb.TagNumber(1)
  set confirmResult($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConfirmResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfirmResult() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get deviceCapability => $_getIZ(1);
  @$pb.TagNumber(2)
  set deviceCapability($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceCapability() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceCapability() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get deviceCapability2 => $_getIZ(2);
  @$pb.TagNumber(3)
  set deviceCapability2($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDeviceCapability2() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceCapability2() => $_clearField(3);
}

class Auth extends $pb.GeneratedMessage {
  factory Auth() => create();

  Auth._();

  factory Auth.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Auth.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Auth',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Auth copyWith(void Function(Auth) updates) =>
      super.copyWith((message) => updates(message as Auth)) as Auth;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Auth create() => Auth._();
  @$core.override
  Auth createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Auth getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Auth>(create);
  static Auth? _defaultInstance;
}

class Login_PassTokenApply extends $pb.GeneratedMessage {
  factory Login_PassTokenApply({
    $fixnum.Int64? transactionId,
    $core.String? ua,
    $core.String? nonce,
    $core.String? sign,
  }) {
    final result = create();
    if (transactionId != null) result.transactionId = transactionId;
    if (ua != null) result.ua = ua;
    if (nonce != null) result.nonce = nonce;
    if (sign != null) result.sign = sign;
    return result;
  }

  Login_PassTokenApply._();

  factory Login_PassTokenApply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Login_PassTokenApply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Login.PassTokenApply',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'transactionId', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, _omitFieldNames ? '' : 'ua')
    ..aQS(3, _omitFieldNames ? '' : 'nonce')
    ..aQS(4, _omitFieldNames ? '' : 'sign');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login_PassTokenApply clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login_PassTokenApply copyWith(void Function(Login_PassTokenApply) updates) =>
      super.copyWith((message) => updates(message as Login_PassTokenApply))
          as Login_PassTokenApply;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Login_PassTokenApply create() => Login_PassTokenApply._();
  @$core.override
  Login_PassTokenApply createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Login_PassTokenApply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Login_PassTokenApply>(create);
  static Login_PassTokenApply? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get transactionId => $_getI64(0);
  @$pb.TagNumber(1)
  set transactionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get ua => $_getSZ(1);
  @$pb.TagNumber(2)
  set ua($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUa() => $_has(1);
  @$pb.TagNumber(2)
  void clearUa() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get nonce => $_getSZ(2);
  @$pb.TagNumber(3)
  set nonce($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNonce() => $_has(2);
  @$pb.TagNumber(3)
  void clearNonce() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sign => $_getSZ(3);
  @$pb.TagNumber(4)
  set sign($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSign() => $_has(3);
  @$pb.TagNumber(4)
  void clearSign() => $_clearField(4);
}

class Login_PassTokenReply extends $pb.GeneratedMessage {
  factory Login_PassTokenReply({
    $fixnum.Int64? transactionId,
    $core.String? loginData,
  }) {
    final result = create();
    if (transactionId != null) result.transactionId = transactionId;
    if (loginData != null) result.loginData = loginData;
    return result;
  }

  Login_PassTokenReply._();

  factory Login_PassTokenReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Login_PassTokenReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Login.PassTokenReply',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'transactionId', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aQS(2, _omitFieldNames ? '' : 'loginData');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login_PassTokenReply clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login_PassTokenReply copyWith(void Function(Login_PassTokenReply) updates) =>
      super.copyWith((message) => updates(message as Login_PassTokenReply))
          as Login_PassTokenReply;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Login_PassTokenReply create() => Login_PassTokenReply._();
  @$core.override
  Login_PassTokenReply createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Login_PassTokenReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Login_PassTokenReply>(create);
  static Login_PassTokenReply? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get transactionId => $_getI64(0);
  @$pb.TagNumber(1)
  set transactionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTransactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get loginData => $_getSZ(1);
  @$pb.TagNumber(2)
  set loginData($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLoginData() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoginData() => $_clearField(2);
}

class Login_StatusChange extends $pb.GeneratedMessage {
  factory Login_StatusChange({
    $core.int? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  Login_StatusChange._();

  factory Login_StatusChange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Login_StatusChange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Login.StatusChange',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login_StatusChange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login_StatusChange copyWith(void Function(Login_StatusChange) updates) =>
      super.copyWith((message) => updates(message as Login_StatusChange))
          as Login_StatusChange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Login_StatusChange create() => Login_StatusChange._();
  @$core.override
  Login_StatusChange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Login_StatusChange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Login_StatusChange>(create);
  static Login_StatusChange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

class Login extends $pb.GeneratedMessage {
  factory Login() => create();

  Login._();

  factory Login.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Login.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Login',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Login copyWith(void Function(Login) updates) =>
      super.copyWith((message) => updates(message as Login)) as Login;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Login create() => Login._();
  @$core.override
  Login createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Login getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Login>(create);
  static Login? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
