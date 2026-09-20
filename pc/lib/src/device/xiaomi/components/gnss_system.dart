import 'dart:async';
import 'dart:collection';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:band_schedule_pc/src/core/logging/logging_service.dart';
import 'package:band_schedule_pc/src/device/core/event_bus.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/info_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/components/mass_system.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_protocol_trace.dart';
import 'package:band_schedule_pc/src/device/xiaomi/system/xiaomi_system.dart';
import 'package:band_schedule_pc/src/features/accounts/models/mi_account_models.dart';
import 'package:band_schedule_pc/src/features/accounts/services/mi_account_service.dart';
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear.pb.dart' as pb;
import 'package:band_schedule_pc/src/protocols/generated/xiaomi/wear_gnss.pb.dart'
    as pb_gnss;
import 'package:band_schedule_pc/src/protocols/xiaomi/packet/mass_packet.dart';

typedef XiaomiGpsInfoProvider = Future<pb_gnss.GpsInfo?> Function();

/// Raised when Xiaomi-hosted AGPS metadata cannot be requested without a
/// stored Xiaomi account session.
class XiaomiGnssAccountRequiredException implements Exception {
  const XiaomiGnssAccountRequiredException();

  @override
  String toString() => 'Xiaomi account is required for GNSS assistance data';
}

/// Normalized GNSS request after applying the defaults used by Mi Fitness.
class XiaomiGnssRequest {
  const XiaomiGnssRequest({
    required this.online,
    required this.days,
    required this.type,
    required this.source,
    required this.sourceFromDevice,
    this.expectedSliceLength,
    this.needGpsInfo = false,
  });

  final bool online;
  final int days;
  final int type;
  final String source;
  final bool sourceFromDevice;
  final int? expectedSliceLength;
  final bool needGpsInfo;

  factory XiaomiGnssRequest.fromPayload({
    required int requestId,
    required pb_gnss.Gnss payload,
    required String defaultSource,
  }) {
    final data = payload.hasData() ? payload.data : null;
    final source = data?.source.trim() ?? '';
    final requestedSource = source.isEmpty ? defaultSource.trim() : source;
    if (requestedSource.isEmpty) {
      throw StateError('GNSS request source is empty');
    }

    return XiaomiGnssRequest(
      online: requestId == pb_gnss.Gnss_GnssID.REQUEST_ONLINE.value,
      days: data?.hasDays() == true
          ? data!.days
          : payload.hasDays()
          ? payload.days
          : 0,
      type: data?.hasType() == true ? data!.type.value : 1,
      source: requestedSource,
      sourceFromDevice: source.isNotEmpty,
      expectedSliceLength: data?.hasExpectedSliceLength() == true
          ? data!.expectedSliceLength
          : null,
      needGpsInfo: data?.hasNeedGpsInfo() == true && data!.needGpsInfo,
    );
  }
}

/// Responds to the wearable's GNSS/AGPS requests.
///
/// Xiaomi Fitness sends the request over protobuf and expects the actual
/// assistance file over the existing mass channel. Keeping the network part
/// here makes the protocol boundary explicit and lets the normal mass sender
/// retain its resume, segmentation and checksum behavior.
class XiaomiGnssSystem extends XiaomiPbSystem {
  XiaomiGnssSystem({
    Dio? dio,
    this.gpsInfoProvider,
    this.defaultSource = 'ublox',
  }) : _dio = dio ?? Dio(),
       _log = getLogger('XiaomiGnssSystem');

  static const _ubloxOnlineUrl = 'https://api.70mai.com.cn/ublox/getOnlineData';
  static const _ubloxOfflineUrl =
      'https://api.70mai.com.cn/ublox/getOfflineData';
  static const _requestTimeout = Duration(seconds: 15);

