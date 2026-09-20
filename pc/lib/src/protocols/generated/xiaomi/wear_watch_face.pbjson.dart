// This is a generated file - do not edit.
//
// Generated from wear_watch_face.proto.

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

@$core.Deprecated('Use watchFaceDescriptor instead')
const WatchFace$json = {
  '1': 'WatchFace',
  '2': [
    {
      '1': 'watch_face_list',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.protocol.WatchFaceItem.List',
      '9': 0,
      '10': 'watchFaceList'
    },
    {'1': 'id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'id'},
    {'1': 'path', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'path'},
    {'1': 'success', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'success'},
    {
      '1': 'prepare_status',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.protocol.PrepareStatus',
      '9': 0,
      '10': 'prepareStatus'
    },
    {
      '1': 'prepare_info',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareInfo',
      '9': 0,
      '10': 'prepareInfo'
    },
    {
      '1': 'install_result',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.protocol.InstallResult',
      '9': 0,
      '10': 'installResult'
    },
    {
      '1': 'info_list',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.protocol.WatchFaceInfo.List',
      '9': 0,
      '10': 'infoList'
    },
    {
      '1': 'prepare_reply',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareReply',
      '9': 0,
      '10': 'prepareReply'
    },
    {
      '1': 'support_data_list',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.protocol.WatchFaceSlot.List',
      '9': 0,
      '10': 'supportDataList'
    },
    {
      '1': 'edit_request',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.protocol.EditRequest',
      '9': 0,
      '10': 'editRequest'
    },
    {
      '1': 'edit_response',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.protocol.EditResponse',
      '9': 0,
      '10': 'editResponse'
    },
    {
      '1': 'bg_image_result',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.protocol.BgImageResult',
      '9': 0,
      '10': 'bgImageResult'
    },
    {
      '1': 'font_result',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.FontResult',
      '9': 0,
      '10': 'fontResult'
    },
  ],
  '4': [WatchFace_WatchFaceID$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use watchFaceDescriptor instead')
const WatchFace_WatchFaceID$json = {
  '1': 'WatchFaceID',
  '2': [
    {'1': 'GET_INSTALLED_LIST', '2': 0},
    {'1': 'SET_WATCH_FACE', '2': 1},
    {'1': 'REMOVE_WATCH_FACE', '2': 2},
    {'1': 'REMOVE_WATCH_FACE_PHOTO', '2': 3},
    {'1': 'PREPARE_INSTALL_WATCH_FACE', '2': 4},
    {'1': 'REPORT_INSTALL_RESULT', '2': 5},
    {'1': 'REMOVE_MULTI_WATCH_FACE', '2': 6},
    {'1': 'GET_SUPPORT_DATA', '2': 10},
    {'1': 'EDIT_WATCH_FACE', '2': 11},
    {'1': 'BG_IMAGE_RESULT', '2': 12},
    {'1': 'FONT_RESULT', '2': 13},
  ],
};

/// Descriptor for `WatchFace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchFaceDescriptor = $convert.base64Decode(
    'CglXYXRjaEZhY2USRgoPd2F0Y2hfZmFjZV9saXN0GAEgASgLMhwucHJvdG9jb2wuV2F0Y2hGYW'
    'NlSXRlbS5MaXN0SABSDXdhdGNoRmFjZUxpc3QSEAoCaWQYAiABKAlIAFICaWQSFAoEcGF0aBgD'
    'IAEoCUgAUgRwYXRoEhoKB3N1Y2Nlc3MYBCABKAhIAFIHc3VjY2VzcxJACg5wcmVwYXJlX3N0YX'
    'R1cxgFIAEoDjIXLnByb3RvY29sLlByZXBhcmVTdGF0dXNIAFINcHJlcGFyZVN0YXR1cxI6Cgxw'
    'cmVwYXJlX2luZm8YBiABKAsyFS5wcm90b2NvbC5QcmVwYXJlSW5mb0gAUgtwcmVwYXJlSW5mbx'
    'JACg5pbnN0YWxsX3Jlc3VsdBgHIAEoCzIXLnByb3RvY29sLkluc3RhbGxSZXN1bHRIAFINaW5z'
    'dGFsbFJlc3VsdBI7CglpbmZvX2xpc3QYCCABKAsyHC5wcm90b2NvbC5XYXRjaEZhY2VJbmZvLk'
    'xpc3RIAFIIaW5mb0xpc3QSPQoNcHJlcGFyZV9yZXBseRgJIAEoCzIWLnByb3RvY29sLlByZXBh'
    'cmVSZXBseUgAUgxwcmVwYXJlUmVwbHkSSgoRc3VwcG9ydF9kYXRhX2xpc3QYCyABKAsyHC5wcm'
    '90b2NvbC5XYXRjaEZhY2VTbG90Lkxpc3RIAFIPc3VwcG9ydERhdGFMaXN0EjoKDGVkaXRfcmVx'
    'dWVzdBgMIAEoCzIVLnByb3RvY29sLkVkaXRSZXF1ZXN0SABSC2VkaXRSZXF1ZXN0Ej0KDWVkaX'
    'RfcmVzcG9uc2UYDSABKAsyFi5wcm90b2NvbC5FZGl0UmVzcG9uc2VIAFIMZWRpdFJlc3BvbnNl'
    'EkEKD2JnX2ltYWdlX3Jlc3VsdBgOIAEoCzIXLnByb3RvY29sLkJnSW1hZ2VSZXN1bHRIAFINYm'
    'dJbWFnZVJlc3VsdBI3Cgtmb250X3Jlc3VsdBgPIAEoCzIULnByb3RvY29sLkZvbnRSZXN1bHRI'
    'AFIKZm9udFJlc3VsdCKWAgoLV2F0Y2hGYWNlSUQSFgoSR0VUX0lOU1RBTExFRF9MSVNUEAASEg'
    'oOU0VUX1dBVENIX0ZBQ0UQARIVChFSRU1PVkVfV0FUQ0hfRkFDRRACEhsKF1JFTU9WRV9XQVRD'
    'SF9GQUNFX1BIT1RPEAMSHgoaUFJFUEFSRV9JTlNUQUxMX1dBVENIX0ZBQ0UQBBIZChVSRVBPUl'
    'RfSU5TVEFMTF9SRVNVTFQQBRIbChdSRU1PVkVfTVVMVElfV0FUQ0hfRkFDRRAGEhQKEEdFVF9T'
    'VVBQT1JUX0RBVEEQChITCg9FRElUX1dBVENIX0ZBQ0UQCxITCg9CR19JTUFHRV9SRVNVTFQQDB'
    'IPCgtGT05UX1JFU1VMVBANQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use watchFaceSlotDescriptor instead')
const WatchFaceSlot$json = {
  '1': 'WatchFaceSlot',
  '3': [WatchFaceSlot_List$json, WatchFaceSlot_Item$json],
  '4': [WatchFaceSlot_Data$json],
};

@$core.Deprecated('Use watchFaceSlotDescriptor instead')
const WatchFaceSlot_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 14,
      '6': '.protocol.WatchFaceSlot.Data',
      '10': 'list'
    },
  ],
};

