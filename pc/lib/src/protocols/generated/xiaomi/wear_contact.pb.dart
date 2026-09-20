// This is a generated file - do not edit.
//
// Generated from wear_contact.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_contact.pbenum.dart';

enum Contact_Payload {
  emergencyContact,
  number,
  contactInfo,
  contactInfoList,
  miuiSosRequest,
  miuiSosResponse,
  helpRequest,
  notSet
}

class Contact extends $pb.GeneratedMessage {
  factory Contact({
    EmergencyContact? emergencyContact,
    $core.String? number,
    ContactInfo? contactInfo,
    ContactInfo_List? contactInfoList,
    MiuiSOS_Request? miuiSosRequest,
    MiuiSOS_Response? miuiSosResponse,
    HelpRequest? helpRequest,
  }) {
    final result = create();
    if (emergencyContact != null) result.emergencyContact = emergencyContact;
    if (number != null) result.number = number;
    if (contactInfo != null) result.contactInfo = contactInfo;
    if (contactInfoList != null) result.contactInfoList = contactInfoList;
    if (miuiSosRequest != null) result.miuiSosRequest = miuiSosRequest;
    if (miuiSosResponse != null) result.miuiSosResponse = miuiSosResponse;
    if (helpRequest != null) result.helpRequest = helpRequest;
    return result;
  }

  Contact._();