  final Dio _dio;
  final Logger _log;
  final XiaomiGpsInfoProvider? gpsInfoProvider;
  final String defaultSource;
  final _pendingDataRequests = Queue<XiaomiGnssRequest>();
  final _pendingRequestKeys = <String>{};
  bool _processingDataRequests = false;
  String? _activeRequestKey;

  @override
  void onWearPacket(pb.WearPacket packet) {
    if (packet.type != pb.WearPacket_Type.GNSS) return;

    if (packet.id == pb_gnss.Gnss_GnssID.REQUEST_GPS_INFO.value) {
      _log.info('[${entity.id}] GNSS phone-location request received');
      final operation = component.protocolTracer?.beginOperation(
        'gnss.location',
        data: {'origin': 'wearable', 'requestId': packet.id},
      );
      unawaited(_handleLocationRequest(operation));
      return;
    }
    if (packet.id != pb_gnss.Gnss_GnssID.REQUEST_ONLINE.value &&
        packet.id != pb_gnss.Gnss_GnssID.REQUEST_OFFLINE.value) {
      return;
    }
    if (!packet.hasGnss()) {
      _log.warning('[${entity.id}] GNSS request has no payload');
      return;
    }
    try {
      final request = XiaomiGnssRequest.fromPayload(
        requestId: packet.id,
        payload: packet.gnss,
        defaultSource: defaultSource,
      );
      _log.info(
        '[${entity.id}] GNSS assistance request received: '
        'online=${request.online}, days=${request.days}, type=${request.type}, '
        'source=${request.source}, sourceFromDevice=${request.sourceFromDevice}, '
        'needGpsInfo=${request.needGpsInfo}',
      );
      _enqueueDataRequest(request);
    } catch (error, stackTrace) {
      _log.warning('[${entity.id}] invalid GNSS request', error, stackTrace);
    }
  }

  void _enqueueDataRequest(XiaomiGnssRequest request) {
    final key = _requestKey(request);
    if (_activeRequestKey == key || _pendingRequestKeys.contains(key)) {
      _log.fine('[${entity.id}] coalescing duplicate GNSS request key=$key');
      return;
    }
    _pendingDataRequests.add(request);
    _pendingRequestKeys.add(key);
    _log.fine(
      '[${entity.id}] queued GNSS assistance request key=$key '
      'queue=${_pendingDataRequests.length}',
    );
    if (_processingDataRequests) return;
    _processingDataRequests = true;
    unawaited(_drainDataRequests());
  }

  Future<void> _drainDataRequests() async {
    _log.fine('[${entity.id}] GNSS assistance request queue started');
    try {
      while (_pendingDataRequests.isNotEmpty) {
        final request = _pendingDataRequests.removeFirst();
        final key = _requestKey(request);
        _pendingRequestKeys.remove(key);
        _activeRequestKey = key;
        _log.fine('[${entity.id}] processing GNSS assistance request key=$key');
        try {
          await _handleDataRequest(request);
        } finally {
          _activeRequestKey = null;
        }
      }
    } finally {
      _processingDataRequests = false;
      _log.fine('[${entity.id}] GNSS assistance request queue drained');
      if (_pendingDataRequests.isNotEmpty) {
        _processingDataRequests = true;
        unawaited(_drainDataRequests());
      }
    }
  }