@$core.Deprecated('Use watchFaceSlotDescriptor instead')
const WatchFaceSlot_Item$json = {
  '1': 'Item',
  '2': [
    {'1': 'slot_id', '3': 1, '4': 2, '5': 9, '10': 'slotId'},
    {'1': 'widget_id', '3': 2, '4': 2, '5': 9, '10': 'widgetId'},
  ],
};

@$core.Deprecated('Use watchFaceSlotDescriptor instead')
const WatchFaceSlot_Data$json = {
  '1': 'Data',
  '2': [
    {'1': 'EMPTY', '2': 0},
    {'1': 'HEART_RATE', '2': 1},
    {'1': 'PRESSURE', '2': 2},
    {'1': 'SLEEP', '2': 3},
    {'1': 'ENERGY', '2': 4},
    {'1': 'STEP', '2': 5},
    {'1': 'CALORIE', '2': 6},
    {'1': 'VALID_STAND', '2': 7},
    {'1': 'BATTERY', '2': 8},
    {'1': 'DATE', '2': 9},
    {'1': 'WEATHER', '2': 10},
    {'1': 'AIR_PRESSURE', '2': 11},
    {'1': 'ALTITUDE', '2': 12},
    {'1': 'TIMER', '2': 13},
    {'1': 'CLOCK', '2': 14},
    {'1': 'AQI', '2': 15},
    {'1': 'HUMIDITY', '2': 16},
    {'1': 'SPORT_MODE', '2': 17},
    {'1': 'UVI', '2': 18},
    {'1': 'SUNRISE_SUNSET', '2': 19},
    {'1': 'WIND_DIRECTION', '2': 20},
  ],
};

