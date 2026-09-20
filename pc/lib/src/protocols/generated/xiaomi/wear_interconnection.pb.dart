// This is a generated file - do not edit.
//
// Generated from wear_interconnection.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'wear_common.pb.dart' as $0;
import 'wear_interconnection.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_interconnection.pbenum.dart';

enum Interconnection_Payload {
  phoneStatus,
  shareDevices,
  shareDevice,
  audioControl,
  tvControl,
  headsetControl,
  controlResult,
  projectionDevices,
  projectionRequest,
  projectionResponse,
  projectionData,
  requestInfo,
  projectionReport,
  projectionMembers,
  courseZone,
  phoneUsage,
  phoneTrace,
  mishowSlideRequest,
  mishowDemo,
  misDevices,
  wearSpecBasic,
  misPayload,
  certServerRequest,
  certDeviceRequest,
  certResponse,
  propRequest,
  propResponse,
  notSet
}

class Interconnection extends $pb.GeneratedMessage {
  factory Interconnection({
    PhoneStatus? phoneStatus,
    ShareDevice_List? shareDevices,
    ShareDevice? shareDevice,
    AudioControl? audioControl,
    TVControl? tvControl,
    HeadsetControl? headsetControl,
    ControlResult? controlResult,
    ProjectionDevice_List? projectionDevices,
    ProjectionRequest? projectionRequest,
    ProjectionResponse? projectionResponse,
    ProjectionData? projectionData,
    RequestInfo? requestInfo,
    ProjectionReport? projectionReport,
    ProjectionMember_List? projectionMembers,
    CourseZone? courseZone,
    PhoneUsage? phoneUsage,
    PhoneTrace? phoneTrace,
    MiShow_SlideRequest? mishowSlideRequest,
    MiShow_Demo? mishowDemo,
    Mis_Device_List? misDevices,
    Mis_WearSpecBasic? wearSpecBasic,
    Mis_Payload? misPayload,
    Cert_ServerRequest? certServerRequest,
    Cert_DeviceRequest? certDeviceRequest,
    Cert_Response? certResponse,
    Prop_Request? propRequest,
    Prop_Response? propResponse,
  }) {
    final result = create();
    if (phoneStatus != null) result.phoneStatus = phoneStatus;
    if (shareDevices != null) result.shareDevices = shareDevices;
    if (shareDevice != null) result.shareDevice = shareDevice;
    if (audioControl != null) result.audioControl = audioControl;
    if (tvControl != null) result.tvControl = tvControl;
    if (headsetControl != null) result.headsetControl = headsetControl;
    if (controlResult != null) result.controlResult = controlResult;
    if (projectionDevices != null) result.projectionDevices = projectionDevices;
    if (projectionRequest != null) result.projectionRequest = projectionRequest;
    if (projectionResponse != null)
      result.projectionResponse = projectionResponse;
    if (projectionData != null) result.projectionData = projectionData;
    if (requestInfo != null) result.requestInfo = requestInfo;
    if (projectionReport != null) result.projectionReport = projectionReport;
    if (projectionMembers != null) result.projectionMembers = projectionMembers;
    if (courseZone != null) result.courseZone = courseZone;
    if (phoneUsage != null) result.phoneUsage = phoneUsage;
    if (phoneTrace != null) result.phoneTrace = phoneTrace;
    if (mishowSlideRequest != null)
      result.mishowSlideRequest = mishowSlideRequest;
    if (mishowDemo != null) result.mishowDemo = mishowDemo;
    if (misDevices != null) result.misDevices = misDevices;
    if (wearSpecBasic != null) result.wearSpecBasic = wearSpecBasic;
    if (misPayload != null) result.misPayload = misPayload;
    if (certServerRequest != null) result.certServerRequest = certServerRequest;
    if (certDeviceRequest != null) result.certDeviceRequest = certDeviceRequest;
    if (certResponse != null) result.certResponse = certResponse;
    if (propRequest != null) result.propRequest = propRequest;
    if (propResponse != null) result.propResponse = propResponse;
    return result;
  }

  Interconnection._();

