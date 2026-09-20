// This is a generated file - do not edit.
//
// Generated from wear_mass.proto.

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

@$core.Deprecated('Use massDescriptor instead')
const Mass$json = {
  '1': 'Mass',
  '2': [
    {
      '1': 'prepare_request',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareRequest',
      '9': 0,
      '10': 'prepareRequest'
    },
    {
      '1': 'prepare_response',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareResponse',
      '9': 0,
      '10': 'prepareResponse'
    },
    {
      '1': 'mass_control',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.protocol.MassControl',
      '9': 0,
      '10': 'massControl'
    },
  ],
  '4': [Mass_MassID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use massDescriptor instead')
const Mass_MassID$json = {
  '1': 'MassID',
  '2': [
    {'1': 'PREPARE', '2': 0},
    {'1': 'CONTROL', '2': 1},
  ],
};

/// Descriptor for `Mass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List massDescriptor = $convert.base64Decode(
    'CgRNYXNzEkMKD3ByZXBhcmVfcmVxdWVzdBgBIAEoCzIYLnByb3RvY29sLlByZXBhcmVSZXF1ZX'
    'N0SABSDnByZXBhcmVSZXF1ZXN0EkYKEHByZXBhcmVfcmVzcG9uc2UYAiABKAsyGS5wcm90b2Nv'
    'bC5QcmVwYXJlUmVzcG9uc2VIAFIPcHJlcGFyZVJlc3BvbnNlEjoKDG1hc3NfY29udHJvbBgDIA'
    'EoCzIVLnByb3RvY29sLk1hc3NDb250cm9sSABSC21hc3NDb250cm9sIiIKBk1hc3NJRBILCgdQ'
    'UkVQQVJFEAASCwoHQ09OVFJPTBABQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use prepareRequestDescriptor instead')
const PrepareRequest$json = {
  '1': 'PrepareRequest',
  '2': [
    {'1': 'data_type', '3': 1, '4': 2, '5': 13, '10': 'dataType'},
    {'1': 'data_id', '3': 2, '4': 2, '5': 12, '10': 'dataId'},
    {'1': 'data_length', '3': 3, '4': 2, '5': 13, '10': 'dataLength'},
    {
      '1': 'support_compress_mode',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'supportCompressMode'
    },
  ],
};

/// Descriptor for `PrepareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareRequestDescriptor = $convert.base64Decode(
    'Cg5QcmVwYXJlUmVxdWVzdBIbCglkYXRhX3R5cGUYASACKA1SCGRhdGFUeXBlEhcKB2RhdGFfaW'
    'QYAiACKAxSBmRhdGFJZBIfCgtkYXRhX2xlbmd0aBgDIAIoDVIKZGF0YUxlbmd0aBIyChVzdXBw'
    'b3J0X2NvbXByZXNzX21vZGUYBCABKA1SE3N1cHBvcnRDb21wcmVzc01vZGU=');

@$core.Deprecated('Use prepareResponseDescriptor instead')
const PrepareResponse$json = {
  '1': 'PrepareResponse',
  '2': [
    {'1': 'data_id', '3': 1, '4': 2, '5': 12, '10': 'dataId'},
    {
      '1': 'prepare_status',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.PrepareStatus',
      '10': 'prepareStatus'
    },
    {
      '1': 'select_compress_mode',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'selectCompressMode'
    },
    {
      '1': 'remained_data_length',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'remainedDataLength'
    },
    {
      '1': 'expected_slice_length',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'expectedSliceLength'
    },
  ],
};

/// Descriptor for `PrepareResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareResponseDescriptor = $convert.base64Decode(
    'Cg9QcmVwYXJlUmVzcG9uc2USFwoHZGF0YV9pZBgBIAIoDFIGZGF0YUlkEj4KDnByZXBhcmVfc3'
    'RhdHVzGAIgAigOMhcucHJvdG9jb2wuUHJlcGFyZVN0YXR1c1INcHJlcGFyZVN0YXR1cxIwChRz'
    'ZWxlY3RfY29tcHJlc3NfbW9kZRgDIAEoDVISc2VsZWN0Q29tcHJlc3NNb2RlEjAKFHJlbWFpbm'
    'VkX2RhdGFfbGVuZ3RoGAQgASgNUhJyZW1haW5lZERhdGFMZW5ndGgSMgoVZXhwZWN0ZWRfc2xp'
    'Y2VfbGVuZ3RoGAUgASgNUhNleHBlY3RlZFNsaWNlTGVuZ3Ro');

@$core.Deprecated('Use massControlDescriptor instead')
const MassControl$json = {
  '1': 'MassControl',
  '2': [
    {
      '1': 'op',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.MassControl.Op',
      '10': 'op'
    },
    {'1': 'data_type', '3': 2, '4': 2, '5': 13, '10': 'dataType'},
    {'1': 'data_id', '3': 3, '4': 2, '5': 12, '10': 'dataId'},
  ],
  '4': [MassControl_Op$json],
};

@$core.Deprecated('Use massControlDescriptor instead')
const MassControl_Op$json = {
  '1': 'Op',
  '2': [
    {'1': 'PAUSE', '2': 1},
    {'1': 'CANCEL', '2': 2},
    {'1': 'ERROR', '2': 3},
  ],
};

/// Descriptor for `MassControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List massControlDescriptor = $convert.base64Decode(
    'CgtNYXNzQ29udHJvbBIoCgJvcBgBIAIoDjIYLnByb3RvY29sLk1hc3NDb250cm9sLk9wUgJvcB'
    'IbCglkYXRhX3R5cGUYAiACKA1SCGRhdGFUeXBlEhcKB2RhdGFfaWQYAyACKAxSBmRhdGFJZCIm'
    'CgJPcBIJCgVQQVVTRRABEgoKBkNBTkNFTBACEgkKBUVSUk9SEAM=');