/// Descriptor for `WatchFaceSlot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchFaceSlotDescriptor = $convert.base64Decode(
    'Cg1XYXRjaEZhY2VTbG90GjgKBExpc3QSMAoEbGlzdBgBIAMoDjIcLnByb3RvY29sLldhdGNoRm'
    'FjZVNsb3QuRGF0YVIEbGlzdBo8CgRJdGVtEhcKB3Nsb3RfaWQYASACKAlSBnNsb3RJZBIbCgl3'
    'aWRnZXRfaWQYAiACKAlSCHdpZGdldElkIqACCgREYXRhEgkKBUVNUFRZEAASDgoKSEVBUlRfUk'
    'FURRABEgwKCFBSRVNTVVJFEAISCQoFU0xFRVAQAxIKCgZFTkVSR1kQBBIICgRTVEVQEAUSCwoH'
    'Q0FMT1JJRRAGEg8KC1ZBTElEX1NUQU5EEAcSCwoHQkFUVEVSWRAIEggKBERBVEUQCRILCgdXRU'
    'FUSEVSEAoSEAoMQUlSX1BSRVNTVVJFEAsSDAoIQUxUSVRVREUQDBIJCgVUSU1FUhANEgkKBUNM'
    'T0NLEA4SBwoDQVFJEA8SDAoISFVNSURJVFkQEBIOCgpTUE9SVF9NT0RFEBESBwoDVVZJEBISEg'
    'oOU1VOUklTRV9TVU5TRVQQExISCg5XSU5EX0RJUkVDVElPThAU');

@$core.Deprecated('Use watchFaceItemDescriptor instead')
const WatchFaceItem$json = {
  '1': 'WatchFaceItem',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 2, '5': 9, '10': 'name'},
    {'1': 'is_current', '3': 3, '4': 2, '5': 8, '10': 'isCurrent'},
    {'1': 'can_remove', '3': 4, '4': 1, '5': 8, '10': 'canRemove'},
    {'1': 'version_code', '3': 5, '4': 1, '5': 4, '10': 'versionCode'},
    {'1': 'can_edit', '3': 6, '4': 1, '5': 8, '10': 'canEdit'},
    {'1': 'background_color', '3': 7, '4': 2, '5': 9, '10': 'backgroundColor'},
    {'1': 'background_image', '3': 8, '4': 2, '5': 9, '10': 'backgroundImage'},
    {'1': 'style', '3': 9, '4': 2, '5': 9, '10': 'style'},
    {
      '1': 'data_list',
      '3': 10,
      '4': 3,
      '5': 14,
      '6': '.protocol.WatchFaceSlot.Data',
      '10': 'dataList'
    },
    {
      '1': 'support_image_format',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.protocol.ImageFormat',
      '10': 'supportImageFormat'
    },
    {
      '1': 'background_image_list',
      '3': 12,
      '4': 3,
      '5': 9,
      '10': 'backgroundImageList'
    },
    {
      '1': 'slot_item_list',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.protocol.WatchFaceSlot.Item',
      '10': 'slotItemList'
    },
  ],
  '3': [WatchFaceItem_List$json],
};

@$core.Deprecated('Use watchFaceItemDescriptor instead')
const WatchFaceItem_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WatchFaceItem',
      '10': 'list'
    },
  ],
};

