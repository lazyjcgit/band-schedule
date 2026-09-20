// This is a generated file - do not edit.
//
// Generated from wear_stock.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:typed_data';
import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use stockDescriptor instead')
const Stock$json = {
  '1': 'Stock',
  '2': [
    {
      '1': 'stock_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.StockInfo',
      '9': 0,
      '10': 'stockInfo'
    },
    {
      '1': 'stock_info_list',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.StockInfo.List',
      '9': 0,
      '10': 'stockInfoList'
    },
    {'1': 'symbol', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'symbol'},
    {
      '1': 'stock_symbol_list',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.StockSymbol.List',
      '9': 0,
      '10': 'stockSymbolList'
    },
  ],
  '4': [Stock_StockID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use stockDescriptor instead')
const Stock_StockID$json = {
  '1': 'StockID',
  '2': [
    {'1': 'SYNC_STOCK_INFO', '2': 0},
    {'1': 'SYNC_STOCK_INFO_LIST', '2': 1},
    {'1': 'DELETE_STOCK', '2': 2},
    {'1': 'SET_STOCK_LIST', '2': 3},
    {'1': 'GET_STOCK_LIST', '2': 4},
    {'1': 'WEAR_REQUEST', '2': 5},
  ],
};

/// Descriptor for `Stock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockDescriptor = $convert.base64Decode(
    'CgVTdG9jaxI0CgpzdG9ja19pbmZvGAEgASgLMhMucHJvdG9jb2wuU3RvY2tJbmZvSABSCXN0b2'
    'NrSW5mbxJCCg9zdG9ja19pbmZvX2xpc3QYAiABKAsyGC5wcm90b2NvbC5TdG9ja0luZm8uTGlz'
    'dEgAUg1zdG9ja0luZm9MaXN0EhgKBnN5bWJvbBgDIAEoCUgAUgZzeW1ib2wSSAoRc3RvY2tfc3'
    'ltYm9sX2xpc3QYBCABKAsyGi5wcm90b2NvbC5TdG9ja1N5bWJvbC5MaXN0SABSD3N0b2NrU3lt'
    'Ym9sTGlzdCKEAQoHU3RvY2tJRBITCg9TWU5DX1NUT0NLX0lORk8QABIYChRTWU5DX1NUT0NLX0'
    'lORk9fTElTVBABEhAKDERFTEVURV9TVE9DSxACEhIKDlNFVF9TVE9DS19MSVNUEAMSEgoOR0VU'
    'X1NUT0NLX0xJU1QQBBIQCgxXRUFSX1JFUVVFU1QQBUIJCgdwYXlsb2Fk');

@$core.Deprecated('Use stockInfoDescriptor instead')
const StockInfo$json = {
  '1': 'StockInfo',
  '2': [
    {'1': 'symbol', '3': 1, '4': 2, '5': 9, '10': 'symbol'},
    {'1': 'market', '3': 2, '4': 2, '5': 9, '10': 'market'},
    {'1': 'name', '3': 3, '4': 2, '5': 9, '10': 'name'},
    {'1': 'latest_price', '3': 4, '4': 2, '5': 2, '10': 'latestPrice'},
    {'1': 'pre_close', '3': 5, '4': 2, '5': 2, '10': 'preClose'},
    {'1': 'halted', '3': 6, '4': 2, '5': 13, '10': 'halted'},
    {'1': 'timestamp', '3': 7, '4': 2, '5': 13, '10': 'timestamp'},
    {'1': 'delay_mintue', '3': 8, '4': 2, '5': 13, '10': 'delayMintue'},
  ],
  '3': [StockInfo_List$json],
};

@$core.Deprecated('Use stockInfoDescriptor instead')
const StockInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.StockInfo',
      '10': 'list'
    },
  ],
};

/// Descriptor for `StockInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockInfoDescriptor = $convert.base64Decode(
    'CglTdG9ja0luZm8SFgoGc3ltYm9sGAEgAigJUgZzeW1ib2wSFgoGbWFya2V0GAIgAigJUgZtYX'
    'JrZXQSEgoEbmFtZRgDIAIoCVIEbmFtZRIhCgxsYXRlc3RfcHJpY2UYBCACKAJSC2xhdGVzdFBy'
    'aWNlEhsKCXByZV9jbG9zZRgFIAIoAlIIcHJlQ2xvc2USFgoGaGFsdGVkGAYgAigNUgZoYWx0ZW'
    'QSHAoJdGltZXN0YW1wGAcgAigNUgl0aW1lc3RhbXASIQoMZGVsYXlfbWludHVlGAggAigNUgtk'
    'ZWxheU1pbnR1ZRovCgRMaXN0EicKBGxpc3QYASADKAsyEy5wcm90b2NvbC5TdG9ja0luZm9SBG'
    'xpc3Q=');

@$core.Deprecated('Use stockSymbolDescriptor instead')
const StockSymbol$json = {
  '1': 'StockSymbol',
  '2': [
    {'1': 'symbol', '3': 1, '4': 2, '5': 9, '10': 'symbol'},
    {'1': 'is_widget', '3': 2, '4': 2, '5': 8, '10': 'isWidget'},
    {'1': 'order', '3': 3, '4': 2, '5': 13, '10': 'order'},
  ],
  '3': [StockSymbol_List$json],
};

@$core.Deprecated('Use stockSymbolDescriptor instead')
const StockSymbol_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.StockSymbol',
      '10': 'list'
    },
  ],
};

/// Descriptor for `StockSymbol`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockSymbolDescriptor = $convert.base64Decode(
    'CgtTdG9ja1N5bWJvbBIWCgZzeW1ib2wYASACKAlSBnN5bWJvbBIbCglpc193aWRnZXQYAiACKA'
    'hSCGlzV2lkZ2V0EhQKBW9yZGVyGAMgAigNUgVvcmRlchoxCgRMaXN0EikKBGxpc3QYASADKAsy'
    'FS5wcm90b2NvbC5TdG9ja1N5bWJvbFIEbGlzdA==');
