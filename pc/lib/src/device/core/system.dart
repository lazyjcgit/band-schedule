import 'dart:async';
import 'dart:typed_data';

import 'package:band_schedule_pc/src/device/core/entity.dart';

abstract class System {
  late DeviceEntity entity;

  void attach(DeviceEntity entity) {
    this.entity = entity;
  }

  void onData(Uint8List data);

  Future<void> dispose() async {}
}

abstract class Dispatcher {
  final _systems = <System>[];

  void register(System system) => _systems.add(system);

  void dispatch(Uint8List data) {
    for (final system in _systems) {
      system.onData(data);
    }
  }

  List<System> get systems => List.unmodifiable(_systems);
}

abstract class TypedSystem extends System {
  @override
  void onData(Uint8List data) {
    final decoded = decode(data);
    if (decoded != null) {
      handle(decoded);
    }
  }

  Object? decode(Uint8List data);
  void handle(Object message);
}