/// Descriptor for `WatchFaceItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchFaceItemDescriptor = $convert.base64Decode(
    'Cg1XYXRjaEZhY2VJdGVtEg4KAmlkGAEgAigJUgJpZBISCgRuYW1lGAIgAigJUgRuYW1lEh0KCm'
    'lzX2N1cnJlbnQYAyACKAhSCWlzQ3VycmVudBIdCgpjYW5fcmVtb3ZlGAQgASgIUgljYW5SZW1v'
    'dmUSIQoMdmVyc2lvbl9jb2RlGAUgASgEUgt2ZXJzaW9uQ29kZRIZCghjYW5fZWRpdBgGIAEoCF'
    'IHY2FuRWRpdBIpChBiYWNrZ3JvdW5kX2NvbG9yGAcgAigJUg9iYWNrZ3JvdW5kQ29sb3ISKQoQ'
    'YmFja2dyb3VuZF9pbWFnZRgIIAIoCVIPYmFja2dyb3VuZEltYWdlEhQKBXN0eWxlGAkgAigJUg'
    'VzdHlsZRI5CglkYXRhX2xpc3QYCiADKA4yHC5wcm90b2NvbC5XYXRjaEZhY2VTbG90LkRhdGFS'
    'CGRhdGFMaXN0EkcKFHN1cHBvcnRfaW1hZ2VfZm9ybWF0GAsgASgOMhUucHJvdG9jb2wuSW1hZ2'
    'VGb3JtYXRSEnN1cHBvcnRJbWFnZUZvcm1hdBIyChViYWNrZ3JvdW5kX2ltYWdlX2xpc3QYDCAD'
    'KAlSE2JhY2tncm91bmRJbWFnZUxpc3QSQgoOc2xvdF9pdGVtX2xpc3QYDSADKAsyHC5wcm90b2'
    'NvbC5XYXRjaEZhY2VTbG90Lkl0ZW1SDHNsb3RJdGVtTGlzdBozCgRMaXN0EisKBGxpc3QYASAD'
    'KAsyFy5wcm90b2NvbC5XYXRjaEZhY2VJdGVtUgRsaXN0');

@$core.Deprecated('Use watchFaceInfoDescriptor instead')
const WatchFaceInfo$json = {
  '1': 'WatchFaceInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
  ],
  '3': [WatchFaceInfo_List$json],
};

@$core.Deprecated('Use watchFaceInfoDescriptor instead')
const WatchFaceInfo_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WatchFaceInfo',
      '10': 'list'
    },
  ],
};

/// Descriptor for `WatchFaceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchFaceInfoDescriptor = $convert.base64Decode(
    'Cg1XYXRjaEZhY2VJbmZvEg4KAmlkGAEgAigJUgJpZBozCgRMaXN0EisKBGxpc3QYASADKAsyFy'
    '5wcm90b2NvbC5XYXRjaEZhY2VJbmZvUgRsaXN0');

@$core.Deprecated('Use prepareInfoDescriptor instead')
const PrepareInfo$json = {
  '1': 'PrepareInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'size', '3': 2, '4': 2, '5': 13, '10': 'size'},
    {'1': 'version_code', '3': 3, '4': 1, '5': 4, '10': 'versionCode'},
    {
      '1': 'support_compress_mode',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'supportCompressMode'
    },
    {
      '1': 'verification',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.protocol.PrepareInfo.Verification',
      '10': 'verification'
    },
  ],
  '3': [PrepareInfo_Verification$json],
};

@$core.Deprecated('Use prepareInfoDescriptor instead')
const PrepareInfo_Verification$json = {
  '1': 'Verification',
  '2': [
    {'1': 'info', '3': 1, '4': 2, '5': 9, '10': 'info'},
    {'1': 'sign', '3': 2, '4': 2, '5': 9, '10': 'sign'},
    {'1': 'trial_duration', '3': 3, '4': 1, '5': 13, '10': 'trialDuration'},
  ],
};

/// Descriptor for `PrepareInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareInfoDescriptor = $convert.base64Decode(
    'CgtQcmVwYXJlSW5mbxIOCgJpZBgBIAIoCVICaWQSEgoEc2l6ZRgCIAIoDVIEc2l6ZRIhCgx2ZX'
    'JzaW9uX2NvZGUYAyABKARSC3ZlcnNpb25Db2RlEjIKFXN1cHBvcnRfY29tcHJlc3NfbW9kZRgE'
    'IAEoDVITc3VwcG9ydENvbXByZXNzTW9kZRJGCgx2ZXJpZmljYXRpb24YBSABKAsyIi5wcm90b2'
    'NvbC5QcmVwYXJlSW5mby5WZXJpZmljYXRpb25SDHZlcmlmaWNhdGlvbhpdCgxWZXJpZmljYXRp'
    'b24SEgoEaW5mbxgBIAIoCVIEaW5mbxISCgRzaWduGAIgAigJUgRzaWduEiUKDnRyaWFsX2R1cm'
    'F0aW9uGAMgASgNUg10cmlhbER1cmF0aW9u');

