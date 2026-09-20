// This is a generated file - do not edit.
//
// Generated from wear_stock.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'wear_stock.pbenum.dart';

enum Stock_Payload { stockInfo, stockInfoList, symbol, stockSymbolList, notSet }

class Stock extends $pb.GeneratedMessage {
  factory Stock({
    StockInfo? stockInfo,
    StockInfo_List? stockInfoList,
    $core.String? symbol,
    StockSymbol_List? stockSymbolList,
  }) {
    final result = create();
    if (stockInfo != null) result.stockInfo = stockInfo;
    if (stockInfoList != null) result.stockInfoList = stockInfoList;
    if (symbol != null) result.symbol = symbol;
    if (stockSymbolList != null) result.stockSymbolList = stockSymbolList;
    return result;
  }

  Stock._();

  factory Stock.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Stock.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Stock_Payload> _Stock_PayloadByTag = {
    1: Stock_Payload.stockInfo,
    2: Stock_Payload.stockInfoList,
    3: Stock_Payload.symbol,
    4: Stock_Payload.stockSymbolList,
    0: Stock_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Stock',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<StockInfo>(1, _omitFieldNames ? '' : 'stockInfo',
        subBuilder: StockInfo.create)
    ..aOM<StockInfo_List>(2, _omitFieldNames ? '' : 'stockInfoList',
        subBuilder: StockInfo_List.create)
    ..aOS(3, _omitFieldNames ? '' : 'symbol')
    ..aOM<StockSymbol_List>(4, _omitFieldNames ? '' : 'stockSymbolList',
        subBuilder: StockSymbol_List.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Stock clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Stock copyWith(void Function(Stock) updates) =>
      super.copyWith((message) => updates(message as Stock)) as Stock;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Stock create() => Stock._();
  @$core.override
  Stock createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Stock getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stock>(create);
  static Stock? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  Stock_Payload whichPayload() => _Stock_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StockInfo get stockInfo => $_getN(0);
  @$pb.TagNumber(1)
  set stockInfo(StockInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStockInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearStockInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  StockInfo ensureStockInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  StockInfo_List get stockInfoList => $_getN(1);
  @$pb.TagNumber(2)
  set stockInfoList(StockInfo_List value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStockInfoList() => $_has(1);
  @$pb.TagNumber(2)
  void clearStockInfoList() => $_clearField(2);
  @$pb.TagNumber(2)
  StockInfo_List ensureStockInfoList() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get symbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbol($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => $_clearField(3);

  @$pb.TagNumber(4)
  StockSymbol_List get stockSymbolList => $_getN(3);
  @$pb.TagNumber(4)
  set stockSymbolList(StockSymbol_List value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStockSymbolList() => $_has(3);
  @$pb.TagNumber(4)
  void clearStockSymbolList() => $_clearField(4);
  @$pb.TagNumber(4)
  StockSymbol_List ensureStockSymbolList() => $_ensure(3);
}

class StockInfo_List extends $pb.GeneratedMessage {
  factory StockInfo_List({
    $core.Iterable<StockInfo>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  StockInfo_List._();

  factory StockInfo_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StockInfo_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StockInfo.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<StockInfo>(1, _omitFieldNames ? '' : 'list',
        subBuilder: StockInfo.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockInfo_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockInfo_List copyWith(void Function(StockInfo_List) updates) =>
      super.copyWith((message) => updates(message as StockInfo_List))
          as StockInfo_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockInfo_List create() => StockInfo_List._();
  @$core.override
  StockInfo_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StockInfo_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StockInfo_List>(create);
  static StockInfo_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<StockInfo> get list => $_getList(0);
}

class StockInfo extends $pb.GeneratedMessage {
  factory StockInfo({
    $core.String? symbol,
    $core.String? market,
    $core.String? name,
    $core.double? latestPrice,
    $core.double? preClose,
    $core.int? halted,
    $core.int? timestamp,
    $core.int? delayMintue,
  }) {
    final result = create();
    if (symbol != null) result.symbol = symbol;
    if (market != null) result.market = market;
    if (name != null) result.name = name;
    if (latestPrice != null) result.latestPrice = latestPrice;
    if (preClose != null) result.preClose = preClose;
    if (halted != null) result.halted = halted;
    if (timestamp != null) result.timestamp = timestamp;
    if (delayMintue != null) result.delayMintue = delayMintue;
    return result;
  }

  StockInfo._();

  factory StockInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StockInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StockInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'symbol')
    ..aQS(2, _omitFieldNames ? '' : 'market')
    ..aQS(3, _omitFieldNames ? '' : 'name')
    ..aD(4, _omitFieldNames ? '' : 'latestPrice', fieldType: $pb.PbFieldType.QF)
    ..aD(5, _omitFieldNames ? '' : 'preClose', fieldType: $pb.PbFieldType.QF)
    ..aI(6, _omitFieldNames ? '' : 'halted', fieldType: $pb.PbFieldType.QU3)
    ..aI(7, _omitFieldNames ? '' : 'timestamp', fieldType: $pb.PbFieldType.QU3)
    ..aI(8, _omitFieldNames ? '' : 'delayMintue',
        fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockInfo copyWith(void Function(StockInfo) updates) =>
      super.copyWith((message) => updates(message as StockInfo)) as StockInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockInfo create() => StockInfo._();
  @$core.override
  StockInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StockInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockInfo>(create);
  static StockInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get symbol => $_getSZ(0);
  @$pb.TagNumber(1)
  set symbol($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSymbol() => $_has(0);
  @$pb.TagNumber(1)
  void clearSymbol() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get market => $_getSZ(1);
  @$pb.TagNumber(2)
  set market($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMarket() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarket() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get latestPrice => $_getN(3);
  @$pb.TagNumber(4)
  set latestPrice($core.double value) => $_setFloat(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLatestPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearLatestPrice() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get preClose => $_getN(4);
  @$pb.TagNumber(5)
  set preClose($core.double value) => $_setFloat(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPreClose() => $_has(4);
  @$pb.TagNumber(5)
  void clearPreClose() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get halted => $_getIZ(5);
  @$pb.TagNumber(6)
  set halted($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHalted() => $_has(5);
  @$pb.TagNumber(6)
  void clearHalted() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get timestamp => $_getIZ(6);
  @$pb.TagNumber(7)
  set timestamp($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTimestamp() => $_has(6);
  @$pb.TagNumber(7)
  void clearTimestamp() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get delayMintue => $_getIZ(7);
  @$pb.TagNumber(8)
  set delayMintue($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDelayMintue() => $_has(7);
  @$pb.TagNumber(8)
  void clearDelayMintue() => $_clearField(8);
}

class StockSymbol_List extends $pb.GeneratedMessage {
  factory StockSymbol_List({
    $core.Iterable<StockSymbol>? list,
  }) {
    final result = create();
    if (list != null) result.list.addAll(list);
    return result;
  }

  StockSymbol_List._();

  factory StockSymbol_List.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StockSymbol_List.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StockSymbol.List',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..pPM<StockSymbol>(1, _omitFieldNames ? '' : 'list',
        subBuilder: StockSymbol.create);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockSymbol_List clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockSymbol_List copyWith(void Function(StockSymbol_List) updates) =>
      super.copyWith((message) => updates(message as StockSymbol_List))
          as StockSymbol_List;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockSymbol_List create() => StockSymbol_List._();
  @$core.override
  StockSymbol_List createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StockSymbol_List getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StockSymbol_List>(create);
  static StockSymbol_List? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<StockSymbol> get list => $_getList(0);
}

class StockSymbol extends $pb.GeneratedMessage {
  factory StockSymbol({
    $core.String? symbol,
    $core.bool? isWidget,
    $core.int? order,
  }) {
    final result = create();
    if (symbol != null) result.symbol = symbol;
    if (isWidget != null) result.isWidget = isWidget;
    if (order != null) result.order = order;
    return result;
  }

  StockSymbol._();

  factory StockSymbol.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StockSymbol.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StockSymbol',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'protocol'),
      createEmptyInstance: create)
    ..aQS(1, _omitFieldNames ? '' : 'symbol')
    ..a<$core.bool>(2, _omitFieldNames ? '' : 'isWidget', $pb.PbFieldType.QB)
    ..aI(3, _omitFieldNames ? '' : 'order', fieldType: $pb.PbFieldType.QU3);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockSymbol clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StockSymbol copyWith(void Function(StockSymbol) updates) =>
      super.copyWith((message) => updates(message as StockSymbol))
          as StockSymbol;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockSymbol create() => StockSymbol._();
  @$core.override
  StockSymbol createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StockSymbol getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StockSymbol>(create);
  static StockSymbol? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get symbol => $_getSZ(0);
  @$pb.TagNumber(1)
  set symbol($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSymbol() => $_has(0);
  @$pb.TagNumber(1)
  void clearSymbol() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isWidget => $_getBF(1);
  @$pb.TagNumber(2)
  set isWidget($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsWidget() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsWidget() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get order => $_getIZ(2);
  @$pb.TagNumber(3)
  set order($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrder() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