  Future<void> _handleDataRequest(XiaomiGnssRequest request) async {
    final operation = component.protocolTracer?.beginOperation(
      'gnss.update',
      data: {
        'online': request.online,
        'days': request.days,
        'type': request.type,
        'source': request.source,
        'sourceFromDevice': request.sourceFromDevice,
        if (request.expectedSliceLength != null)
          'expectedSliceLength': request.expectedSliceLength,
        'needGpsInfo': request.needGpsInfo,
      },
    );
    try {
      final source = await _resolveSource(request);
      operation?.step('source_resolved', data: {'source': source});
      _log.info(
        '[${entity.id}] GNSS request source=$source type=${request.type} '
        'online=${request.online} days=${request.days} '
        'slice=${request.expectedSliceLength ?? '-'}',
      );
      operation?.step(
        'network_request_started',
        data: {
          'source': source,
          'type': request.type,
          'online': request.online,
          'days': request.days,
        },
      );
      final bytes = await _downloadFile(
        source: source,
        type: request.type,
        online: request.online,
        days: request.days,
        operation: operation,
      );
      operation?.step('download_completed', data: {'fileLength': bytes.length});
      final mass = entity.system<XiaomiMassSystem>();
      if (mass == null) throw StateError('Xiaomi mass system unavailable');
      operation?.step('mass_transfer_started');
      await mass.sendFile(
        fileData: bytes,
        dataType: _massType(type: request.type, online: request.online),
        expectedSliceLength: request.expectedSliceLength,
      );
      _log.info(
        '[${entity.id}] GNSS assistance data sent: bytes=${bytes.length}, '
        'online=${request.online}, type=${request.type}',
      );
      operation?.step('transport_completed');
      if (request.needGpsInfo) {
        operation?.step('gps_info_requested');
        final sent = await _sendGpsInfo();
        if (!sent) operation?.step('location_provider_missing');
      }
      operation?.complete();
    } catch (error, stackTrace) {
      operation?.fail(error);
      if (error is XiaomiGnssAccountRequiredException ||
          error is MiAccountSessionExpired) {
        _log.warning(
          '[${entity.id}] GNSS assistance request requires a Xiaomi account',
        );
        entity.emit(XiaomiGnssAccountRequired(deviceId: entity.id));
      }
      _log.warning('[${entity.id}] GNSS request failed', error, stackTrace);
    }
  }

  String _requestKey(XiaomiGnssRequest request) => [
    request.online,
    request.days,
    request.type,
    request.source,
    request.expectedSliceLength,
    request.needGpsInfo,
  ].join('|');

  Future<String> _resolveSource(XiaomiGnssRequest request) async {
    if (request.sourceFromDevice) return request.source;

    final info = entity.system<XiaomiInfoSystem>();
    if (info != null && info.model == null) {
      try {
        // GNSS requests can arrive before the initial device sync has loaded
        // the model.  Mi Fitness uses the product metadata in exactly this
        // case, so load the model before choosing the fallback source.
        await info.fetchDeviceInfo();
      } catch (error, stackTrace) {
        _log.fine(
          '[${entity.id}] could not load model before GNSS source fallback',
          error,
          stackTrace,
        );
      }
    }

    final productDevice = info?.productDevice?.toLowerCase() ?? '';
    final model = info?.model?.toLowerCase() ?? '';
    if (_isP65Model(productDevice) || _isP65Model(model)) {
      // p65's sensor image contains the Airoha AG3335M GNSS driver. This is
      // only a fallback when the wearable omitted source; an explicit source
      // from the request always wins above.
      return 'airoha';
    }
    return request.source;
  }

  bool _isP65Model(String model) {
    return model.contains('p65') ||
        model.contains('redmi watch 6') ||
        model.contains('m2523w1');
  }

  Future<Uint8List> _downloadFile({
    required String source,
    required int type,
    required bool online,
    required int days,
    XiaomiTraceOperation? operation,
  }) async {
    final url = source == 'ublox'
        ? (online ? _ubloxOnlineUrl : _ubloxOfflineUrl)
        : null;
    final response = url == null
        ? await _requestXiaomiFileUrl(
            source: source,
            type: type,
            online: online,
            days: days,
            operation: operation,
          )
        : await _requestBinaryFile(
            url: url,
            queryParameters: online ? null : {'start': 0, 'days': days},
            operation: operation,
          );
    final data = response.data;
    if (data is Uint8List) return data;
    if (data is List<int>) return Uint8List.fromList(data);
    throw StateError('GNSS endpoint returned no binary data');
  }