@$core.Deprecated('Use prepareReplyDescriptor instead')
const PrepareReply$json = {
  '1': 'PrepareReply',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
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
      '1': 'expected_slice_length',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'expectedSliceLength'
    },
  ],
};

/// Descriptor for `PrepareReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List prepareReplyDescriptor = $convert.base64Decode(
    'CgxQcmVwYXJlUmVwbHkSDgoCaWQYASACKAlSAmlkEj4KDnByZXBhcmVfc3RhdHVzGAIgAigOMh'
    'cucHJvdG9jb2wuUHJlcGFyZVN0YXR1c1INcHJlcGFyZVN0YXR1cxIwChRzZWxlY3RfY29tcHJl'
    'c3NfbW9kZRgDIAEoDVISc2VsZWN0Q29tcHJlc3NNb2RlEjIKFWV4cGVjdGVkX3NsaWNlX2xlbm'
    'd0aBgEIAEoDVITZXhwZWN0ZWRTbGljZUxlbmd0aA==');

@$core.Deprecated('Use installResultDescriptor instead')
const InstallResult$json = {
  '1': 'InstallResult',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {
      '1': 'code',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.InstallResult.Code',
      '10': 'code'
    },
    {'1': 'support_edit', '3': 3, '4': 1, '5': 8, '10': 'supportEdit'},
    {
      '1': 'support_image_format',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.protocol.ImageFormat',
      '10': 'supportImageFormat'
    },
  ],
  '4': [InstallResult_Code$json],
};

@$core.Deprecated('Use installResultDescriptor instead')
const InstallResult_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'VERIFY_FAILED', '2': 0},
    {'1': 'INSTALL_FAILED', '2': 1},
    {'1': 'INSTALL_SUCCESS', '2': 2},
    {'1': 'INSTALL_USED', '2': 3},
  ],
};

/// Descriptor for `InstallResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List installResultDescriptor = $convert.base64Decode(
    'Cg1JbnN0YWxsUmVzdWx0Eg4KAmlkGAEgAigJUgJpZBIwCgRjb2RlGAIgAigOMhwucHJvdG9jb2'
    'wuSW5zdGFsbFJlc3VsdC5Db2RlUgRjb2RlEiEKDHN1cHBvcnRfZWRpdBgDIAEoCFILc3VwcG9y'
    'dEVkaXQSRwoUc3VwcG9ydF9pbWFnZV9mb3JtYXQYBCABKA4yFS5wcm90b2NvbC5JbWFnZUZvcm'
    '1hdFISc3VwcG9ydEltYWdlRm9ybWF0IlQKBENvZGUSEQoNVkVSSUZZX0ZBSUxFRBAAEhIKDklO'
    'U1RBTExfRkFJTEVEEAESEwoPSU5TVEFMTF9TVUNDRVNTEAISEAoMSU5TVEFMTF9VU0VEEAM=');

@$core.Deprecated('Use watchFaceImageDescriptor instead')
const WatchFaceImage$json = {
  '1': 'WatchFaceImage',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'size', '3': 2, '4': 1, '5': 13, '10': 'size'},
  ],
  '3': [WatchFaceImage_Group$json, WatchFaceImage_GroupList$json],
};

@$core.Deprecated('Use watchFaceImageDescriptor instead')
const WatchFaceImage_Group$json = {
  '1': 'Group',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {
      '1': 'content_pos_index',
      '3': 2,
      '4': 2,
      '5': 13,
      '10': 'contentPosIndex'
    },
    {
      '1': 'bg_image',
      '3': 3,
      '4': 2,
      '5': 11,
      '6': '.protocol.WatchFaceImage',
      '10': 'bgImage'
    },
    {
      '1': 'fg_image',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.protocol.WatchFaceImage',
      '10': 'fgImage'
    },
  ],
};

@$core.Deprecated('Use watchFaceImageDescriptor instead')
const WatchFaceImage_GroupList$json = {
  '1': 'GroupList',
  '2': [
    {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WatchFaceImage.Group',
      '10': 'list'
    },
    {
      '1': 'support_max_count',
      '3': 2,
      '4': 2,
      '5': 13,
      '10': 'supportMaxCount'
    },
  ],
};