  factory Interconnection.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Interconnection.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Interconnection_Payload>
      _Interconnection_PayloadByTag = {
    1: Interconnection_Payload.phoneStatus,
    2: Interconnection_Payload.shareDevices,
    3: Interconnection_Payload.shareDevice,
    4: Interconnection_Payload.audioControl,
    5: Interconnection_Payload.tvControl,
    6: Interconnection_Payload.headsetControl,
    7: Interconnection_Payload.controlResult,
    8: Interconnection_Payload.projectionDevices,
    9: Interconnection_Payload.projectionRequest,
    10: Interconnection_Payload.projectionResponse,
    11: Interconnection_Payload.projectionData,
    12: Interconnection_Payload.requestInfo,
    13: Interconnection_Payload.projectionReport,
    14: Interconnection_Payload.projectionMembers,
    15: Interconnection_Payload.courseZone,
    16: Interconnection_Payload.phoneUsage,
    17: Interconnection_Payload.phoneTrace,
    18: Interconnection_Payload.mishowSlideRequest,
    19: Interconnection_Payload.mishowDemo,
    20: Interconnection_Payload.misDevices,
    21: Interconnection_Payload.wearSpecBasic,
    22: Interconnection_Payload.misPayload,
    23: Interconnection_Payload.certServerRequest,
    24: Interconnection_Payload.certDeviceRequest,
    25: Interconnection_Payload.certResponse,
    26: Interconnection_Payload.propRequest,
    27: Interconnection_Payload.propResponse,
    0: Interconnection_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Interconnection',
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
      21,
      22,
      23,
      24,
      25,
      26,
      27
    ])
    ..aOM<PhoneStatus>(1, _omitFieldNames ? '' : 'phoneStatus',
        subBuilder: PhoneStatus.create)
    ..aOM<ShareDevice_List>(2, _omitFieldNames ? '' : 'shareDevices',
        subBuilder: ShareDevice_List.create)
    ..aOM<ShareDevice>(3, _omitFieldNames ? '' : 'shareDevice',
        subBuilder: ShareDevice.create)
    ..aOM<AudioControl>(4, _omitFieldNames ? '' : 'audioControl',
        subBuilder: AudioControl.create)
    ..aOM<TVControl>(5, _omitFieldNames ? '' : 'tvControl',
        subBuilder: TVControl.create)
    ..aOM<HeadsetControl>(6, _omitFieldNames ? '' : 'headsetControl',
        subBuilder: HeadsetControl.create)
    ..aOM<ControlResult>(7, _omitFieldNames ? '' : 'controlResult',
        subBuilder: ControlResult.create)
    ..aOM<ProjectionDevice_List>(8, _omitFieldNames ? '' : 'projectionDevices',
        subBuilder: ProjectionDevice_List.create)
    ..aOM<ProjectionRequest>(9, _omitFieldNames ? '' : 'projectionRequest',
        subBuilder: ProjectionRequest.create)
    ..aOM<ProjectionResponse>(10, _omitFieldNames ? '' : 'projectionResponse',
        subBuilder: ProjectionResponse.create)
    ..aOM<ProjectionData>(11, _omitFieldNames ? '' : 'projectionData',
        subBuilder: ProjectionData.create)
    ..aOM<RequestInfo>(12, _omitFieldNames ? '' : 'requestInfo',
        subBuilder: RequestInfo.create)
    ..aOM<ProjectionReport>(13, _omitFieldNames ? '' : 'projectionReport',
        subBuilder: ProjectionReport.create)
    ..aOM<ProjectionMember_List>(14, _omitFieldNames ? '' : 'projectionMembers',
        subBuilder: ProjectionMember_List.create)
    ..aOM<CourseZone>(15, _omitFieldNames ? '' : 'courseZone',
        subBuilder: CourseZone.create)
    ..aOM<PhoneUsage>(16, _omitFieldNames ? '' : 'phoneUsage',
        subBuilder: PhoneUsage.create)
    ..aOM<PhoneTrace>(17, _omitFieldNames ? '' : 'phoneTrace',
        subBuilder: PhoneTrace.create)
    ..aOM<MiShow_SlideRequest>(18, _omitFieldNames ? '' : 'mishowSlideRequest',
        subBuilder: MiShow_SlideRequest.create)
    ..aOM<MiShow_Demo>(19, _omitFieldNames ? '' : 'mishowDemo',
        subBuilder: MiShow_Demo.create)
    ..aOM<Mis_Device_List>(20, _omitFieldNames ? '' : 'misDevices',
        subBuilder: Mis_Device_List.create)
    ..aOM<Mis_WearSpecBasic>(21, _omitFieldNames ? '' : 'wearSpecBasic',
        subBuilder: Mis_WearSpecBasic.create)
    ..aOM<Mis_Payload>(22, _omitFieldNames ? '' : 'misPayload',
        subBuilder: Mis_Payload.create)
    ..aOM<Cert_ServerRequest>(23, _omitFieldNames ? '' : 'certServerRequest',
        subBuilder: Cert_ServerRequest.create)
    ..aOM<Cert_DeviceRequest>(24, _omitFieldNames ? '' : 'certDeviceRequest',
        subBuilder: Cert_DeviceRequest.create)
    ..aOM<Cert_Response>(25, _omitFieldNames ? '' : 'certResponse',
        subBuilder: Cert_Response.create)
    ..aOM<Prop_Request>(26, _omitFieldNames ? '' : 'propRequest',
        subBuilder: Prop_Request.create)
    ..aOM<Prop_Response>(27, _omitFieldNames ? '' : 'propResponse',
        subBuilder: Prop_Response.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Interconnection clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Interconnection copyWith(void Function(Interconnection) updates) =>
      super.copyWith((message) => updates(message as Interconnection))
          as Interconnection;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Interconnection create() => Interconnection._();
  @$core.override
  Interconnection createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Interconnection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Interconnection>(create);
  static Interconnection? _defaultInstance;

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
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  Interconnection_Payload whichPayload() =>
      _Interconnection_PayloadByTag[$_whichOneof(0)]!;
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
  @$pb.TagNumber(21)
  @$pb.TagNumber(22)
  @$pb.TagNumber(23)
  @$pb.TagNumber(24)
  @$pb.TagNumber(25)
  @$pb.TagNumber(26)
  @$pb.TagNumber(27)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PhoneStatus get phoneStatus => $_getN(0);
  @$pb.TagNumber(1)
  set phoneStatus(PhoneStatus value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPhoneStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoneStatus() => $_clearField(1);
  @$pb.TagNumber(1)
  PhoneStatus ensurePhoneStatus() => $_ensure(0);

  @$pb.TagNumber(2)
  ShareDevice_List get shareDevices => $_getN(1);
  @$pb.TagNumber(2)
  set shareDevices(ShareDevice_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasShareDevices() => $_has(1);
  @$pb.TagNumber(2)
  void clearShareDevices() => $_clearField(2);
  @$pb.TagNumber(2)
  ShareDevice_List ensureShareDevices() => $_ensure(1);

  @$pb.TagNumber(3)
  ShareDevice get shareDevice => $_getN(2);
  @$pb.TagNumber(3)
  set shareDevice(ShareDevice value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasShareDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearShareDevice() => $_clearField(3);
  @$pb.TagNumber(3)
  ShareDevice ensureShareDevice() => $_ensure(2);

  @$pb.TagNumber(4)
  AudioControl get audioControl => $_getN(3);
  @$pb.TagNumber(4)
  set audioControl(AudioControl value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAudioControl() => $_has(3);
  @$pb.TagNumber(4)
  void clearAudioControl() => $_clearField(4);
  @$pb.TagNumber(4)
  AudioControl ensureAudioControl() => $_ensure(3);

  @$pb.TagNumber(5)
  TVControl get tvControl => $_getN(4);
  @$pb.TagNumber(5)
  set tvControl(TVControl value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasTvControl() => $_has(4);
  @$pb.TagNumber(5)
  void clearTvControl() => $_clearField(5);
  @$pb.TagNumber(5)
  TVControl ensureTvControl() => $_ensure(4);

  @$pb.TagNumber(6)
  HeadsetControl get headsetControl => $_getN(5);
  @$pb.TagNumber(6)
  set headsetControl(HeadsetControl value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasHeadsetControl() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeadsetControl() => $_clearField(6);
  @$pb.TagNumber(6)
  HeadsetControl ensureHeadsetControl() => $_ensure(5);

  @$pb.TagNumber(7)
  ControlResult get controlResult => $_getN(6);
  @$pb.TagNumber(7)
  set controlResult(ControlResult value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasControlResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearControlResult() => $_clearField(7);
  @$pb.TagNumber(7)
  ControlResult ensureControlResult() => $_ensure(6);

  @$pb.TagNumber(8)
  ProjectionDevice_List get projectionDevices => $_getN(7);
  @$pb.TagNumber(8)
  set projectionDevices(ProjectionDevice_List value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasProjectionDevices() => $_has(7);
  @$pb.TagNumber(8)
  void clearProjectionDevices() => $_clearField(8);
  @$pb.TagNumber(8)
  ProjectionDevice_List ensureProjectionDevices() => $_ensure(7);

  @$pb.TagNumber(9)
  ProjectionRequest get projectionRequest => $_getN(8);
  @$pb.TagNumber(9)
  set projectionRequest(ProjectionRequest value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasProjectionRequest() => $_has(8);
  @$pb.TagNumber(9)
  void clearProjectionRequest() => $_clearField(9);
  @$pb.TagNumber(9)
  ProjectionRequest ensureProjectionRequest() => $_ensure(8);

  @$pb.TagNumber(10)
  ProjectionResponse get projectionResponse => $_getN(9);
  @$pb.TagNumber(10)
  set projectionResponse(ProjectionResponse value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasProjectionResponse() => $_has(9);
  @$pb.TagNumber(10)
  void clearProjectionResponse() => $_clearField(10);
  @$pb.TagNumber(10)
  ProjectionResponse ensureProjectionResponse() => $_ensure(9);

  @$pb.TagNumber(11)
  ProjectionData get projectionData => $_getN(10);
  @$pb.TagNumber(11)
  set projectionData(ProjectionData value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasProjectionData() => $_has(10);
  @$pb.TagNumber(11)
  void clearProjectionData() => $_clearField(11);
  @$pb.TagNumber(11)
  ProjectionData ensureProjectionData() => $_ensure(10);

  @$pb.TagNumber(12)
  RequestInfo get requestInfo => $_getN(11);
  @$pb.TagNumber(12)
  set requestInfo(RequestInfo value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasRequestInfo() => $_has(11);
  @$pb.TagNumber(12)
  void clearRequestInfo() => $_clearField(12);
  @$pb.TagNumber(12)
  RequestInfo ensureRequestInfo() => $_ensure(11);

  @$pb.TagNumber(13)
  ProjectionReport get projectionReport => $_getN(12);
  @$pb.TagNumber(13)
  set projectionReport(ProjectionReport value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasProjectionReport() => $_has(12);
  @$pb.TagNumber(13)
  void clearProjectionReport() => $_clearField(13);
  @$pb.TagNumber(13)
  ProjectionReport ensureProjectionReport() => $_ensure(12);

  @$pb.TagNumber(14)
  ProjectionMember_List get projectionMembers => $_getN(13);
  @$pb.TagNumber(14)
  set projectionMembers(ProjectionMember_List value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasProjectionMembers() => $_has(13);
  @$pb.TagNumber(14)
  void clearProjectionMembers() => $_clearField(14);
  @$pb.TagNumber(14)
  ProjectionMember_List ensureProjectionMembers() => $_ensure(13);

  @$pb.TagNumber(15)
  CourseZone get courseZone => $_getN(14);
  @$pb.TagNumber(15)
  set courseZone(CourseZone value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasCourseZone() => $_has(14);
  @$pb.TagNumber(15)
  void clearCourseZone() => $_clearField(15);
  @$pb.TagNumber(15)
  CourseZone ensureCourseZone() => $_ensure(14);

  @$pb.TagNumber(16)
  PhoneUsage get phoneUsage => $_getN(15);
  @$pb.TagNumber(16)
  set phoneUsage(PhoneUsage value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasPhoneUsage() => $_has(15);
  @$pb.TagNumber(16)
  void clearPhoneUsage() => $_clearField(16);
  @$pb.TagNumber(16)
  PhoneUsage ensurePhoneUsage() => $_ensure(15);

  @$pb.TagNumber(17)
  PhoneTrace get phoneTrace => $_getN(16);
  @$pb.TagNumber(17)
  set phoneTrace(PhoneTrace value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasPhoneTrace() => $_has(16);
  @$pb.TagNumber(17)
  void clearPhoneTrace() => $_clearField(17);
  @$pb.TagNumber(17)
  PhoneTrace ensurePhoneTrace() => $_ensure(16);

  @$pb.TagNumber(18)
  MiShow_SlideRequest get mishowSlideRequest => $_getN(17);
  @$pb.TagNumber(18)
  set mishowSlideRequest(MiShow_SlideRequest value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasMishowSlideRequest() => $_has(17);
  @$pb.TagNumber(18)
  void clearMishowSlideRequest() => $_clearField(18);
  @$pb.TagNumber(18)
  MiShow_SlideRequest ensureMishowSlideRequest() => $_ensure(17);

  @$pb.TagNumber(19)
  MiShow_Demo get mishowDemo => $_getN(18);
  @$pb.TagNumber(19)
  set mishowDemo(MiShow_Demo value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasMishowDemo() => $_has(18);
  @$pb.TagNumber(19)
  void clearMishowDemo() => $_clearField(19);
  @$pb.TagNumber(19)
  MiShow_Demo ensureMishowDemo() => $_ensure(18);

  @$pb.TagNumber(20)
  Mis_Device_List get misDevices => $_getN(19);
  @$pb.TagNumber(20)
  set misDevices(Mis_Device_List value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasMisDevices() => $_has(19);
  @$pb.TagNumber(20)
  void clearMisDevices() => $_clearField(20);
  @$pb.TagNumber(20)
  Mis_Device_List ensureMisDevices() => $_ensure(19);

  @$pb.TagNumber(21)
  Mis_WearSpecBasic get wearSpecBasic => $_getN(20);
  @$pb.TagNumber(21)
  set wearSpecBasic(Mis_WearSpecBasic value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasWearSpecBasic() => $_has(20);
  @$pb.TagNumber(21)
  void clearWearSpecBasic() => $_clearField(21);
  @$pb.TagNumber(21)
  Mis_WearSpecBasic ensureWearSpecBasic() => $_ensure(20);

  @$pb.TagNumber(22)
  Mis_Payload get misPayload => $_getN(21);
  @$pb.TagNumber(22)
  set misPayload(Mis_Payload value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasMisPayload() => $_has(21);
  @$pb.TagNumber(22)
  void clearMisPayload() => $_clearField(22);
  @$pb.TagNumber(22)
  Mis_Payload ensureMisPayload() => $_ensure(21);

  @$pb.TagNumber(23)
  Cert_ServerRequest get certServerRequest => $_getN(22);
  @$pb.TagNumber(23)
  set certServerRequest(Cert_ServerRequest value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasCertServerRequest() => $_has(22);
  @$pb.TagNumber(23)
  void clearCertServerRequest() => $_clearField(23);
  @$pb.TagNumber(23)
  Cert_ServerRequest ensureCertServerRequest() => $_ensure(22);

  @$pb.TagNumber(24)
  Cert_DeviceRequest get certDeviceRequest => $_getN(23);
  @$pb.TagNumber(24)
  set certDeviceRequest(Cert_DeviceRequest value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasCertDeviceRequest() => $_has(23);
  @$pb.TagNumber(24)
  void clearCertDeviceRequest() => $_clearField(24);
  @$pb.TagNumber(24)
  Cert_DeviceRequest ensureCertDeviceRequest() => $_ensure(23);

  @$pb.TagNumber(25)
  Cert_Response get certResponse => $_getN(24);
  @$pb.TagNumber(25)
  set certResponse(Cert_Response value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasCertResponse() => $_has(24);
  @$pb.TagNumber(25)
  void clearCertResponse() => $_clearField(25);
  @$pb.TagNumber(25)
  Cert_Response ensureCertResponse() => $_ensure(24);

  @$pb.TagNumber(26)
  Prop_Request get propRequest => $_getN(25);
  @$pb.TagNumber(26)
  set propRequest(Prop_Request value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasPropRequest() => $_has(25);
  @$pb.TagNumber(26)
  void clearPropRequest() => $_clearField(26);
  @$pb.TagNumber(26)
  Prop_Request ensurePropRequest() => $_ensure(25);

  @$pb.TagNumber(27)
  Prop_Response get propResponse => $_getN(26);
  @$pb.TagNumber(27)
  set propResponse(Prop_Response value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasPropResponse() => $_has(26);
  @$pb.TagNumber(27)
  void clearPropResponse() => $_clearField(27);
  @$pb.TagNumber(27)
  Prop_Response ensurePropResponse() => $_ensure(26);
}

class PhoneStatus extends $pb.GeneratedMessage {
  factory PhoneStatus({
    $core.int? screen,
  }) {
    final result = create();
    if (screen != null) result.screen = screen;
    return result;
  }

  PhoneStatus._();

  factory PhoneStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'screen', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneStatus copyWith(void Function(PhoneStatus) updates) =>
      super.copyWith((message) => updates(message as PhoneStatus))
          as PhoneStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneStatus create() => PhoneStatus._();
  @$core.override
  PhoneStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneStatus>(create);
  static PhoneStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get screen => $_getIZ(0);
  @$pb.TagNumber(1)
  set screen($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasScreen() => $_has(0);
  @$pb.TagNumber(1)
  void clearScreen() => $_clearField(1);
}

class ShareDevice_List extends $pb.GeneratedMessage {
  factory ShareDevice_List({
    $core.Iterable<ShareDevice>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  ShareDevice_List._();

  factory ShareDevice_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShareDevice_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShareDevice.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<ShareDevice>(1, _omitFieldNames ? '' : 'list',
        subBuilder: ShareDevice.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShareDevice_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShareDevice_List copyWith(void Function(ShareDevice_List) updates) =>
      super.copyWith((message) => updates(message as ShareDevice_List))
          as ShareDevice_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareDevice_List create() => ShareDevice_List._();
  @$core.override
  ShareDevice_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ShareDevice_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShareDevice_List>(create);
  static ShareDevice_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ShareDevice> get list => $_getList(0);
}

enum ShareDevice_Info { audioInfo, tvInfo, headsetInfo, notSet }

class ShareDevice extends $pb.GeneratedMessage {
  factory ShareDevice({
    DeviceType? type,
    $core.String? id,
    $core.String? name,
    AudioInfo? audioInfo,
    TVInfo? tvInfo,
    HeadsetInfo? headsetInfo,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (audioInfo != null) result.audioInfo = audioInfo;
    if (tvInfo != null) result.tvInfo = tvInfo;
    if (headsetInfo != null) result.headsetInfo = headsetInfo;
    return result;
  }

  ShareDevice._();

  factory ShareDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShareDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ShareDevice_Info> _ShareDevice_InfoByTag = {
    4: ShareDevice_Info.audioInfo,
    5: ShareDevice_Info.tvInfo,
    6: ShareDevice_Info.headsetInfo,
    0: ShareDevice_Info.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShareDevice',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 6])
    ..aE<DeviceType>(1, _omitFieldNames ? '' : 'type',
        fieldType: $pb.PbFieldType.QE, enumValues: DeviceType.values)
    ..aQS(2, _omitFieldNames ? '' : 'id')
    ..aQS(3, _omitFieldNames ? '' : 'name')
    ..aOM<AudioInfo>(4, _omitFieldNames ? '' : 'audioInfo',
        subBuilder: AudioInfo.create)
    ..aOM<TVInfo>(5, _omitFieldNames ? '' : 'tvInfo', subBuilder: TVInfo.create)
    ..aOM<HeadsetInfo>(6, _omitFieldNames ? '' : 'headsetInfo',
        subBuilder: HeadsetInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShareDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShareDevice copyWith(void Function(ShareDevice) updates) =>
      super.copyWith((message) => updates(message as ShareDevice))
          as ShareDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShareDevice create() => ShareDevice._();
  @$core.override
  ShareDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ShareDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShareDevice>(create);
  static ShareDevice? _defaultInstance;

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  ShareDevice_Info whichInfo() => _ShareDevice_InfoByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearInfo() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DeviceType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(DeviceType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String value) => $_setString(1, value);
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
  AudioInfo get audioInfo => $_getN(3);
  @$pb.TagNumber(4)
  set audioInfo(AudioInfo value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAudioInfo() => $_has(3);
  @$pb.TagNumber(4)
  void clearAudioInfo() => $_clearField(4);
  @$pb.TagNumber(4)
  AudioInfo ensureAudioInfo() => $_ensure(3);

  @$pb.TagNumber(5)
  TVInfo get tvInfo => $_getN(4);
  @$pb.TagNumber(5)
  set tvInfo(TVInfo value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasTvInfo() => $_has(4);
  @$pb.TagNumber(5)
  void clearTvInfo() => $_clearField(5);
  @$pb.TagNumber(5)
  TVInfo ensureTvInfo() => $_ensure(4);

  @$pb.TagNumber(6)
  HeadsetInfo get headsetInfo => $_getN(5);
  @$pb.TagNumber(6)
  set headsetInfo(HeadsetInfo value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasHeadsetInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeadsetInfo() => $_clearField(6);
  @$pb.TagNumber(6)
  HeadsetInfo ensureHeadsetInfo() => $_ensure(5);
}

class AudioData extends $pb.GeneratedMessage {
  factory AudioData({
    $core.String? name,
    $core.int? currentPositon,
    $core.int? duration,
    $core.int? volume,
    $core.String? artist,
    $core.String? album,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (currentPositon != null) result.currentPositon = currentPositon;
    if (duration != null) result.duration = duration;
    if (volume != null) result.volume = volume;
    if (artist != null) result.artist = artist;
    if (album != null) result.album = album;
    return result;
  }

  AudioData._();

  factory AudioData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AudioData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AudioData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name')
    ..aI(2, _omitFieldNames ? '' : 'currentPositon',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'volume', fieldType: $pb.PbFieldType.QU3)
    ..aQS(5, _omitFieldNames ? '' : 'artist')
    ..aQS(6, _omitFieldNames ? '' : 'album');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AudioData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AudioData copyWith(void Function(AudioData) updates) =>
      super.copyWith((message) => updates(message as AudioData)) as AudioData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AudioData create() => AudioData._();
  @$core.override
  AudioData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AudioData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AudioData>(create);
  static AudioData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get currentPositon => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentPositon($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentPositon() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentPositon() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get duration => $_getIZ(2);
  @$pb.TagNumber(3)
  set duration($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get volume => $_getIZ(3);
  @$pb.TagNumber(4)
  set volume($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVolume() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolume() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get artist => $_getSZ(4);
  @$pb.TagNumber(5)
  set artist($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasArtist() => $_has(4);
  @$pb.TagNumber(5)
  void clearArtist() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get album => $_getSZ(5);
  @$pb.TagNumber(6)
  set album($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAlbum() => $_has(5);
  @$pb.TagNumber(6)
  void clearAlbum() => $_clearField(6);
}

class AudioInfo extends $pb.GeneratedMessage {
  factory AudioInfo({
    $core.int? state,
    AudioData? data,
    $core.String? outputId,
  }) {
    final result = create();
    if (state != null) result.state = state;
    if (data != null) result.data = data;
    if (outputId != null) result.outputId = outputId;
    return result;
  }

  AudioInfo._();

  factory AudioInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AudioInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AudioInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'state', fieldType: $pb.PbFieldType.QU3)
    ..aOM<AudioData>(2, _omitFieldNames ? '' : 'data',
        subBuilder: AudioData.create)
    ..aQS(3, _omitFieldNames ? '' : 'outputId');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AudioInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AudioInfo copyWith(void Function(AudioInfo) updates) =>
      super.copyWith((message) => updates(message as AudioInfo)) as AudioInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AudioInfo create() => AudioInfo._();
  @$core.override
  AudioInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AudioInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AudioInfo>(create);
  static AudioInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get state => $_getIZ(0);
  @$pb.TagNumber(1)
  set state($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);

  @$pb.TagNumber(2)
  AudioData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(AudioData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  AudioData ensureData() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get outputId => $_getSZ(2);
  @$pb.TagNumber(3)
  set outputId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOutputId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutputId() => $_clearField(3);
}

class TVData extends $pb.GeneratedMessage {
  factory TVData({
    $core.String? name,
  }) {
    final result = create();
    if (name != null) result.name = name;
    return result;
  }

  TVData._();

  factory TVData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TVData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TVData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'name');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TVData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TVData copyWith(void Function(TVData) updates) =>
      super.copyWith((message) => updates(message as TVData)) as TVData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TVData create() => TVData._();
  @$core.override
  TVData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TVData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TVData>(create);
  static TVData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class TVInfo extends $pb.GeneratedMessage {
  factory TVInfo({
    $core.int? state,
    TVData? data,
  }) {
    final result = create();
    if (state != null) result.state = state;
    if (data != null) result.data = data;
    return result;
  }

  TVInfo._();

  factory TVInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TVInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TVInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'state', fieldType: $pb.PbFieldType.QU3)
    ..aOM<TVData>(2, _omitFieldNames ? '' : 'data', subBuilder: TVData.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TVInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TVInfo copyWith(void Function(TVInfo) updates) =>
      super.copyWith((message) => updates(message as TVInfo)) as TVInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TVInfo create() => TVInfo._();
  @$core.override
  TVInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TVInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TVInfo>(create);
  static TVInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get state => $_getIZ(0);
  @$pb.TagNumber(1)
  set state($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => $_clearField(1);

  @$pb.TagNumber(2)
  TVData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(TVData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);
  @$pb.TagNumber(2)
  TVData ensureData() => $_ensure(1);
}

class HeadsetInfo extends $pb.GeneratedMessage {
  factory HeadsetInfo({
    $core.int? voiceMode,
    $core.int? multiConnection,
  }) {
    final result = create();
    if (voiceMode != null) result.voiceMode = voiceMode;
    if (multiConnection != null) result.multiConnection = multiConnection;
    return result;
  }

  HeadsetInfo._();

  factory HeadsetInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeadsetInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeadsetInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'voiceMode', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'multiConnection',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeadsetInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeadsetInfo copyWith(void Function(HeadsetInfo) updates) =>
      super.copyWith((message) => updates(message as HeadsetInfo))
          as HeadsetInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeadsetInfo create() => HeadsetInfo._();
  @$core.override
  HeadsetInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HeadsetInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeadsetInfo>(create);
  static HeadsetInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get voiceMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set voiceMode($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVoiceMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearVoiceMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get multiConnection => $_getIZ(1);
  @$pb.TagNumber(2)
  set multiConnection($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMultiConnection() => $_has(1);
  @$pb.TagNumber(2)
  void clearMultiConnection() => $_clearField(2);
}

class AudioControl extends $pb.GeneratedMessage {
  factory AudioControl({
    $core.String? deviceId,
    $core.int? cmd,
    $core.int? intValue,
    $core.String? strValue,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (cmd != null) result.cmd = cmd;
    if (intValue != null) result.intValue = intValue;
    if (strValue != null) result.strValue = strValue;
    return result;
  }

  AudioControl._();

  factory AudioControl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AudioControl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AudioControl',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'deviceId')
    ..aI(2, _omitFieldNames ? '' : 'cmd', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'intValue', fieldType: $pb.PbFieldType.OU3)
    ..aQS(4, _omitFieldNames ? '' : 'strValue');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AudioControl clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AudioControl copyWith(void Function(AudioControl) updates) =>
      super.copyWith((message) => updates(message as AudioControl))
          as AudioControl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AudioControl create() => AudioControl._();
  @$core.override
  AudioControl createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AudioControl getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AudioControl>(create);
  static AudioControl? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get cmd => $_getIZ(1);
  @$pb.TagNumber(2)
  set cmd($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCmd() => $_has(1);
  @$pb.TagNumber(2)
  void clearCmd() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get intValue => $_getIZ(2);
  @$pb.TagNumber(3)
  set intValue($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIntValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get strValue => $_getSZ(3);
  @$pb.TagNumber(4)
  set strValue($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStrValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearStrValue() => $_clearField(4);
}

class TVControl extends $pb.GeneratedMessage {
  factory TVControl({
    $core.String? deviceId,
    $core.int? cmd,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (cmd != null) result.cmd = cmd;
    return result;
  }

  TVControl._();

  factory TVControl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TVControl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TVControl',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'deviceId')
    ..aI(2, _omitFieldNames ? '' : 'cmd', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TVControl clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TVControl copyWith(void Function(TVControl) updates) =>
      super.copyWith((message) => updates(message as TVControl)) as TVControl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TVControl create() => TVControl._();
  @$core.override
  TVControl createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TVControl getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TVControl>(create);
  static TVControl? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get cmd => $_getIZ(1);
  @$pb.TagNumber(2)
  set cmd($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCmd() => $_has(1);
  @$pb.TagNumber(2)
  void clearCmd() => $_clearField(2);
}

class HeadsetControl extends $pb.GeneratedMessage {
  factory HeadsetControl({
    $core.String? deviceId,
    $core.int? voiceMode,
    $core.int? multiConnection,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (voiceMode != null) result.voiceMode = voiceMode;
    if (multiConnection != null) result.multiConnection = multiConnection;
    return result;
  }

  HeadsetControl._();

  factory HeadsetControl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeadsetControl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeadsetControl',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'deviceId')
    ..aI(2, _omitFieldNames ? '' : 'voiceMode', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'multiConnection',
        fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeadsetControl clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeadsetControl copyWith(void Function(HeadsetControl) updates) =>
      super.copyWith((message) => updates(message as HeadsetControl))
          as HeadsetControl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeadsetControl create() => HeadsetControl._();
  @$core.override
  HeadsetControl createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HeadsetControl getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeadsetControl>(create);
  static HeadsetControl? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get voiceMode => $_getIZ(1);
  @$pb.TagNumber(2)
  set voiceMode($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVoiceMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearVoiceMode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get multiConnection => $_getIZ(2);
  @$pb.TagNumber(3)
  set multiConnection($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMultiConnection() => $_has(2);
  @$pb.TagNumber(3)
  void clearMultiConnection() => $_clearField(3);
}

class ControlResult extends $pb.GeneratedMessage {
  factory ControlResult({
    $core.String? deviceId,
    $core.int? code,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (code != null) result.code = code;
    return result;
  }

  ControlResult._();

  factory ControlResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ControlResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControlResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'deviceId')
    ..aI(2, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.Q3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControlResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControlResult copyWith(void Function(ControlResult) updates) =>
      super.copyWith((message) => updates(message as ControlResult))
          as ControlResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ControlResult create() => ControlResult._();
  @$core.override
  ControlResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ControlResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControlResult>(create);
  static ControlResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);
}

class ProjectionDevice_List extends $pb.GeneratedMessage {
  factory ProjectionDevice_List({
    $core.Iterable<ProjectionDevice>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  ProjectionDevice_List._();

  factory ProjectionDevice_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionDevice_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionDevice.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<ProjectionDevice>(1, _omitFieldNames ? '' : 'list',
        subBuilder: ProjectionDevice.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionDevice_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionDevice_List copyWith(
          void Function(ProjectionDevice_List) updates) =>
      super.copyWith((message) => updates(message as ProjectionDevice_List))
          as ProjectionDevice_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionDevice_List create() => ProjectionDevice_List._();
  @$core.override
  ProjectionDevice_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionDevice_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionDevice_List>(create);
  static ProjectionDevice_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ProjectionDevice> get list => $_getList(0);
}

class ProjectionDevice extends $pb.GeneratedMessage {
  factory ProjectionDevice({
    $core.String? id,
    $core.String? name,
    $core.int? state,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (state != null) result.state = state;
    return result;
  }

  ProjectionDevice._();

  factory ProjectionDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionDevice',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'id')
    ..aQS(2, _omitFieldNames ? '' : 'name')
    ..aI(3, _omitFieldNames ? '' : 'state', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionDevice copyWith(void Function(ProjectionDevice) updates) =>
      super.copyWith((message) => updates(message as ProjectionDevice))
          as ProjectionDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionDevice create() => ProjectionDevice._();
  @$core.override
  ProjectionDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionDevice>(create);
  static ProjectionDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
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
  $core.int get state => $_getIZ(2);
  @$pb.TagNumber(3)
  set state($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasState() => $_has(2);
  @$pb.TagNumber(3)
  void clearState() => $_clearField(3);
}

class ProjectionRequest extends $pb.GeneratedMessage {
  factory ProjectionRequest({
    $core.String? deviceId,
    $core.int? cmd,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (cmd != null) result.cmd = cmd;
    return result;
  }

  ProjectionRequest._();

  factory ProjectionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'deviceId')
    ..aI(2, _omitFieldNames ? '' : 'cmd', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionRequest copyWith(void Function(ProjectionRequest) updates) =>
      super.copyWith((message) => updates(message as ProjectionRequest))
          as ProjectionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionRequest create() => ProjectionRequest._();
  @$core.override
  ProjectionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionRequest>(create);
  static ProjectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get cmd => $_getIZ(1);
  @$pb.TagNumber(2)
  set cmd($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCmd() => $_has(1);
  @$pb.TagNumber(2)
  void clearCmd() => $_clearField(2);
}

class ProjectionResponse extends $pb.GeneratedMessage {
  factory ProjectionResponse({
    $core.String? deviceId,
    $core.int? code,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (code != null) result.code = code;
    return result;
  }

  ProjectionResponse._();

  factory ProjectionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'deviceId')
    ..aI(2, _omitFieldNames ? '' : 'code', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionResponse copyWith(void Function(ProjectionResponse) updates) =>
      super.copyWith((message) => updates(message as ProjectionResponse))
          as ProjectionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionResponse create() => ProjectionResponse._();
  @$core.override
  ProjectionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionResponse>(create);
  static ProjectionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);
}

class ProjectionData_GroupInfo extends $pb.GeneratedMessage {
  factory ProjectionData_GroupInfo({
    $core.int? segmentType,
    $core.int? segmentTimestamp,
    $core.int? segmentDuration,
    $core.int? groupIndex,
    $core.int? calories,
    $core.int? recommendHeartRate,
    $core.int? count,
  }) {
    final result = create();
    if (segmentType != null) result.segmentType = segmentType;
    if (segmentTimestamp != null) result.segmentTimestamp = segmentTimestamp;
    if (segmentDuration != null) result.segmentDuration = segmentDuration;
    if (groupIndex != null) result.groupIndex = groupIndex;
    if (calories != null) result.calories = calories;
    if (recommendHeartRate != null)
      result.recommendHeartRate = recommendHeartRate;
    if (count != null) result.count = count;
    return result;
  }

  ProjectionData_GroupInfo._();

  factory ProjectionData_GroupInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionData_GroupInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionData.GroupInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'segmentType',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'segmentTimestamp',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'segmentDuration',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'groupIndex', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'calories', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'recommendHeartRate',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'count', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionData_GroupInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionData_GroupInfo copyWith(
          void Function(ProjectionData_GroupInfo) updates) =>
      super.copyWith((message) => updates(message as ProjectionData_GroupInfo))
          as ProjectionData_GroupInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionData_GroupInfo create() => ProjectionData_GroupInfo._();
  @$core.override
  ProjectionData_GroupInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionData_GroupInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionData_GroupInfo>(create);
  static ProjectionData_GroupInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get segmentType => $_getIZ(0);
  @$pb.TagNumber(1)
  set segmentType($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSegmentType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSegmentType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get segmentTimestamp => $_getIZ(1);
  @$pb.TagNumber(2)
  set segmentTimestamp($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSegmentTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearSegmentTimestamp() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get segmentDuration => $_getIZ(2);
  @$pb.TagNumber(3)
  set segmentDuration($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSegmentDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearSegmentDuration() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get groupIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set groupIndex($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGroupIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroupIndex() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get calories => $_getIZ(4);
  @$pb.TagNumber(5)
  set calories($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCalories() => $_has(4);
  @$pb.TagNumber(5)
  void clearCalories() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get recommendHeartRate => $_getIZ(5);
  @$pb.TagNumber(6)
  set recommendHeartRate($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRecommendHeartRate() => $_has(5);
  @$pb.TagNumber(6)
  void clearRecommendHeartRate() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get count => $_getIZ(6);
  @$pb.TagNumber(7)
  set count($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearCount() => $_clearField(7);
}

class ProjectionData_Device_List extends $pb.GeneratedMessage {
  factory ProjectionData_Device_List({
    $core.Iterable<ProjectionData_Device>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  ProjectionData_Device_List._();

  factory ProjectionData_Device_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionData_Device_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionData.Device.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<ProjectionData_Device>(1, _omitFieldNames ? '' : 'list',
        subBuilder: ProjectionData_Device.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionData_Device_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionData_Device_List copyWith(
          void Function(ProjectionData_Device_List) updates) =>
      super.copyWith(
              (message) => updates(message as ProjectionData_Device_List))
          as ProjectionData_Device_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionData_Device_List create() => ProjectionData_Device_List._();
  @$core.override
  ProjectionData_Device_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionData_Device_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionData_Device_List>(create);
  static ProjectionData_Device_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ProjectionData_Device> get list => $_getList(0);
}

class ProjectionData_Device extends $pb.GeneratedMessage {
  factory ProjectionData_Device({
    $core.int? type,
    $core.int? pid,
    $core.int? connectStatus,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (pid != null) result.pid = pid;
    if (connectStatus != null) result.connectStatus = connectStatus;
    return result;
  }

  ProjectionData_Device._();

  factory ProjectionData_Device.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionData_Device.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionData.Device',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'pid', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'connectStatus',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionData_Device clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionData_Device copyWith(
          void Function(ProjectionData_Device) updates) =>
      super.copyWith((message) => updates(message as ProjectionData_Device))
          as ProjectionData_Device;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionData_Device create() => ProjectionData_Device._();
  @$core.override
  ProjectionData_Device createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionData_Device getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionData_Device>(create);
  static ProjectionData_Device? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get pid => $_getIZ(1);
  @$pb.TagNumber(2)
  set pid($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPid() => $_has(1);
  @$pb.TagNumber(2)
  void clearPid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get connectStatus => $_getIZ(2);
  @$pb.TagNumber(3)
  set connectStatus($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasConnectStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearConnectStatus() => $_clearField(3);
}

class ProjectionData extends $pb.GeneratedMessage {
  factory ProjectionData({
    $0.SportType? sportType,
    $core.int? startTime,
    $core.int? duration,
    $core.int? heartRate,
    $core.int? calories,
    $core.int? steps,
    $core.int? distance,
    $core.int? currentPace,
    $core.double? speed,
    $core.int? jumpCount,
    $core.int? stumbleCount,
    ProjectionData_GroupInfo? groupInfo,
    $core.bool? abnormalHeartRate,
    $0.HeartRateSection? heartRateZone,
    ProjectionData_Device_List? deviceList,
  }) {
    final result = create();
    if (sportType != null) result.sportType = sportType;
    if (startTime != null) result.startTime = startTime;
    if (duration != null) result.duration = duration;
    if (heartRate != null) result.heartRate = heartRate;
    if (calories != null) result.calories = calories;
    if (steps != null) result.steps = steps;
    if (distance != null) result.distance = distance;
    if (currentPace != null) result.currentPace = currentPace;
    if (speed != null) result.speed = speed;
    if (jumpCount != null) result.jumpCount = jumpCount;
    if (stumbleCount != null) result.stumbleCount = stumbleCount;
    if (groupInfo != null) result.groupInfo = groupInfo;
    if (abnormalHeartRate != null) result.abnormalHeartRate = abnormalHeartRate;
    if (heartRateZone != null) result.heartRateZone = heartRateZone;
    if (deviceList != null) result.deviceList = deviceList;
    return result;
  }

  ProjectionData._();

  factory ProjectionData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aE<$0.SportType>(1, _omitFieldNames ? '' : 'sportType',
        fieldType: $pb.PbFieldType.QE, enumValues: $0.SportType.values)
    ..aI(2, _omitFieldNames ? '' : 'startTime', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'heartRate', fieldType: $pb.PbFieldType.QU3)
    ..aI(5, _omitFieldNames ? '' : 'calories', fieldType: $pb.PbFieldType.QU3)
    ..aI(6, _omitFieldNames ? '' : 'steps', fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'distance', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'currentPace',
        fieldType: $pb.PbFieldType.OU3)
    ..aD(9, _omitFieldNames ? '' : 'speed', fieldType: $pb.PbFieldType.OF)
    ..aI(10, _omitFieldNames ? '' : 'jumpCount', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'stumbleCount',
        fieldType: $pb.PbFieldType.OU3)
    ..aOM<ProjectionData_GroupInfo>(12, _omitFieldNames ? '' : 'groupInfo',
        subBuilder: ProjectionData_GroupInfo.create)
    ..aOB(13, _omitFieldNames ? '' : 'abnormalHeartRate')
    ..aE<$0.HeartRateSection>(14, _omitFieldNames ? '' : 'heartRateZone',
        enumValues: $0.HeartRateSection.values)
    ..aOM<ProjectionData_Device_List>(15, _omitFieldNames ? '' : 'deviceList',
        subBuilder: ProjectionData_Device_List.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionData copyWith(void Function(ProjectionData) updates) =>
      super.copyWith((message) => updates(message as ProjectionData))
          as ProjectionData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionData create() => ProjectionData._();
  @$core.override
  ProjectionData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionData>(create);
  static ProjectionData? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SportType get sportType => $_getN(0);
  @$pb.TagNumber(1)
  set sportType($0.SportType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSportType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSportType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get startTime => $_getIZ(1);
  @$pb.TagNumber(2)
  set startTime($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTime() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get duration => $_getIZ(2);
  @$pb.TagNumber(3)
  set duration($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get heartRate => $_getIZ(3);
  @$pb.TagNumber(4)
  set heartRate($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHeartRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeartRate() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get calories => $_getIZ(4);
  @$pb.TagNumber(5)
  set calories($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCalories() => $_has(4);
  @$pb.TagNumber(5)
  void clearCalories() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get steps => $_getIZ(5);
  @$pb.TagNumber(6)
  set steps($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSteps() => $_has(5);
  @$pb.TagNumber(6)
  void clearSteps() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get distance => $_getIZ(6);
  @$pb.TagNumber(7)
  set distance($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDistance() => $_has(6);
  @$pb.TagNumber(7)
  void clearDistance() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get currentPace => $_getIZ(7);
  @$pb.TagNumber(8)
  set currentPace($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCurrentPace() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurrentPace() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get speed => $_getN(8);
  @$pb.TagNumber(9)
  set speed($core.double value) => $_setFloat(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSpeed() => $_has(8);
  @$pb.TagNumber(9)
  void clearSpeed() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get jumpCount => $_getIZ(9);
  @$pb.TagNumber(10)
  set jumpCount($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasJumpCount() => $_has(9);
  @$pb.TagNumber(10)
  void clearJumpCount() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get stumbleCount => $_getIZ(10);
  @$pb.TagNumber(11)
  set stumbleCount($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasStumbleCount() => $_has(10);
  @$pb.TagNumber(11)
  void clearStumbleCount() => $_clearField(11);

  @$pb.TagNumber(12)
  ProjectionData_GroupInfo get groupInfo => $_getN(11);
  @$pb.TagNumber(12)
  set groupInfo(ProjectionData_GroupInfo value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasGroupInfo() => $_has(11);
  @$pb.TagNumber(12)
  void clearGroupInfo() => $_clearField(12);
  @$pb.TagNumber(12)
  ProjectionData_GroupInfo ensureGroupInfo() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.bool get abnormalHeartRate => $_getBF(12);
  @$pb.TagNumber(13)
  set abnormalHeartRate($core.bool value) => $_setBool(12, value);
  @$pb.TagNumber(13)
  $core.bool hasAbnormalHeartRate() => $_has(12);
  @$pb.TagNumber(13)
  void clearAbnormalHeartRate() => $_clearField(13);

  @$pb.TagNumber(14)
  $0.HeartRateSection get heartRateZone => $_getN(13);
  @$pb.TagNumber(14)
  set heartRateZone($0.HeartRateSection value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasHeartRateZone() => $_has(13);
  @$pb.TagNumber(14)
  void clearHeartRateZone() => $_clearField(14);

  @$pb.TagNumber(15)
  ProjectionData_Device_List get deviceList => $_getN(14);
  @$pb.TagNumber(15)
  set deviceList(ProjectionData_Device_List value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasDeviceList() => $_has(14);
  @$pb.TagNumber(15)
  void clearDeviceList() => $_clearField(15);
  @$pb.TagNumber(15)
  ProjectionData_Device_List ensureDeviceList() => $_ensure(14);
}

class RequestInfo extends $pb.GeneratedMessage {
  factory RequestInfo({
    $core.bool? onlyAudio,
  }) {
    final result = create();
    if (onlyAudio != null) result.onlyAudio = onlyAudio;
    return result;
  }

  RequestInfo._();

  factory RequestInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequestInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequestInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'onlyAudio', $pb.PbFieldType.QB);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequestInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequestInfo copyWith(void Function(RequestInfo) updates) =>
      super.copyWith((message) => updates(message as RequestInfo))
          as RequestInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestInfo create() => RequestInfo._();
  @$core.override
  RequestInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequestInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestInfo>(create);
  static RequestInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get onlyAudio => $_getBF(0);
  @$pb.TagNumber(1)
  set onlyAudio($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOnlyAudio() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnlyAudio() => $_clearField(1);
}

class ProjectionReport extends $pb.GeneratedMessage {
  factory ProjectionReport({
    $core.int? timestamp,
    $0.Timezone? timezone,
    $core.int? duration,
    $core.int? toalCalories,
    $core.int? calories,
    $core.int? avgHeartRate,
    $core.int? maxHeartRate,
    $core.int? minHeartRate,
    $core.int? hrmWarmUpDuration,
    $core.int? hrmFatBurningDuration,
    $core.int? hrmAerobicDuration,
    $core.int? hrmAnaerobicDuration,
    $core.int? hrmExtremeDuration,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    if (timezone != null) result.timezone = timezone;
    if (duration != null) result.duration = duration;
    if (toalCalories != null) result.toalCalories = toalCalories;
    if (calories != null) result.calories = calories;
    if (avgHeartRate != null) result.avgHeartRate = avgHeartRate;
    if (maxHeartRate != null) result.maxHeartRate = maxHeartRate;
    if (minHeartRate != null) result.minHeartRate = minHeartRate;
    if (hrmWarmUpDuration != null) result.hrmWarmUpDuration = hrmWarmUpDuration;
    if (hrmFatBurningDuration != null)
      result.hrmFatBurningDuration = hrmFatBurningDuration;
    if (hrmAerobicDuration != null)
      result.hrmAerobicDuration = hrmAerobicDuration;
    if (hrmAnaerobicDuration != null)
      result.hrmAnaerobicDuration = hrmAnaerobicDuration;
    if (hrmExtremeDuration != null)
      result.hrmExtremeDuration = hrmExtremeDuration;
    return result;
  }

  ProjectionReport._();

  factory ProjectionReport.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionReport.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionReport',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.QU3)
    ..aQM<$0.Timezone>(2, _omitFieldNames ? '' : 'timezone',
        subBuilder: $0.Timezone.create)
    ..aI(3, _omitFieldNames ? '' : 'duration', fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'toalCalories',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(5, _omitFieldNames ? '' : 'calories', fieldType: $pb.PbFieldType.QU3)
    ..aI(6, _omitFieldNames ? '' : 'avgHeartRate',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(7, _omitFieldNames ? '' : 'maxHeartRate',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(8, _omitFieldNames ? '' : 'minHeartRate',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(9, _omitFieldNames ? '' : 'hrmWarmUpDuration',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(10, _omitFieldNames ? '' : 'hrmFatBurningDuration',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(11, _omitFieldNames ? '' : 'hrmAerobicDuration',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(12, _omitFieldNames ? '' : 'hrmAnaerobicDuration',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(13, _omitFieldNames ? '' : 'hrmExtremeDuration',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionReport clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionReport copyWith(void Function(ProjectionReport) updates) =>
      super.copyWith((message) => updates(message as ProjectionReport))
          as ProjectionReport;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionReport create() => ProjectionReport._();
  @$core.override
  ProjectionReport createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionReport getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionReport>(create);
  static ProjectionReport? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Timezone get timezone => $_getN(1);
  @$pb.TagNumber(2)
  set timezone($0.Timezone value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTimezone() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimezone() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timezone ensureTimezone() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get duration => $_getIZ(2);
  @$pb.TagNumber(3)
  set duration($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDuration() => $_has(2);
  @$pb.TagNumber(3)
  void clearDuration() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get toalCalories => $_getIZ(3);
  @$pb.TagNumber(4)
  set toalCalories($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasToalCalories() => $_has(3);
  @$pb.TagNumber(4)
  void clearToalCalories() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get calories => $_getIZ(4);
  @$pb.TagNumber(5)
  set calories($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCalories() => $_has(4);
  @$pb.TagNumber(5)
  void clearCalories() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get avgHeartRate => $_getIZ(5);
  @$pb.TagNumber(6)
  set avgHeartRate($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAvgHeartRate() => $_has(5);
  @$pb.TagNumber(6)
  void clearAvgHeartRate() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get maxHeartRate => $_getIZ(6);
  @$pb.TagNumber(7)
  set maxHeartRate($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMaxHeartRate() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxHeartRate() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get minHeartRate => $_getIZ(7);
  @$pb.TagNumber(8)
  set minHeartRate($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMinHeartRate() => $_has(7);
  @$pb.TagNumber(8)
  void clearMinHeartRate() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get hrmWarmUpDuration => $_getIZ(8);
  @$pb.TagNumber(9)
  set hrmWarmUpDuration($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHrmWarmUpDuration() => $_has(8);
  @$pb.TagNumber(9)
  void clearHrmWarmUpDuration() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get hrmFatBurningDuration => $_getIZ(9);
  @$pb.TagNumber(10)
  set hrmFatBurningDuration($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasHrmFatBurningDuration() => $_has(9);
  @$pb.TagNumber(10)
  void clearHrmFatBurningDuration() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get hrmAerobicDuration => $_getIZ(10);
  @$pb.TagNumber(11)
  set hrmAerobicDuration($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasHrmAerobicDuration() => $_has(10);
  @$pb.TagNumber(11)
  void clearHrmAerobicDuration() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get hrmAnaerobicDuration => $_getIZ(11);
  @$pb.TagNumber(12)
  set hrmAnaerobicDuration($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasHrmAnaerobicDuration() => $_has(11);
  @$pb.TagNumber(12)
  void clearHrmAnaerobicDuration() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get hrmExtremeDuration => $_getIZ(12);
  @$pb.TagNumber(13)
  set hrmExtremeDuration($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasHrmExtremeDuration() => $_has(12);
  @$pb.TagNumber(13)
  void clearHrmExtremeDuration() => $_clearField(13);
}

class ProjectionMember_List extends $pb.GeneratedMessage {
  factory ProjectionMember_List({
    $core.Iterable<ProjectionMember>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  ProjectionMember_List._();

  factory ProjectionMember_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionMember_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionMember.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<ProjectionMember>(1, _omitFieldNames ? '' : 'list',
        subBuilder: ProjectionMember.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionMember_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionMember_List copyWith(
          void Function(ProjectionMember_List) updates) =>
      super.copyWith((message) => updates(message as ProjectionMember_List))
          as ProjectionMember_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionMember_List create() => ProjectionMember_List._();
  @$core.override
  ProjectionMember_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionMember_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionMember_List>(create);
  static ProjectionMember_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ProjectionMember> get list => $_getList(0);
}

class ProjectionMember extends $pb.GeneratedMessage {
  factory ProjectionMember({
    $core.String? deviceId,
    $core.String? userId,
    $core.String? userName,
    $core.int? status,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (userId != null) result.userId = userId;
    if (userName != null) result.userName = userName;
    if (status != null) result.status = status;
    return result;
  }

  ProjectionMember._();

  factory ProjectionMember.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProjectionMember.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProjectionMember',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'deviceId')
    ..aQS(2, _omitFieldNames ? '' : 'userId')
    ..aQS(3, _omitFieldNames ? '' : 'userName')
    ..aI(4, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.OU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionMember clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProjectionMember copyWith(void Function(ProjectionMember) updates) =>
      super.copyWith((message) => updates(message as ProjectionMember))
          as ProjectionMember;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectionMember create() => ProjectionMember._();
  @$core.override
  ProjectionMember createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProjectionMember getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProjectionMember>(create);
  static ProjectionMember? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userId => $_getSZ(1);
  @$pb.TagNumber(2)
  set userId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get userName => $_getSZ(2);
  @$pb.TagNumber(3)
  set userName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserName() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get status => $_getIZ(3);
  @$pb.TagNumber(4)
  set status($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);
}

class CourseZone extends $pb.GeneratedMessage {
  factory CourseZone({
    $core.int? status,
  }) {
    final result = create();
    if (status != null) result.status = status;
    return result;
  }

  CourseZone._();

  factory CourseZone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CourseZone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CourseZone',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CourseZone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CourseZone copyWith(void Function(CourseZone) updates) =>
      super.copyWith((message) => updates(message as CourseZone)) as CourseZone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CourseZone create() => CourseZone._();
  @$core.override
  CourseZone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CourseZone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CourseZone>(create);
  static CourseZone? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);
}

class PhoneUsage extends $pb.GeneratedMessage {
  factory PhoneUsage({
    $core.bool? hold,
    $core.int? screen,
    $core.int? foregroundAppType,
  }) {
    final result = create();
    if (hold != null) result.hold = hold;
    if (screen != null) result.screen = screen;
    if (foregroundAppType != null) result.foregroundAppType = foregroundAppType;
    return result;
  }

  PhoneUsage._();

  factory PhoneUsage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneUsage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneUsage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$core.bool>(1, _omitFieldNames ? '' : 'hold', $pb.PbFieldType.QB)
    ..aI(2, _omitFieldNames ? '' : 'screen', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'foregroundAppType',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneUsage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneUsage copyWith(void Function(PhoneUsage) updates) =>
      super.copyWith((message) => updates(message as PhoneUsage)) as PhoneUsage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneUsage create() => PhoneUsage._();
  @$core.override
  PhoneUsage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneUsage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneUsage>(create);
  static PhoneUsage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get hold => $_getBF(0);
  @$pb.TagNumber(1)
  set hold($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHold() => $_has(0);
  @$pb.TagNumber(1)
  void clearHold() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get screen => $_getIZ(1);
  @$pb.TagNumber(2)
  set screen($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasScreen() => $_has(1);
  @$pb.TagNumber(2)
  void clearScreen() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get foregroundAppType => $_getIZ(2);
  @$pb.TagNumber(3)
  set foregroundAppType($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasForegroundAppType() => $_has(2);
  @$pb.TagNumber(3)
  void clearForegroundAppType() => $_clearField(3);
}

class PhoneTrace extends $pb.GeneratedMessage {
  factory PhoneTrace({
    $core.int? dirAngle,
    $core.int? dirChangeCount,
    $core.int? dirChangeStd,
    $core.int? dirChangeAvg,
    $core.int? ambientLightAvg,
  }) {
    final result = create();
    if (dirAngle != null) result.dirAngle = dirAngle;
    if (dirChangeCount != null) result.dirChangeCount = dirChangeCount;
    if (dirChangeStd != null) result.dirChangeStd = dirChangeStd;
    if (dirChangeAvg != null) result.dirChangeAvg = dirChangeAvg;
    if (ambientLightAvg != null) result.ambientLightAvg = ambientLightAvg;
    return result;
  }

  PhoneTrace._();

  factory PhoneTrace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PhoneTrace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PhoneTrace',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'dirAngle', fieldType: $pb.PbFieldType.QU3)
    ..aI(2, _omitFieldNames ? '' : 'dirChangeCount',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'dirChangeStd',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(4, _omitFieldNames ? '' : 'dirChangeAvg',
        fieldType: $pb.PbFieldType.QU3)
    ..aI(5, _omitFieldNames ? '' : 'ambientLightAvg',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneTrace clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PhoneTrace copyWith(void Function(PhoneTrace) updates) =>
      super.copyWith((message) => updates(message as PhoneTrace)) as PhoneTrace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PhoneTrace create() => PhoneTrace._();
  @$core.override
  PhoneTrace createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PhoneTrace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PhoneTrace>(create);
  static PhoneTrace? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get dirAngle => $_getIZ(0);
  @$pb.TagNumber(1)
  set dirAngle($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDirAngle() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirAngle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get dirChangeCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set dirChangeCount($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDirChangeCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirChangeCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get dirChangeStd => $_getIZ(2);
  @$pb.TagNumber(3)
  set dirChangeStd($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDirChangeStd() => $_has(2);
  @$pb.TagNumber(3)
  void clearDirChangeStd() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get dirChangeAvg => $_getIZ(3);
  @$pb.TagNumber(4)
  set dirChangeAvg($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDirChangeAvg() => $_has(3);
  @$pb.TagNumber(4)
  void clearDirChangeAvg() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get ambientLightAvg => $_getIZ(4);
  @$pb.TagNumber(5)
  set ambientLightAvg($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAmbientLightAvg() => $_has(4);
  @$pb.TagNumber(5)
  void clearAmbientLightAvg() => $_clearField(5);
}

class MiShow_SlideRequest extends $pb.GeneratedMessage {
  factory MiShow_SlideRequest({
    $fixnum.Int64? timestamp,
  }) {
    final result = create();
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  MiShow_SlideRequest._();

  factory MiShow_SlideRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiShow_SlideRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiShow.SlideRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'timestamp', $pb.PbFieldType.QU6,
        defaultOrMaker: $fixnum.Int64.ZERO);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiShow_SlideRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiShow_SlideRequest copyWith(void Function(MiShow_SlideRequest) updates) =>
      super.copyWith((message) => updates(message as MiShow_SlideRequest))
          as MiShow_SlideRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiShow_SlideRequest create() => MiShow_SlideRequest._();
  @$core.override
  MiShow_SlideRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiShow_SlideRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiShow_SlideRequest>(create);
  static MiShow_SlideRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => $_clearField(1);
}

class MiShow_Demo extends $pb.GeneratedMessage {
  factory MiShow_Demo({
    $core.String? show,
  }) {
    final result = create();
    if (show != null) result.show = show;
    return result;
  }

  MiShow_Demo._();

  factory MiShow_Demo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiShow_Demo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiShow.Demo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'show');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiShow_Demo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiShow_Demo copyWith(void Function(MiShow_Demo) updates) =>
      super.copyWith((message) => updates(message as MiShow_Demo))
          as MiShow_Demo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiShow_Demo create() => MiShow_Demo._();
  @$core.override
  MiShow_Demo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiShow_Demo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MiShow_Demo>(create);
  static MiShow_Demo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get show => $_getSZ(0);
  @$pb.TagNumber(1)
  set show($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasShow() => $_has(0);
  @$pb.TagNumber(1)
  void clearShow() => $_clearField(1);
}

class MiShow extends $pb.GeneratedMessage {
  factory MiShow() => create();

  MiShow._();

  factory MiShow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MiShow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MiShow',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiShow clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MiShow copyWith(void Function(MiShow) updates) =>
      super.copyWith((message) => updates(message as MiShow)) as MiShow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MiShow create() => MiShow._();
  @$core.override
  MiShow createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MiShow getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MiShow>(create);
  static MiShow? _defaultInstance;
}

class Mis_Device_List extends $pb.GeneratedMessage {
  factory Mis_Device_List({
    $core.Iterable<Mis_Device>? list,
    $core.bool? carOwner,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    if (carOwner != null) result.carOwner = carOwner;
    return result;
  }

  Mis_Device_List._();

  factory Mis_Device_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Mis_Device_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Mis.Device.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<Mis_Device>(1, _omitFieldNames ? '' : 'list',
        subBuilder: Mis_Device.create)
    ..aOB(2, _omitFieldNames ? '' : 'carOwner');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis_Device_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis_Device_List copyWith(void Function(Mis_Device_List) updates) =>
      super.copyWith((message) => updates(message as Mis_Device_List))
          as Mis_Device_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mis_Device_List create() => Mis_Device_List._();
  @$core.override
  Mis_Device_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Mis_Device_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Mis_Device_List>(create);
  static Mis_Device_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Mis_Device> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get carOwner => $_getBF(1);
  @$pb.TagNumber(2)
  set carOwner($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCarOwner() => $_has(1);
  @$pb.TagNumber(2)
  void clearCarOwner() => $_clearField(2);
}

class Mis_Device extends $pb.GeneratedMessage {
  factory Mis_Device({
    $core.String? did,
    $core.int? pdid,
    $core.int? status,
    $core.String? name,
  }) {
    final result = create();
    if (did != null) result.did = did;
    if (pdid != null) result.pdid = pdid;
    if (status != null) result.status = status;
    if (name != null) result.name = name;
    return result;
  }

  Mis_Device._();

  factory Mis_Device.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Mis_Device.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Mis.Device',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'did')
    ..aI(2, _omitFieldNames ? '' : 'pdid', fieldType: $pb.PbFieldType.QU3)
    ..aI(3, _omitFieldNames ? '' : 'status', fieldType: $pb.PbFieldType.QU3)
    ..aQS(4, _omitFieldNames ? '' : 'name');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis_Device clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis_Device copyWith(void Function(Mis_Device) updates) =>
      super.copyWith((message) => updates(message as Mis_Device)) as Mis_Device;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mis_Device create() => Mis_Device._();
  @$core.override
  Mis_Device createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Mis_Device getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Mis_Device>(create);
  static Mis_Device? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get pdid => $_getIZ(1);
  @$pb.TagNumber(2)
  set pdid($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPdid() => $_has(1);
  @$pb.TagNumber(2)
  void clearPdid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get status => $_getIZ(2);
  @$pb.TagNumber(3)
  set status($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);
}

class Mis_WearSpecBasic extends $pb.GeneratedMessage {
  factory Mis_WearSpecBasic({
    $core.String? deviceInfo,
  }) {
    final result = create();
    if (deviceInfo != null) result.deviceInfo = deviceInfo;
    return result;
  }

  Mis_WearSpecBasic._();

  factory Mis_WearSpecBasic.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Mis_WearSpecBasic.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Mis.WearSpecBasic',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'deviceInfo');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis_WearSpecBasic clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis_WearSpecBasic copyWith(void Function(Mis_WearSpecBasic) updates) =>
      super.copyWith((message) => updates(message as Mis_WearSpecBasic))
          as Mis_WearSpecBasic;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mis_WearSpecBasic create() => Mis_WearSpecBasic._();
  @$core.override
  Mis_WearSpecBasic createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Mis_WearSpecBasic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Mis_WearSpecBasic>(create);
  static Mis_WearSpecBasic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceInfo => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceInfo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceInfo() => $_clearField(1);
}

class Mis_Payload extends $pb.GeneratedMessage {
  factory Mis_Payload({
    $core.String? spec,
    $core.List<$core.int>? packet,
  }) {
    final result = create();
    if (spec != null) result.spec = spec;
    if (packet != null) result.packet = packet;
    return result;
  }

  Mis_Payload._();

  factory Mis_Payload.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Mis_Payload.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Mis.Payload',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'spec')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'packet', $pb.PbFieldType.QY);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis_Payload clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis_Payload copyWith(void Function(Mis_Payload) updates) =>
      super.copyWith((message) => updates(message as Mis_Payload))
          as Mis_Payload;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mis_Payload create() => Mis_Payload._();
  @$core.override
  Mis_Payload createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Mis_Payload getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Mis_Payload>(create);
  static Mis_Payload? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get spec => $_getSZ(0);
  @$pb.TagNumber(1)
  set spec($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpec() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get packet => $_getN(1);
  @$pb.TagNumber(2)
  set packet($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPacket() => $_has(1);
  @$pb.TagNumber(2)
  void clearPacket() => $_clearField(2);
}

class Mis extends $pb.GeneratedMessage {
  factory Mis() => create();

  Mis._();

  factory Mis.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Mis.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Mis',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Mis copyWith(void Function(Mis) updates) =>
      super.copyWith((message) => updates(message as Mis)) as Mis;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Mis create() => Mis._();
  @$core.override
  Mis createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Mis getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Mis>(create);
  static Mis? _defaultInstance;
}

class Cert_ServerRequest extends $pb.GeneratedMessage {
  factory Cert_ServerRequest() => create();

  Cert_ServerRequest._();

  factory Cert_ServerRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Cert_ServerRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Cert.ServerRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cert_ServerRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cert_ServerRequest copyWith(void Function(Cert_ServerRequest) updates) =>
      super.copyWith((message) => updates(message as Cert_ServerRequest))
          as Cert_ServerRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cert_ServerRequest create() => Cert_ServerRequest._();
  @$core.override
  Cert_ServerRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Cert_ServerRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Cert_ServerRequest>(create);
  static Cert_ServerRequest? _defaultInstance;
}

class Cert_DeviceRequest extends $pb.GeneratedMessage {
  factory Cert_DeviceRequest({
    $core.String? payload,
  }) {
    final result = create();
    if (payload != null) result.payload = payload;
    return result;
  }

  Cert_DeviceRequest._();

  factory Cert_DeviceRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Cert_DeviceRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Cert.DeviceRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'payload');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cert_DeviceRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cert_DeviceRequest copyWith(void Function(Cert_DeviceRequest) updates) =>
      super.copyWith((message) => updates(message as Cert_DeviceRequest))
          as Cert_DeviceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cert_DeviceRequest create() => Cert_DeviceRequest._();
  @$core.override
  Cert_DeviceRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Cert_DeviceRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Cert_DeviceRequest>(create);
  static Cert_DeviceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get payload => $_getSZ(0);
  @$pb.TagNumber(1)
  set payload($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => $_clearField(1);
}

class Cert_Response extends $pb.GeneratedMessage {
  factory Cert_Response({
    $core.int? errorCode,
    $core.String? result,
  }) {
    final result$ = create();
    if (errorCode != null) result$.errorCode = errorCode;
    if (result != null) result$.result = result;
    return result$;
  }

  Cert_Response._();

  factory Cert_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Cert_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Cert.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'errorCode', fieldType: $pb.PbFieldType.Q3)
    ..aQS(2, _omitFieldNames ? '' : 'result');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cert_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cert_Response copyWith(void Function(Cert_Response) updates) =>
      super.copyWith((message) => updates(message as Cert_Response))
          as Cert_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cert_Response create() => Cert_Response._();
  @$core.override
  Cert_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Cert_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Cert_Response>(create);
  static Cert_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get errorCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errorCode($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasErrorCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get result => $_getSZ(1);
  @$pb.TagNumber(2)
  set result($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => $_clearField(2);
}

class Cert extends $pb.GeneratedMessage {
  factory Cert() => create();

  Cert._();

  factory Cert.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Cert.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Cert',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cert clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Cert copyWith(void Function(Cert) updates) =>
      super.copyWith((message) => updates(message as Cert)) as Cert;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cert create() => Cert._();
  @$core.override
  Cert createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Cert getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cert>(create);
  static Cert? _defaultInstance;
}

class Prop_Request extends $pb.GeneratedMessage {
  factory Prop_Request({
    $core.String? did,
    $core.Iterable<$core.String>? props,
  }) {
    final result = create();
    if (did != null) result.did = did;
    if (props != null) result.props.addAll(props);
    return result;
  }

  Prop_Request._();

  factory Prop_Request.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Prop_Request.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Prop.Request',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'did')
    ..pPS(2, _omitFieldNames ? '' : 'props');

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Prop_Request clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Prop_Request copyWith(void Function(Prop_Request) updates) =>
      super.copyWith((message) => updates(message as Prop_Request))
          as Prop_Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Prop_Request create() => Prop_Request._();
  @$core.override
  Prop_Request createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Prop_Request getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Prop_Request>(create);
  static Prop_Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get props => $_getList(1);
}

class Prop_Response extends $pb.GeneratedMessage {
  factory Prop_Response({
    $core.String? did,
    $core.Iterable<$0.KeyValueStr>? propsValue,
  }) {
    final result = create();
    if (did != null) result.did = did;
    if (propsValue != null) result.propsValue.addAll(propsValue);
    return result;
  }

  Prop_Response._();

  factory Prop_Response.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Prop_Response.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Prop.Response',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'did')
    ..pPM<$0.KeyValueStr>(2, _omitFieldNames ? '' : 'propsValue',
        subBuilder: $0.KeyValueStr.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Prop_Response clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Prop_Response copyWith(void Function(Prop_Response) updates) =>
      super.copyWith((message) => updates(message as Prop_Response))
          as Prop_Response;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Prop_Response create() => Prop_Response._();
  @$core.override
  Prop_Response createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Prop_Response getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Prop_Response>(create);
  static Prop_Response? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get did => $_getSZ(0);
  @$pb.TagNumber(1)
  set did($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDid() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.KeyValueStr> get propsValue => $_getList(1);
}

class Prop extends $pb.GeneratedMessage {
  factory Prop() => create();

  Prop._();

  factory Prop.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Prop.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Prop',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Prop clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Prop copyWith(void Function(Prop) updates) =>
      super.copyWith((message) => updates(message as Prop)) as Prop;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Prop create() => Prop._();
  @$core.override
  Prop createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Prop getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Prop>(create);
  static Prop? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