  Future<Response<dynamic>> _requestXiaomiFileUrl({
    required String source,
    required int type,
    required bool online,
    required int days,
    XiaomiTraceOperation? operation,
  }) async {
    final service = MiAccountService(dio: _dio);
    final token = await service.loadStoredToken();
    if (token == null) {
      _log.warning(
        '[${entity.id}] cannot request Xiaomi GNSS metadata: account not signed in',
      );
      throw const XiaomiGnssAccountRequiredException();
    }
    final endpoint = online ? 'get_online_file' : 'get_offline_file';
    operation?.step(
      'metadata_request_started',
      data: {
        'endpoint': 'xiaomi.agps/$endpoint',
        'authenticated': true,
        'source': source,
      },
    );
    final url = await service.fetchAgpsFileUrl(
      token: token,
      source: source,
      type: type,
      online: online,
      days: days,
      // Mi Fitness sends an empty model when the device model is not known
      // yet. The transport kind is not a valid Xiaomi product model.
      model: entity.system<XiaomiInfoSystem>()?.model ?? '',
    );
    operation?.step(
      'metadata_response_received',
      data: {'authenticated': true, 'fileUrlReceived': true},
    );
    return _requestBinaryFile(url: url, operation: operation);
  }

  Future<Response<dynamic>> _requestBinaryFile({
    required String url,
    Map<String, Object?>? queryParameters,
    XiaomiTraceOperation? operation,
  }) async {
    _log.fine(
      '[${entity.id}] requesting GNSS binary data: url=$url '
      'query=${queryParameters ?? const {}}',
    );
    operation?.step('file_request_started', data: {'url': url});
    final response = await _dio
        .get<dynamic>(
          url,
          queryParameters: queryParameters,
          options: Options(responseType: ResponseType.bytes),
        )
        .timeout(_requestTimeout);
    operation?.step(
      'file_response_received',
      data: {'statusCode': response.statusCode},
    );
    _log.fine(
      '[${entity.id}] GNSS binary response received: '
      'status=${response.statusCode}, bytes=${response.data is List<int> ? (response.data as List<int>).length : 0}',
    );
    return response;
  }

  Future<void> _handleLocationRequest(XiaomiTraceOperation? operation) async {
    try {
      final sent = await _sendGpsInfo(operation: operation);
      if (sent) {
        operation?.complete();
      } else {
        operation?.fail(
          StateError('GNSS phone location provider is not configured'),
        );
      }
    } catch (error, stackTrace) {
      operation?.fail(error);
      _log.warning(
        '[${entity.id}] GNSS location response failed',
        error,
        stackTrace,
      );
    }
  }

  Future<bool> _sendGpsInfo({XiaomiTraceOperation? operation}) async {
    final info = await gpsInfoProvider?.call();
    if (info == null) {
      _log.warning(
        '[${entity.id}] GNSS requested phone location but no location provider is configured',
      );
      operation?.step('location_provider_missing');
      return false;
    }
    await component.sendPbPacket(
      pb.WearPacket(
        type: pb.WearPacket_Type.GNSS,
        id: pb_gnss.Gnss_GnssID.SEND_GPS_INFO.value,
        gnss: pb_gnss.Gnss(gpsInfo: info),
      ),
    );
    _log.info('[${entity.id}] GNSS phone location response sent');
    operation?.step(
      'location_response_sent',
      data: {'responseId': pb_gnss.Gnss_GnssID.SEND_GPS_INFO.value},
    );
    return true;
  }

  MassDataType _massType({required int type, required bool online}) {
    return switch ((type, online)) {
      (1, true) => MassDataType.gnssAgpsOnline,
      (1, false) => MassDataType.gnssAgpsOffline,
      (2, true) => MassDataType.gnssBeidouOnline,
      (2, false) => MassDataType.gnssBeidouOffline,
      (3, true) => MassDataType.gnssGalileoOnline,
      (3, false) => MassDataType.gnssGalileoOffline,
      _ => throw ArgumentError('Unsupported GNSS type: $type'),
    };
  }
}