/// Descriptor for `WatchFaceImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchFaceImageDescriptor = $convert.base64Decode(
    'Cg5XYXRjaEZhY2VJbWFnZRIOCgJpZBgBIAIoCVICaWQSEgoEc2l6ZRgCIAEoDVIEc2l6ZRqtAQ'
    'oFR3JvdXASDgoCaWQYASACKAlSAmlkEioKEWNvbnRlbnRfcG9zX2luZGV4GAIgAigNUg9jb250'
    'ZW50UG9zSW5kZXgSMwoIYmdfaW1hZ2UYAyACKAsyGC5wcm90b2NvbC5XYXRjaEZhY2VJbWFnZV'
    'IHYmdJbWFnZRIzCghmZ19pbWFnZRgEIAEoCzIYLnByb3RvY29sLldhdGNoRmFjZUltYWdlUgdm'
    'Z0ltYWdlGmsKCUdyb3VwTGlzdBIyCgRsaXN0GAEgAygLMh4ucHJvdG9jb2wuV2F0Y2hGYWNlSW'
    '1hZ2UuR3JvdXBSBGxpc3QSKgoRc3VwcG9ydF9tYXhfY291bnQYAiACKA1SD3N1cHBvcnRNYXhD'
    'b3VudA==');

@$core.Deprecated('Use watchFaceLiteralDescriptor instead')
const WatchFaceLiteral$json = {
  '1': 'WatchFaceLiteral',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 2,
      '5': 11,
      '6': '.protocol.WatchFaceLiteral.Item.List',
      '10': 'items'
    },
    {'1': 'font', '3': 2, '4': 2, '5': 9, '10': 'font'},
    {'1': 'font_size', '3': 3, '4': 1, '5': 13, '10': 'fontSize'},
  ],
  '3': [WatchFaceLiteral_Item$json],
};

@$core.Deprecated('Use watchFaceLiteralDescriptor instead')
const WatchFaceLiteral_Item$json = {
  '1': 'Item',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'text_list', '3': 2, '4': 3, '5': 9, '10': 'textList'},
    {'1': 'source', '3': 3, '4': 1, '5': 13, '10': 'source'},
  ],
  '3': [WatchFaceLiteral_Item_List$json],
};

@$core.Deprecated('Use watchFaceLiteralDescriptor instead')
const WatchFaceLiteral_Item_List$json = {
  '1': 'List',
  '2': [
    {
      '1': 'literal_items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.protocol.WatchFaceLiteral.Item',
      '10': 'literalItems'
    },
  ],
};

/// Descriptor for `WatchFaceLiteral`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchFaceLiteralDescriptor = $convert.base64Decode(
    'ChBXYXRjaEZhY2VMaXRlcmFsEjoKBWl0ZW1zGAEgAigLMiQucHJvdG9jb2wuV2F0Y2hGYWNlTG'
    'l0ZXJhbC5JdGVtLkxpc3RSBWl0ZW1zEhIKBGZvbnQYAiACKAlSBGZvbnQSGwoJZm9udF9zaXpl'
    'GAMgASgNUghmb250U2l6ZRqZAQoESXRlbRIOCgJpZBgBIAIoCVICaWQSGwoJdGV4dF9saXN0GA'
    'IgAygJUgh0ZXh0TGlzdBIWCgZzb3VyY2UYAyABKA1SBnNvdXJjZRpMCgRMaXN0EkQKDWxpdGVy'
    'YWxfaXRlbXMYASADKAsyHy5wcm90b2NvbC5XYXRjaEZhY2VMaXRlcmFsLkl0ZW1SDGxpdGVyYW'
    'xJdGVtcw==');