  factory Contact.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Contact.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Contact_Payload> _Contact_PayloadByTag = {
    1: Contact_Payload.emergencyContact,
    2: Contact_Payload.number,
    3: Contact_Payload.contactInfo,
    4: Contact_Payload.contactInfoList,
    5: Contact_Payload.miuiSosRequest,
    6: Contact_Payload.miuiSosResponse,
    7: Contact_Payload.helpRequest,
    0: Contact_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Contact',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..aOM<EmergencyContact>(1, _omitFieldNames ? '' : 'emergencyContact',
        subBuilder: EmergencyContact.create)
    ..aOS(2, _omitFieldNames ? '' : 'number')
    ..aOM<ContactInfo>(3, _omitFieldNames ? '' : 'contactInfo',
        subBuilder: ContactInfo.create)
    ..aOM<ContactInfo_List>(4, _omitFieldNames ? '' : 'contactInfoList',
        subBuilder: ContactInfo_List.create)
    ..aOM<MiuiSOS_Request>(5, _omitFieldNames ? '' : 'miuiSosRequest',
        subBuilder: MiuiSOS_Request.create)
    ..aOM<MiuiSOS_Response>(6, _omitFieldNames ? '' : 'miuiSosResponse',
        subBuilder: MiuiSOS_Response.create)
    ..aOM<HelpRequest>(7, _omitFieldNames ? '' : 'helpRequest',
        subBuilder: HelpRequest.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Contact clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Contact copyWith(void Function(Contact) updates) =>
      super.copyWith((message) => updates(message as Contact)) as Contact;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Contact create() => Contact._();
  @$core.override
  Contact createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Contact getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Contact>(create);
  static Contact? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  Contact_Payload whichPayload() => _Contact_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  EmergencyContact get emergencyContact => $_getN(0);
  @$pb.TagNumber(1)
  set emergencyContact(EmergencyContact value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasEmergencyContact() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmergencyContact() => $_clearField(1);
  @$pb.TagNumber(1)
  EmergencyContact ensureEmergencyContact() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get number => $_getSZ(1);
  @$pb.TagNumber(2)
  set number($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => $_clearField(2);

  @$pb.TagNumber(3)
  ContactInfo get contactInfo => $_getN(2);
  @$pb.TagNumber(3)
  set contactInfo(ContactInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasContactInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearContactInfo() => $_clearField(3);
  @$pb.TagNumber(3)
  ContactInfo ensureContactInfo() => $_ensure(2);

  @$pb.TagNumber(4)
  ContactInfo_List get contactInfoList => $_getN(3);
  @$pb.TagNumber(4)
  set contactInfoList(ContactInfo_List value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasContactInfoList() => $_has(3);
  @$pb.TagNumber(4)
  void clearContactInfoList() => $_clearField(4);
  @$pb.TagNumber(4)
  ContactInfo_List ensureContactInfoList() => $_ensure(3);

  @$pb.TagNumber(5)
  MiuiSOS_Request get miuiSosRequest => $_getN(4);
  @$pb.TagNumber(5)
  set miuiSosRequest(MiuiSOS_Request value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMiuiSosRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearMiuiSosRequest() => $_clearField(5);
  @$pb.TagNumber(5)
  MiuiSOS_Request ensureMiuiSosRequest() => $_ensure(4);

  @$pb.TagNumber(6)
  MiuiSOS_Response get miuiSosResponse => $_getN(5);
  @$pb.TagNumber(6)
  set miuiSosResponse(MiuiSOS_Response value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMiuiSosResponse() => $_has(5);
  @$pb.TagNumber(6)
  void clearMiuiSosResponse() => $_clearField(6);
  @$pb.TagNumber(6)
  MiuiSOS_Response ensureMiuiSosResponse() => $_ensure(5);

  @$pb.TagNumber(7)
  HelpRequest get helpRequest => $_getN(6);
  @$pb.TagNumber(7)
  set helpRequest(HelpRequest value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasHelpRequest() => $_has(6);
  @$pb.TagNumber(7)
  void clearHelpRequest() => $_clearField(7);
  @$pb.TagNumber(7)
  HelpRequest ensureHelpRequest() => $_ensure(6);
}

class ContactInfo_List extends $pb.GeneratedMessage {
  factory ContactInfo_List({
    $core.Iterable<ContactInfo>? list,
    $core.int? currentSegment,
    $core.int? totalSegment,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (currentSegment != null) result.currentSegment = currentSegment;
    if (totalSegment != null) result.totalSegment = totalSegment;
    return result;
  }

  ContactInfo_List._();

  factory ContactInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContactInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContactInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<ContactInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: ContactInfo.create)
    ..aI(2, _omitFieldNames ? '' : 'currentSegment',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'totalSegment',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactInfo_List copyWith(void Function(ContactInfo_List) updates) =>
      super.copyWith((message) => updates(message as ContactInfo_List))
          as ContactInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactInfo_List create() => ContactInfo_List._();
  @$core.override
  ContactInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContactInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContactInfo_List>(create);
  static ContactInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ContactInfo> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get currentSegment => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentSegment($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentSegment() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentSegment() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalSegment => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalSegment($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalSegment() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalSegment() => $_clearField(3);
}

class ContactInfo extends $pb.GeneratedMessage {
  factory ContactInfo({
    $core.String? name,
    $core.String? number,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (number != null) result.number = number;
    return result;
  }

  ContactInfo._();

  factory ContactInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContactInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContactInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aQS(2, _omitFieldNames ? '' : 'number');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactInfo copyWith(void Function(ContactInfo) updates) =>
      super.copyWith((message) => updates(message as ContactInfo))
          as ContactInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactInfo create() => ContactInfo._();
  @$core.override
  ContactInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ContactInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContactInfo>(create);
  static ContactInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get number => $_getSZ(1);
  @$pb.TagNumber(2)
  set number($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => $_clearField(2);
}

class EmergencyContact extends $pb.GeneratedMessage {
  factory EmergencyContact({
    $core.bool? enabled,
    ContactInfo? contactInfo,
  }) {
    final result = create();
    if (enabled != null) result.enabled = enabled;
    if (contactInfo != null) result.contactInfo = contactInfo;
    return result;
  }

  EmergencyContact._();

  factory EmergencyContact.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EmergencyContact.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EmergencyContact',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'enabled', $pb.PbFieldType.QB)
    ..aOM<ContactInfo>(2, _omitFieldNames ? '' : 'contactInfo',
        subBuilder: ContactInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmergencyContact clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmergencyContact copyWith(void Function(EmergencyContact) updates) =>
      super.copyWith((message) => updates(message as EmergencyContact))
          as EmergencyContact;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmergencyContact create() => EmergencyContact._();
  @$core.override
  EmergencyContact createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EmergencyContact getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EmergencyContact>(create);
  static EmergencyContact? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => $_clearField(1);

  @$pb.TagNumber(2)
  ContactInfo get contactInfo => $_getN(1);
  @$pb.TagNumber(2)
  set contactInfo(ContactInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasContactInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearContactInfo() => $_clearField(2);
  @$pb.TagNumber(2)
  ContactInfo ensureContactInfo() => $_ensure(1);
}

class MiuiSOS_Request extends $pb.GeneratedMessage {
  factory MiuiSOS_Request() => create();

  MiuiSOS_Request._();

  factory MiuiSOS_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiuiSOS_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiuiSOS.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiuiSOS_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiuiSOS_Request copyWith(void Function(MiuiSOS_Request) updates) =>
      super.copyWith((message) => updates(message as MiuiSOS_Request))
          as MiuiSOS_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiuiSOS_Request create() => MiuiSOS_Request._();
  @$core.override
  MiuiSOS_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiuiSOS_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiuiSOS_Request>(create);
  static MiuiSOS_Request? _defaultInstance;
}

class MiuiSOS_Response extends $pb.GeneratedMessage {
  factory MiuiSOS_Response({
    $core.int? code,
  }) {
    final result = create();
    if (code != null) result.code = code;
    return result;
  }

  MiuiSOS_Response._();

  factory MiuiSOS_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiuiSOS_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiuiSOS.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiuiSOS_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiuiSOS_Response copyWith(void Function(MiuiSOS_Response) updates) =>
      super.copyWith((message) => updates(message as MiuiSOS_Response))
          as MiuiSOS_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiuiSOS_Response create() => MiuiSOS_Response._();
  @$core.override
  MiuiSOS_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiuiSOS_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiuiSOS_Response>(create);
  static MiuiSOS_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);
}

class MiuiSOS extends $pb.GeneratedMessage {
  factory MiuiSOS() => create();

  MiuiSOS._();

  factory MiuiSOS.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiuiSOS.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiuiSOS',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiuiSOS clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiuiSOS copyWith(void Function(MiuiSOS) updates) =>
      super.copyWith((message) => updates(message as MiuiSOS)) as MiuiSOS;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiuiSOS create() => MiuiSOS._();
  @$core.override
  MiuiSOS createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiuiSOS getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiuiSOS>(create);
  static MiuiSOS? _defaultInstance;
}

class HelpRequest extends $pb.GeneratedMessage {
  factory HelpRequest({
    $core.Iterable<$core.String>? smsNumber,
    $core.int? reason,
  }) {
    final result = create();
    if (smsNumber != null) result.smsNumber.addAll(smsNumber);
    if (reason != null) result.reason = reason;
    return result;
  }

  HelpRequest._();

  factory HelpRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HelpRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HelpRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'smsNumber')
    ..aI(2, _omitFieldNames ? '' : 'reason', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HelpRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HelpRequest copyWith(void Function(HelpRequest) updates) =>
      super.copyWith((message) => updates(message as HelpRequest))
          as HelpRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelpRequest create() => HelpRequest._();
  @$core.override
  HelpRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HelpRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HelpRequest>(create);
  static HelpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get smsNumber => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get reason => $_getIZ(1);
  @$pb.TagNumber(2)
  set reason($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
