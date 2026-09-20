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

class Stock_StockID extends $pb.ProtobufEnum {
  static const Stock_StockID SYNC_STOCK_INFO =
      Stock_StockID._(0, _omitEnumNames ? '' : 'SYNC_STOCK_INFO');
  static const Stock_StockID SYNC_STOCK_INFO_LIST =
      Stock_StockID._(1, _omitEnumNames ? '' : 'SYNC_STOCK_INFO_LIST');
  static const Stock_StockID DELETE_STOCK =
      Stock_StockID._(2, _omitEnumNames ? '' : 'DELETE_STOCK');
  static const Stock_StockID SET_STOCK_LIST =
      Stock_StockID._(3, _omitEnumNames ? '' : 'SET_STOCK_LIST');
  static const Stock_StockID GET_STOCK_LIST =
      Stock_StockID._(4, _omitEnumNames ? '' : 'GET_STOCK_LIST');
  static const Stock_StockID WEAR_REQUEST =
      Stock_StockID._(5, _omitEnumNames ? '' : 'WEAR_REQUEST');

  static const $core.List<Stock_StockID> values = <Stock_StockID>[
    SYNC_STOCK_INFO,
    SYNC_STOCK_INFO_LIST,
    DELETE_STOCK,
    SET_STOCK_LIST,
    GET_STOCK_LIST,
    WEAR_REQUEST,
  ];

  static final $core.List<Stock_StockID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static Stock_StockID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Stock_StockID._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