@$core.Deprecated('Use editRequestDescriptor instead')
const EditRequest$json = {
  '1': 'EditRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {'1': 'set_current', '3': 2, '4': 2, '5': 8, '10': 'setCurrent'},
    {'1': 'background_color', '3': 3, '4': 2, '5': 9, '10': 'backgroundColor'},
    {'1': 'background_image', '3': 4, '4': 2, '5': 9, '10': 'backgroundImage'},
    {
      '1': 'background_image_size',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'backgroundImageSize'
    },
    {'1': 'style', '3': 6, '4': 2, '5': 9, '10': 'style'},
    {
      '1': 'data_list',
      '3': 7,
      '4': 3,
      '5': 14,
      '6': '.protocol.WatchFaceSlot.Data',
      '10': 'dataList'
    },
    {
      '1': 'background_image_list',
      '3': 8,
      '4': 3,
      '5': 9,
      '10': 'backgroundImageList'
    },
    {
      '1': 'background_image_size_list',
      '3': 9,
      '4': 3,
      '5': 13,
      '10': 'backgroundImageSizeList'
    },
    {'1': 'order_image_list', '3': 10, '4': 3, '5': 9, '10': 'orderImageList'},
    {
      '1': 'delete_all_images',
      '3': 11,
      '4': 1,
      '5': 8,
      '10': 'deleteAllImages'
    },
    {
      '1': 'slot_item_list',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.protocol.WatchFaceSlot.Item',
      '10': 'slotItemList'
    },
    {
      '1': 'foreground_color',
      '3': 13,
      '4': 1,
      '5': 12,
      '10': 'foregroundColor'
    },
    {
      '1': 'style_color_index',
      '3': 14,
      '4': 1,
      '5': 13,
      '10': 'styleColorIndex'
    },
    {
      '1': 'image_group_list',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.protocol.WatchFaceImage.GroupList',
      '10': 'imageGroupList'
    },
    {
      '1': 'literal',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.protocol.WatchFaceLiteral',
      '10': 'literal'
    },
  ],
};

/// Descriptor for `EditRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editRequestDescriptor = $convert.base64Decode(
    'CgtFZGl0UmVxdWVzdBIOCgJpZBgBIAIoCVICaWQSHwoLc2V0X2N1cnJlbnQYAiACKAhSCnNldE'
    'N1cnJlbnQSKQoQYmFja2dyb3VuZF9jb2xvchgDIAIoCVIPYmFja2dyb3VuZENvbG9yEikKEGJh'
    'Y2tncm91bmRfaW1hZ2UYBCACKAlSD2JhY2tncm91bmRJbWFnZRIyChViYWNrZ3JvdW5kX2ltYW'
    'dlX3NpemUYBSABKA1SE2JhY2tncm91bmRJbWFnZVNpemUSFAoFc3R5bGUYBiACKAlSBXN0eWxl'
    'EjkKCWRhdGFfbGlzdBgHIAMoDjIcLnByb3RvY29sLldhdGNoRmFjZVNsb3QuRGF0YVIIZGF0YU'
    'xpc3QSMgoVYmFja2dyb3VuZF9pbWFnZV9saXN0GAggAygJUhNiYWNrZ3JvdW5kSW1hZ2VMaXN0'
    'EjsKGmJhY2tncm91bmRfaW1hZ2Vfc2l6ZV9saXN0GAkgAygNUhdiYWNrZ3JvdW5kSW1hZ2VTaX'
    'plTGlzdBIoChBvcmRlcl9pbWFnZV9saXN0GAogAygJUg5vcmRlckltYWdlTGlzdBIqChFkZWxl'
    'dGVfYWxsX2ltYWdlcxgLIAEoCFIPZGVsZXRlQWxsSW1hZ2VzEkIKDnNsb3RfaXRlbV9saXN0GA'
    'wgAygLMhwucHJvdG9jb2wuV2F0Y2hGYWNlU2xvdC5JdGVtUgxzbG90SXRlbUxpc3QSKQoQZm9y'
    'ZWdyb3VuZF9jb2xvchgNIAEoDFIPZm9yZWdyb3VuZENvbG9yEioKEXN0eWxlX2NvbG9yX2luZG'
    'V4GA4gASgNUg9zdHlsZUNvbG9ySW5kZXgSTAoQaW1hZ2VfZ3JvdXBfbGlzdBgPIAEoCzIiLnBy'
    'b3RvY29sLldhdGNoRmFjZUltYWdlLkdyb3VwTGlzdFIOaW1hZ2VHcm91cExpc3QSNAoHbGl0ZX'
    'JhbBgQIAEoCzIaLnByb3RvY29sLldhdGNoRmFjZUxpdGVyYWxSB2xpdGVyYWw=');

