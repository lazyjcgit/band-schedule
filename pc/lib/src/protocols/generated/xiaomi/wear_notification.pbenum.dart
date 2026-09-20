// This is a generated file - do not edit.
//
// Generated from wear_notification.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CallType extends $pb.ProtobufEnum {
  static const CallType NOTHING =
      CallType._(0, _omitEnumNames ? '' : 'NOTHING');
  static const CallType INCOMING_CALL =
      CallType._(1, _omitEnumNames ? '' : 'INCOMING_CALL');
  static const CallType MISSED_CALL =
      CallType._(2, _omitEnumNames ? '' : 'MISSED_CALL');
  static const CallType OUTGOING_CALL =
      CallType._(3, _omitEnumNames ? '' : 'OUTGOING_CALL');

  static const $core.List<CallType> values = <CallType>[
    NOTHING,
    INCOMING_CALL,
    MISSED_CALL,
    OUTGOING_CALL,
  ];

  static final $core.List<CallType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static CallType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CallType._(super.value, super.name);
}

class ReplyResult extends $pb.ProtobufEnum {
  static const ReplyResult REPLY_SUCCESS =
      ReplyResult._(0, _omitEnumNames ? '' : 'REPLY_SUCCESS');
  static const ReplyResult TARGET_NOT_SUPPORT =
      ReplyResult._(1, _omitEnumNames ? '' : 'TARGET_NOT_SUPPORT');
  static const ReplyResult NOTIFY_NOT_FOUND =
      ReplyResult._(2, _omitEnumNames ? '' : 'NOTIFY_NOT_FOUND');
  static const ReplyResult NO_REPLY_PERMISSION =
      ReplyResult._(3, _omitEnumNames ? '' : 'NO_REPLY_PERMISSION');
  static const ReplyResult REPLY_FAIL =
      ReplyResult._(4, _omitEnumNames ? '' : 'REPLY_FAIL');

  static const $core.List<ReplyResult> values = <ReplyResult>[
    REPLY_SUCCESS,
    TARGET_NOT_SUPPORT,
    NOTIFY_NOT_FOUND,
    NO_REPLY_PERMISSION,
    REPLY_FAIL,
  ];

  static final $core.List<ReplyResult?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ReplyResult? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ReplyResult._(super.value, super.name);
}

class Notification_NotificationID extends $pb.ProtobufEnum {
  static const Notification_NotificationID ADD_NOTIFY =
      Notification_NotificationID._(0, _omitEnumNames ? '' : 'ADD_NOTIFY');
  static const Notification_NotificationID REMOVE_NOTIFY =
      Notification_NotificationID._(1, _omitEnumNames ? '' : 'REMOVE_NOTIFY');
  static const Notification_NotificationID OPEN_NOTIFY =
      Notification_NotificationID._(8, _omitEnumNames ? '' : 'OPEN_NOTIFY');
  static const Notification_NotificationID HANG_UP =
      Notification_NotificationID._(2, _omitEnumNames ? '' : 'HANG_UP');
  static const Notification_NotificationID INCOMING_CALL_MUTE =
      Notification_NotificationID._(
          5, _omitEnumNames ? '' : 'INCOMING_CALL_MUTE');
  static const Notification_NotificationID GET_APP_LIST =
      Notification_NotificationID._(3, _omitEnumNames ? '' : 'GET_APP_LIST');
  static const Notification_NotificationID SET_APP =
      Notification_NotificationID._(4, _omitEnumNames ? '' : 'SET_APP');
  static const Notification_NotificationID GET_AUTO_SCREEN =
      Notification_NotificationID._(6, _omitEnumNames ? '' : 'GET_AUTO_SCREEN');
  static const Notification_NotificationID SET_AUTO_SCREEN =
      Notification_NotificationID._(7, _omitEnumNames ? '' : 'SET_AUTO_SCREEN');
  static const Notification_NotificationID GET_REPLY_MSG =
      Notification_NotificationID._(9, _omitEnumNames ? '' : 'GET_REPLY_MSG');
  static const Notification_NotificationID ADD_REPLY_MSG =
      Notification_NotificationID._(10, _omitEnumNames ? '' : 'ADD_REPLY_MSG');
  static const Notification_NotificationID REMOVE_REPLY_MSG =
      Notification_NotificationID._(
          11, _omitEnumNames ? '' : 'REMOVE_REPLY_MSG');
  static const Notification_NotificationID UPDATE_REPLY_MSG =
      Notification_NotificationID._(
          12, _omitEnumNames ? '' : 'UPDATE_REPLY_MSG');
  static const Notification_NotificationID REPLY_MSG_REQUEST =
      Notification_NotificationID._(
          13, _omitEnumNames ? '' : 'REPLY_MSG_REQUEST');
  static const Notification_NotificationID REPLY_MSG_RESULT =
      Notification_NotificationID._(
          14, _omitEnumNames ? '' : 'REPLY_MSG_RESULT');
  static const Notification_NotificationID PREPARE_APP_ICON =
      Notification_NotificationID._(
          15, _omitEnumNames ? '' : 'PREPARE_APP_ICON');
  static const Notification_NotificationID APP_ICON_APPLY =
      Notification_NotificationID._(16, _omitEnumNames ? '' : 'APP_ICON_APPLY');

  static const $core.List<Notification_NotificationID> values =
      <Notification_NotificationID>[
    ADD_NOTIFY,
    REMOVE_NOTIFY,
    OPEN_NOTIFY,
    HANG_UP,
    INCOMING_CALL_MUTE,
    GET_APP_LIST,
    SET_APP,
    GET_AUTO_SCREEN,
    SET_AUTO_SCREEN,
    GET_REPLY_MSG,
    ADD_REPLY_MSG,
    REMOVE_REPLY_MSG,
    UPDATE_REPLY_MSG,
    REPLY_MSG_REQUEST,
    REPLY_MSG_RESULT,
    PREPARE_APP_ICON,
    APP_ICON_APPLY,
  ];

  static final $core.List<Notification_NotificationID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 16);
  static Notification_NotificationID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Notification_NotificationID._(super.value, super.name);
}

class ReplyMsg_Target extends $pb.ProtobufEnum {
  static const ReplyMsg_Target SMS =
      ReplyMsg_Target._(1, _omitEnumNames ? '' : 'SMS');
  static const ReplyMsg_Target WECHAT =
      ReplyMsg_Target._(2, _omitEnumNames ? '' : 'WECHAT');

  static const $core.List<ReplyMsg_Target> values = <ReplyMsg_Target>[
    SMS,
    WECHAT,
  ];

  static final $core.Map<$core.int, ReplyMsg_Target> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ReplyMsg_Target? valueOf($core.int value) => _byValue[value];

  const ReplyMsg_Target._(super.value, super.name);
}

class ReplyMsg_Result extends $pb.ProtobufEnum {
  static const ReplyMsg_Result SUCCESS =
      ReplyMsg_Result._(0, _omitEnumNames ? '' : 'SUCCESS');
  static const ReplyMsg_Result EXCEED_LIMIT =
      ReplyMsg_Result._(1, _omitEnumNames ? '' : 'EXCEED_LIMIT');
  static const ReplyMsg_Result INVALID_ID =
      ReplyMsg_Result._(2, _omitEnumNames ? '' : 'INVALID_ID');
  static const ReplyMsg_Result FAIL =
      ReplyMsg_Result._(10, _omitEnumNames ? '' : 'FAIL');

  static const $core.List<ReplyMsg_Result> values = <ReplyMsg_Result>[
    SUCCESS,
    EXCEED_LIMIT,
    INVALID_ID,
    FAIL,
  ];

  static final $core.Map<$core.int, ReplyMsg_Result> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ReplyMsg_Result? valueOf($core.int value) => _byValue[value];

  const ReplyMsg_Result._(super.value, super.name);
}