@$core.Deprecated('Use editResponseDescriptor instead')
const EditResponse$json = {
  '1': 'EditResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 2, '5': 9, '10': 'id'},
    {
      '1': 'code',
      '3': 2,
      '4': 2,
      '5': 14,
      '6': '.protocol.EditResponse.Code',
      '10': 'code'
    },
    {
      '1': 'can_accept_image_count',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'canAcceptImageCount'
    },
    {
      '1': 'expected_slice_length',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'expectedSliceLength'
    },
  ],
  '4': [EditResponse_Code$json],
};

@$core.Deprecated('Use editResponseDescriptor instead')
const EditResponse_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'SUCCESS_BUT_LOW_STORAGE', '2': 1},
    {'1': 'FAIL_FOR_LOW_STORAGE', '2': 2},
    {'1': 'FAIL_FOR_INVALID_PARAM', '2': 3},
    {'1': 'FAIL', '2': 4},
  ],
};

/// Descriptor for `EditResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editResponseDescriptor = $convert.base64Decode(
    'CgxFZGl0UmVzcG9uc2USDgoCaWQYASACKAlSAmlkEi8KBGNvZGUYAiACKA4yGy5wcm90b2NvbC'
    '5FZGl0UmVzcG9uc2UuQ29kZVIEY29kZRIzChZjYW5fYWNjZXB0X2ltYWdlX2NvdW50GAMgASgN'
    'UhNjYW5BY2NlcHRJbWFnZUNvdW50EjIKFWV4cGVjdGVkX3NsaWNlX2xlbmd0aBgEIAEoDVITZX'
    'hwZWN0ZWRTbGljZUxlbmd0aCJwCgRDb2RlEgsKB1NVQ0NFU1MQABIbChdTVUNDRVNTX0JVVF9M'
    'T1dfU1RPUkFHRRABEhgKFEZBSUxfRk9SX0xPV19TVE9SQUdFEAISGgoWRkFJTF9GT1JfSU5WQU'
    'xJRF9QQVJBTRADEggKBEZBSUwQBA==');

@$core.Deprecated('Use bgImageResultDescriptor instead')
const BgImageResult$json = {
  '1': 'BgImageResult',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 2,
      '5': 14,
      '6': '.protocol.BgImageResult.Code',
      '10': 'code'
    },
    {'1': 'id', '3': 2, '4': 2, '5': 9, '10': 'id'},
    {'1': 'background_image', '3': 3, '4': 2, '5': 9, '10': 'backgroundImage'},
  ],
  '4': [BgImageResult_Code$json],
};

@$core.Deprecated('Use bgImageResultDescriptor instead')
const BgImageResult_Code$json = {
  '1': 'Code',
  '2': [
    {'1': 'SUCCESS', '2': 0},
    {'1': 'IMAGE_SAVE_FAILED', '2': 1},
    {'1': 'IMAGE_RESOLVE_FAILED', '2': 2},
    {'1': 'NO_WATCH_FACE_MATCHED', '2': 3},
  ],
};

/// Descriptor for `BgImageResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bgImageResultDescriptor = $convert.base64Decode(
    'Cg1CZ0ltYWdlUmVzdWx0EjAKBGNvZGUYASACKA4yHC5wcm90b2NvbC5CZ0ltYWdlUmVzdWx0Lk'
    'NvZGVSBGNvZGUSDgoCaWQYAiACKAlSAmlkEikKEGJhY2tncm91bmRfaW1hZ2UYAyACKAlSD2Jh'
    'Y2tncm91bmRJbWFnZSJfCgRDb2RlEgsKB1NVQ0NFU1MQABIVChFJTUFHRV9TQVZFX0ZBSUxFRB'
    'ABEhgKFElNQUdFX1JFU09MVkVfRkFJTEVEEAISGQoVTk9fV0FUQ0hfRkFDRV9NQVRDSEVEEAM=');

@$core.Deprecated('Use fontResultDescriptor instead')
const FontResult$json = {
  '1': 'FontResult',
  '2': [
    {'1': 'code', '3': 1, '4': 2, '5': 13, '10': 'code'},
    {'1': 'id', '3': 2, '4': 2, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `FontResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fontResultDescriptor = $convert.base64Decode(
    'CgpGb250UmVzdWx0EhIKBGNvZGUYASACKA1SBGNvZGUSDgoCaWQYAiACKAlSAmlk');