class AppInfo_Type extends $pb.ProtobufEnum {
  static const AppInfo_Type NOTIFICATION =
      AppInfo_Type._(0, _omitEnumNames ? '' : 'NOTIFICATION');
  static const AppInfo_Type CALL =
      AppInfo_Type._(1, _omitEnumNames ? '' : 'CALL');
  static const AppInfo_Type WECHAT =
      AppInfo_Type._(2, _omitEnumNames ? '' : 'WECHAT');
  static const AppInfo_Type QQ = AppInfo_Type._(3, _omitEnumNames ? '' : 'QQ');
  static const AppInfo_Type ALIPAY =
      AppInfo_Type._(4, _omitEnumNames ? '' : 'ALIPAY');
  static const AppInfo_Type OTHER =
      AppInfo_Type._(5, _omitEnumNames ? '' : 'OTHER');
  static const AppInfo_Type SMS =
      AppInfo_Type._(6, _omitEnumNames ? '' : 'SMS');
  static const AppInfo_Type MAIL =
      AppInfo_Type._(7, _omitEnumNames ? '' : 'MAIL');
  static const AppInfo_Type WEIBO =
      AppInfo_Type._(8, _omitEnumNames ? '' : 'WEIBO');
  static const AppInfo_Type TAOBAO =
      AppInfo_Type._(9, _omitEnumNames ? '' : 'TAOBAO');
  static const AppInfo_Type TIKTOK =
      AppInfo_Type._(10, _omitEnumNames ? '' : 'TIKTOK');
  static const AppInfo_Type DINGDING =
      AppInfo_Type._(11, _omitEnumNames ? '' : 'DINGDING');
  static const AppInfo_Type MIHOME =
      AppInfo_Type._(12, _omitEnumNames ? '' : 'MIHOME');
  static const AppInfo_Type XIAOHONGSHU =
      AppInfo_Type._(13, _omitEnumNames ? '' : 'XIAOHONGSHU');
  static const AppInfo_Type PINDUODUO =
      AppInfo_Type._(14, _omitEnumNames ? '' : 'PINDUODUO');
  static const AppInfo_Type KUAISHOU =
      AppInfo_Type._(15, _omitEnumNames ? '' : 'KUAISHOU');
  static const AppInfo_Type QQMUSIC =
      AppInfo_Type._(16, _omitEnumNames ? '' : 'QQMUSIC');
  static const AppInfo_Type DIDI =
      AppInfo_Type._(17, _omitEnumNames ? '' : 'DIDI');
  static const AppInfo_Type BAIDUMAP =
      AppInfo_Type._(18, _omitEnumNames ? '' : 'BAIDUMAP');
  static const AppInfo_Type GAODEMAP =
      AppInfo_Type._(19, _omitEnumNames ? '' : 'GAODEMAP');
  static const AppInfo_Type CLOUDMUSIC =
      AppInfo_Type._(20, _omitEnumNames ? '' : 'CLOUDMUSIC');
  static const AppInfo_Type KUGOU =
      AppInfo_Type._(21, _omitEnumNames ? '' : 'KUGOU');
  static const AppInfo_Type BAIDU =
      AppInfo_Type._(22, _omitEnumNames ? '' : 'BAIDU');
  static const AppInfo_Type QQMAIL =
      AppInfo_Type._(23, _omitEnumNames ? '' : 'QQMAIL');
  static const AppInfo_Type QQZONE =
      AppInfo_Type._(24, _omitEnumNames ? '' : 'QQZONE');
  static const AppInfo_Type TENCENTNEWS =
      AppInfo_Type._(25, _omitEnumNames ? '' : 'TENCENTNEWS');
  static const AppInfo_Type TOUTIAO =
      AppInfo_Type._(26, _omitEnumNames ? '' : 'TOUTIAO');
  static const AppInfo_Type WEWORK =
      AppInfo_Type._(27, _omitEnumNames ? '' : 'WEWORK');
  static const AppInfo_Type MEITUAN =
      AppInfo_Type._(28, _omitEnumNames ? '' : 'MEITUAN');
  static const AppInfo_Type KEEP =
      AppInfo_Type._(29, _omitEnumNames ? '' : 'KEEP');
  static const AppInfo_Type YOUKU =
      AppInfo_Type._(30, _omitEnumNames ? '' : 'YOUKU');
  static const AppInfo_Type QQLIVE =
      AppInfo_Type._(31, _omitEnumNames ? '' : 'QQLIVE');
  static const AppInfo_Type IQIYI =
      AppInfo_Type._(32, _omitEnumNames ? '' : 'IQIYI');
  static const AppInfo_Type BILIBILI =
      AppInfo_Type._(33, _omitEnumNames ? '' : 'BILIBILI');
  static const AppInfo_Type TIKTOKLITE =
      AppInfo_Type._(34, _omitEnumNames ? '' : 'TIKTOKLITE');
  static const AppInfo_Type KUSISHOULITE =
      AppInfo_Type._(35, _omitEnumNames ? '' : 'KUSISHOULITE');
  static const AppInfo_Type XIMALAYA =
      AppInfo_Type._(36, _omitEnumNames ? '' : 'XIMALAYA');
  static const AppInfo_Type WEISHI =
      AppInfo_Type._(37, _omitEnumNames ? '' : 'WEISHI');
  static const AppInfo_Type DIANPING =
      AppInfo_Type._(38, _omitEnumNames ? '' : 'DIANPING');
  static const AppInfo_Type MEITUANWM =
      AppInfo_Type._(39, _omitEnumNames ? '' : 'MEITUANWM');
  static const AppInfo_Type ELEME =
      AppInfo_Type._(40, _omitEnumNames ? '' : 'ELEME');
  static const AppInfo_Type ZHIHU =
      AppInfo_Type._(41, _omitEnumNames ? '' : 'ZHIHU');
  static const AppInfo_Type XIANYU =
      AppInfo_Type._(42, _omitEnumNames ? '' : 'XIANYU');
  static const AppInfo_Type TAOBAOLITE =
      AppInfo_Type._(43, _omitEnumNames ? '' : 'TAOBAOLITE');
  static const AppInfo_Type JD = AppInfo_Type._(44, _omitEnumNames ? '' : 'JD');
  static const AppInfo_Type DEWU =
      AppInfo_Type._(45, _omitEnumNames ? '' : 'DEWU');
  static const AppInfo_Type TMALL =
      AppInfo_Type._(46, _omitEnumNames ? '' : 'TMALL');
  static const AppInfo_Type SUNING =
      AppInfo_Type._(47, _omitEnumNames ? '' : 'SUNING');
  static const AppInfo_Type TICKET12306 =
      AppInfo_Type._(48, _omitEnumNames ? '' : 'TICKET12306');
  static const AppInfo_Type CCB =
      AppInfo_Type._(49, _omitEnumNames ? '' : 'CCB');
  static const AppInfo_Type UNIONPAY =
      AppInfo_Type._(50, _omitEnumNames ? '' : 'UNIONPAY');
  static const AppInfo_Type CMB =
      AppInfo_Type._(51, _omitEnumNames ? '' : 'CMB');
  static const AppInfo_Type JDJR =
      AppInfo_Type._(52, _omitEnumNames ? '' : 'JDJR');
  static const AppInfo_Type CB = AppInfo_Type._(53, _omitEnumNames ? '' : 'CB');
  static const AppInfo_Type ICBC =
      AppInfo_Type._(54, _omitEnumNames ? '' : 'ICBC');
  static const AppInfo_Type ZSSH =
      AppInfo_Type._(55, _omitEnumNames ? '' : 'ZSSH');
  static const AppInfo_Type ABC =
      AppInfo_Type._(56, _omitEnumNames ? '' : 'ABC');
  static const AppInfo_Type JTBANK =
      AppInfo_Type._(57, _omitEnumNames ? '' : 'JTBANK');
  static const AppInfo_Type WEREAD =
      AppInfo_Type._(58, _omitEnumNames ? '' : 'WEREAD');
  static const AppInfo_Type SHUQI =
      AppInfo_Type._(59, _omitEnumNames ? '' : 'SHUQI');
  static const AppInfo_Type QQBROWSER =
      AppInfo_Type._(60, _omitEnumNames ? '' : 'QQBROWSER');
  static const AppInfo_Type UCBROWSER =
      AppInfo_Type._(61, _omitEnumNames ? '' : 'UCBROWSER');
  static const AppInfo_Type SOUL =
      AppInfo_Type._(62, _omitEnumNames ? '' : 'SOUL');
  static const AppInfo_Type MOMO =
      AppInfo_Type._(63, _omitEnumNames ? '' : 'MOMO');
  static const AppInfo_Type TANTAN =
      AppInfo_Type._(64, _omitEnumNames ? '' : 'TANTAN');
  static const AppInfo_Type DOUBAN =
      AppInfo_Type._(65, _omitEnumNames ? '' : 'DOUBAN');
  static const AppInfo_Type TIEBA =
      AppInfo_Type._(66, _omitEnumNames ? '' : 'TIEBA');
  static const AppInfo_Type WUBA =
      AppInfo_Type._(67, _omitEnumNames ? '' : 'WUBA');
  static const AppInfo_Type WHATSAPP =
      AppInfo_Type._(68, _omitEnumNames ? '' : 'WHATSAPP');
  static const AppInfo_Type VIBER =
      AppInfo_Type._(69, _omitEnumNames ? '' : 'VIBER');
  static const AppInfo_Type SNAPCHAT =
      AppInfo_Type._(70, _omitEnumNames ? '' : 'SNAPCHAT');
  static const AppInfo_Type SKYPE =
      AppInfo_Type._(71, _omitEnumNames ? '' : 'SKYPE');
  static const AppInfo_Type TELEGRAM =
      AppInfo_Type._(72, _omitEnumNames ? '' : 'TELEGRAM');
  static const AppInfo_Type FBMESSENGER =
      AppInfo_Type._(73, _omitEnumNames ? '' : 'FBMESSENGER');
  static const AppInfo_Type DISCORD =
      AppInfo_Type._(74, _omitEnumNames ? '' : 'DISCORD');
  static const AppInfo_Type KAKAO =
      AppInfo_Type._(75, _omitEnumNames ? '' : 'KAKAO');
  static const AppInfo_Type VKONTAKTE =
      AppInfo_Type._(76, _omitEnumNames ? '' : 'VKONTAKTE');
  static const AppInfo_Type LINE =
      AppInfo_Type._(77, _omitEnumNames ? '' : 'LINE');
  static const AppInfo_Type TWITTER =
      AppInfo_Type._(78, _omitEnumNames ? '' : 'TWITTER');
  static const AppInfo_Type GMAIL =
      AppInfo_Type._(79, _omitEnumNames ? '' : 'GMAIL');
  static const AppInfo_Type OUTLOOK =
      AppInfo_Type._(80, _omitEnumNames ? '' : 'OUTLOOK');
  static const AppInfo_Type FB = AppInfo_Type._(81, _omitEnumNames ? '' : 'FB');
  static const AppInfo_Type NAVER =
      AppInfo_Type._(82, _omitEnumNames ? '' : 'NAVER');
  static const AppInfo_Type HANGOUT =
      AppInfo_Type._(83, _omitEnumNames ? '' : 'HANGOUT');
  static const AppInfo_Type BIP =
      AppInfo_Type._(84, _omitEnumNames ? '' : 'BIP');
  static const AppInfo_Type OK = AppInfo_Type._(85, _omitEnumNames ? '' : 'OK');
  static const AppInfo_Type SHARECHAT =
      AppInfo_Type._(86, _omitEnumNames ? '' : 'SHARECHAT');
  static const AppInfo_Type MAMBA =
      AppInfo_Type._(87, _omitEnumNames ? '' : 'MAMBA');
  static const AppInfo_Type INSTAGRAM =
      AppInfo_Type._(88, _omitEnumNames ? '' : 'INSTAGRAM');
  static const AppInfo_Type YOUTUBE =
      AppInfo_Type._(89, _omitEnumNames ? '' : 'YOUTUBE');
  static const AppInfo_Type WPS =
      AppInfo_Type._(90, _omitEnumNames ? '' : 'WPS');

  static const $core.List<AppInfo_Type> values = <AppInfo_Type>[
    NOTIFICATION,
    CALL,
    WECHAT,
    QQ,
    ALIPAY,
    OTHER,
    SMS,
    MAIL,
    WEIBO,
    TAOBAO,
    TIKTOK,
    DINGDING,
    MIHOME,
    XIAOHONGSHU,
    PINDUODUO,
    KUAISHOU,
    QQMUSIC,
    DIDI,
    BAIDUMAP,
    GAODEMAP,
    CLOUDMUSIC,
    KUGOU,
    BAIDU,
    QQMAIL,
    QQZONE,
    TENCENTNEWS,
    TOUTIAO,
    WEWORK,
    MEITUAN,
    KEEP,
    YOUKU,
    QQLIVE,
    IQIYI,
    BILIBILI,
    TIKTOKLITE,
    KUSISHOULITE,
    XIMALAYA,
    WEISHI,
    DIANPING,
    MEITUANWM,
    ELEME,
    ZHIHU,
    XIANYU,
    TAOBAOLITE,
    JD,
    DEWU,
    TMALL,
    SUNING,
    TICKET12306,
    CCB,
    UNIONPAY,
    CMB,
    JDJR,
    CB,
    ICBC,
    ZSSH,
    ABC,
    JTBANK,
    WEREAD,
    SHUQI,
    QQBROWSER,
    UCBROWSER,
    SOUL,
    MOMO,
    TANTAN,
    DOUBAN,
    TIEBA,
    WUBA,
    WHATSAPP,
    VIBER,
    SNAPCHAT,
    SKYPE,
    TELEGRAM,
    FBMESSENGER,
    DISCORD,
    KAKAO,
    VKONTAKTE,
    LINE,
    TWITTER,
    GMAIL,
    OUTLOOK,
    FB,
    NAVER,
    HANGOUT,
    BIP,
    OK,
    SHARECHAT,
    MAMBA,
    INSTAGRAM,
    YOUTUBE,
    WPS,
  ];

  static final $core.List<AppInfo_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 90);
  static AppInfo_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AppInfo_Type._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
