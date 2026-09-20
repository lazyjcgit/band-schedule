// This is a generated file - do not edit.
//
// Generated from wear_aivs.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ResultType extends $pb.ProtobufEnum {
  static const ResultType START_LISTENING =
      ResultType._(0, _omitEnumNames ? '' : 'START_LISTENING');
  static const ResultType END_LISTENING =
      ResultType._(1, _omitEnumNames ? '' : 'END_LISTENING');
  static const ResultType RECOGNIZE_RESULT =
      ResultType._(2, _omitEnumNames ? '' : 'RECOGNIZE_RESULT');
  static const ResultType STOP_CAPTURE =
      ResultType._(3, _omitEnumNames ? '' : 'STOP_CAPTURE');
  static const ResultType DIALOG_FINISH =
      ResultType._(4, _omitEnumNames ? '' : 'DIALOG_FINISH');
  static const ResultType SYSTEM_TRUNCATIONNOTIFICATION =
      ResultType._(5, _omitEnumNames ? '' : 'SYSTEM_TRUNCATIONNOTIFICATION');
  static const ResultType ERROR_NETWORK =
      ResultType._(80, _omitEnumNames ? '' : 'ERROR_NETWORK');
  static const ResultType ERROR_AUTH =
      ResultType._(81, _omitEnumNames ? '' : 'ERROR_AUTH');
  static const ResultType ERROR_TOO_MANY_DEVICES =
      ResultType._(82, _omitEnumNames ? '' : 'ERROR_TOO_MANY_DEVICES');
  static const ResultType ERROR_CONTENT_TOO_LONG =
      ResultType._(83, _omitEnumNames ? '' : 'ERROR_CONTENT_TOO_LONG');
  static const ResultType AIVS_ERROR_ASR_TIMEOUT =
      ResultType._(112, _omitEnumNames ? '' : 'AIVS_ERROR_ASR_TIMEOUT');
  static const ResultType AIVS_ERROR_TTS_TIMEOUT =
      ResultType._(113, _omitEnumNames ? '' : 'AIVS_ERROR_TTS_TIMEOUT');
  static const ResultType ERROR_CONNECT_TIMEOUT =
      ResultType._(84, _omitEnumNames ? '' : 'ERROR_CONNECT_TIMEOUT');
  static const ResultType ERROR_AUDIO_EMPTY =
      ResultType._(85, _omitEnumNames ? '' : 'ERROR_AUDIO_EMPTY');
  static const ResultType ERROR_SUBSCRIPTION_EXPIRED =
      ResultType._(86, _omitEnumNames ? '' : 'ERROR_SUBSCRIPTION_EXPIRED');
  static const ResultType ERROR_TODAY_FREE_COUNT_LIMIT =
      ResultType._(87, _omitEnumNames ? '' : 'ERROR_TODAY_FREE_COUNT_LIMIT');
  static const ResultType ERROR_ALL_FREE_COUNT_LIMIT =
      ResultType._(88, _omitEnumNames ? '' : 'ERROR_ALL_FREE_COUNT_LIMIT');
  static const ResultType ERROR_SENSATIVE_CONTENT =
      ResultType._(89, _omitEnumNames ? '' : 'ERROR_SENSATIVE_CONTENT');
  static const ResultType ERROR_UNSUPPORT_LANGUAGE =
      ResultType._(90, _omitEnumNames ? '' : 'ERROR_UNSUPPORT_LANGUAGE');
  static const ResultType ERROR_UNKNOWN =
      ResultType._(91, _omitEnumNames ? '' : 'ERROR_UNKNOWN');
  static const ResultType TEMPLATE_TOAST =
      ResultType._(256, _omitEnumNames ? '' : 'TEMPLATE_TOAST');
  static const ResultType TEMPLATE_GENERAL =
      ResultType._(257, _omitEnumNames ? '' : 'TEMPLATE_GENERAL');
  static const ResultType TEMPLATE_GENERAL2 =
      ResultType._(258, _omitEnumNames ? '' : 'TEMPLATE_GENERAL2');
  static const ResultType TEMPLATE_WEATHER =
      ResultType._(259, _omitEnumNames ? '' : 'TEMPLATE_WEATHER');
  static const ResultType TEMPLATE_PLAYINFO =
      ResultType._(260, _omitEnumNames ? '' : 'TEMPLATE_PLAYINFO');
  static const ResultType TEMPLATE_LISTS =
      ResultType._(261, _omitEnumNames ? '' : 'TEMPLATE_LISTS');
  static const ResultType TEMPLATE_SWITCHPANEL =
      ResultType._(262, _omitEnumNames ? '' : 'TEMPLATE_SWITCHPANEL');
  static const ResultType ALERTS_SETALERT =
      ResultType._(263, _omitEnumNames ? '' : 'ALERTS_SETALERT');
  static const ResultType SPEECHSYNTHESIZER_SPEAK =
      ResultType._(264, _omitEnumNames ? '' : 'SPEECHSYNTHESIZER_SPEAK');
  static const ResultType SPEECHRECOGNIZER_EXPECTSPEECH =
      ResultType._(265, _omitEnumNames ? '' : 'SPEECHRECOGNIZER_EXPECTSPEECH');
  static const ResultType LAUNCHER_LAUNCHAPP =
      ResultType._(266, _omitEnumNames ? '' : 'LAUNCHER_LAUNCHAPP');
  static const ResultType TEMPLATE_SWITCHPANELLIST =
      ResultType._(267, _omitEnumNames ? '' : 'TEMPLATE_SWITCHPANELLIST');
  static const ResultType BRIGHTNESSCONTROLLER_ADJUSTBRIGHTNESS = ResultType._(
      268, _omitEnumNames ? '' : 'BRIGHTNESSCONTROLLER_ADJUSTBRIGHTNESS');
  static const ResultType SYSTEM_SETPROPERTY =
      ResultType._(269, _omitEnumNames ? '' : 'SYSTEM_SETPROPERTY');
  static const ResultType APPLICATION_OPERATE =
      ResultType._(270, _omitEnumNames ? '' : 'APPLICATION_OPERATE');
  static const ResultType ALERTS_DELIVERALERTINTENTION =
      ResultType._(271, _omitEnumNames ? '' : 'ALERTS_DELIVERALERTINTENTION');
  static const ResultType ALERTS_STOPALERT =
      ResultType._(272, _omitEnumNames ? '' : 'ALERTS_STOPALERT');
  static const ResultType PLAYBACKCONTROLLER =
      ResultType._(273, _omitEnumNames ? '' : 'PLAYBACKCONTROLLER');
  static const ResultType PLAYBACKCONTROLLER_STOP =
      ResultType._(274, _omitEnumNames ? '' : 'PLAYBACKCONTROLLER_STOP');
  static const ResultType PLAYBACKCONTROLLER_PLAY =
      ResultType._(275, _omitEnumNames ? '' : 'PLAYBACKCONTROLLER_PLAY');
  static const ResultType PLAYBACKCONTROLLER_PAUSE =
      ResultType._(276, _omitEnumNames ? '' : 'PLAYBACKCONTROLLER_PAUSE');
  static const ResultType PLAYBACKCONTROLLER_NEXT =
      ResultType._(277, _omitEnumNames ? '' : 'PLAYBACKCONTROLLER_NEXT');
  static const ResultType PLAYBACKCONTROLLER_PREV =
      ResultType._(278, _omitEnumNames ? '' : 'PLAYBACKCONTROLLER_PREV');
  static const ResultType PLAYBACKCONTROLLER_CONTINUEPLAYING = ResultType._(
      279, _omitEnumNames ? '' : 'PLAYBACKCONTROLLER_CONTINUEPLAYING');
  static const ResultType SPEAKER_SETMUTE =
      ResultType._(280, _omitEnumNames ? '' : 'SPEAKER_SETMUTE');
  static const ResultType SPEAKER_SETVOLUME =
      ResultType._(281, _omitEnumNames ? '' : 'SPEAKER_SETVOLUME');
  static const ResultType SPEAKER_AJUSTVOLUME =
      ResultType._(282, _omitEnumNames ? '' : 'SPEAKER_AJUSTVOLUME');
  static const ResultType TEMPLATE_DEVICELIST =
      ResultType._(283, _omitEnumNames ? '' : 'TEMPLATE_DEVICELIST');
  static const ResultType EXECUTE_DEVICESKILL =
      ResultType._(284, _omitEnumNames ? '' : 'EXECUTE_DEVICESKILL');
  static const ResultType SHOW_CONTACTS =
      ResultType._(285, _omitEnumNames ? '' : 'SHOW_CONTACTS');
  static const ResultType MAKE_CALL =
      ResultType._(286, _omitEnumNames ? '' : 'MAKE_CALL');
  static const ResultType WEARABLE_CONTROLLER_SWITCH =
      ResultType._(287, _omitEnumNames ? '' : 'WEARABLE_CONTROLLER_SWITCH');
  static const ResultType WEARABLE_CONTROLLER_EXECUTE =
      ResultType._(288, _omitEnumNames ? '' : 'WEARABLE_CONTROLLER_EXECUTE');
  static const ResultType WEARABLE_CONTROLLER_ACTION =
      ResultType._(294, _omitEnumNames ? '' : 'WEARABLE_CONTROLLER_ACTION');
  static const ResultType LLM_LOADING_CARD =
      ResultType._(289, _omitEnumNames ? '' : 'LLM_LOADING_CARD');
  static const ResultType LLM_DECLARATION_CONTENT =
      ResultType._(290, _omitEnumNames ? '' : 'LLM_DECLARATION_CONTENT');
  static const ResultType LLM_ILLEGAL_CONTENT =
      ResultType._(291, _omitEnumNames ? '' : 'LLM_ILLEGAL_CONTENT');
  static const ResultType LLM_TOAST_STREAM =
      ResultType._(292, _omitEnumNames ? '' : 'LLM_TOAST_STREAM');
  static const ResultType LLM_FINISH_STREAM =
      ResultType._(293, _omitEnumNames ? '' : 'LLM_FINISH_STREAM');

  static const $core.List<ResultType> values = <ResultType>[
    START_LISTENING,
    END_LISTENING,
    RECOGNIZE_RESULT,
    STOP_CAPTURE,
    DIALOG_FINISH,
    SYSTEM_TRUNCATIONNOTIFICATION,
    ERROR_NETWORK,
    ERROR_AUTH,
    ERROR_TOO_MANY_DEVICES,
    ERROR_CONTENT_TOO_LONG,
    AIVS_ERROR_ASR_TIMEOUT,
    AIVS_ERROR_TTS_TIMEOUT,
    ERROR_CONNECT_TIMEOUT,
    ERROR_AUDIO_EMPTY,
    ERROR_SUBSCRIPTION_EXPIRED,
    ERROR_TODAY_FREE_COUNT_LIMIT,
    ERROR_ALL_FREE_COUNT_LIMIT,
    ERROR_SENSATIVE_CONTENT,
    ERROR_UNSUPPORT_LANGUAGE,
    ERROR_UNKNOWN,
    TEMPLATE_TOAST,
    TEMPLATE_GENERAL,
    TEMPLATE_GENERAL2,
    TEMPLATE_WEATHER,
    TEMPLATE_PLAYINFO,
    TEMPLATE_LISTS,
    TEMPLATE_SWITCHPANEL,
    ALERTS_SETALERT,
    SPEECHSYNTHESIZER_SPEAK,
    SPEECHRECOGNIZER_EXPECTSPEECH,
    LAUNCHER_LAUNCHAPP,
    TEMPLATE_SWITCHPANELLIST,
    BRIGHTNESSCONTROLLER_ADJUSTBRIGHTNESS,
    SYSTEM_SETPROPERTY,
    APPLICATION_OPERATE,
    ALERTS_DELIVERALERTINTENTION,
    ALERTS_STOPALERT,
    PLAYBACKCONTROLLER,
    PLAYBACKCONTROLLER_STOP,
    PLAYBACKCONTROLLER_PLAY,
    PLAYBACKCONTROLLER_PAUSE,
    PLAYBACKCONTROLLER_NEXT,
    PLAYBACKCONTROLLER_PREV,
    PLAYBACKCONTROLLER_CONTINUEPLAYING,
    SPEAKER_SETMUTE,
    SPEAKER_SETVOLUME,
    SPEAKER_AJUSTVOLUME,
    TEMPLATE_DEVICELIST,
    EXECUTE_DEVICESKILL,
    SHOW_CONTACTS,
    MAKE_CALL,
    WEARABLE_CONTROLLER_SWITCH,
    WEARABLE_CONTROLLER_EXECUTE,
    WEARABLE_CONTROLLER_ACTION,
    LLM_LOADING_CARD,
    LLM_DECLARATION_CONTENT,
    LLM_ILLEGAL_CONTENT,
    LLM_TOAST_STREAM,
    LLM_FINISH_STREAM,
  ];

  static final $core.Map<$core.int, ResultType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ResultType? valueOf($core.int value) => _byValue[value];

  const ResultType._(super.value, super.name);
}

class ApplictionOp extends $pb.ProtobufEnum {
  static const ApplictionOp ApplictionOp_UNKNOWN =
      ApplictionOp._(-1, _omitEnumNames ? '' : 'ApplictionOp_UNKNOWN');
  static const ApplictionOp ApplictionOp_OPEN =
      ApplictionOp._(0, _omitEnumNames ? '' : 'ApplictionOp_OPEN');
  static const ApplictionOp ApplictionOp_INSTALL =
      ApplictionOp._(1, _omitEnumNames ? '' : 'ApplictionOp_INSTALL');
  static const ApplictionOp ApplictionOp_UNINSTALL =
      ApplictionOp._(2, _omitEnumNames ? '' : 'ApplictionOp_UNINSTALL');
  static const ApplictionOp ApplictionOp_CLOSE =
      ApplictionOp._(3, _omitEnumNames ? '' : 'ApplictionOp_CLOSE');
  static const ApplictionOp ApplictionOp_SEARCH =
      ApplictionOp._(4, _omitEnumNames ? '' : 'ApplictionOp_SEARCH');

  static const $core.List<ApplictionOp> values = <ApplictionOp>[
    ApplictionOp_UNKNOWN,
    ApplictionOp_OPEN,
    ApplictionOp_INSTALL,
    ApplictionOp_UNINSTALL,
    ApplictionOp_CLOSE,
    ApplictionOp_SEARCH,
  ];

  static final $core.Map<$core.int, ApplictionOp> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ApplictionOp? valueOf($core.int value) => _byValue[value];

  const ApplictionOp._(super.value, super.name);
}

class PlayInfoType extends $pb.ProtobufEnum {
  static const PlayInfoType PIT_UNKNOWN =
      PlayInfoType._(-1, _omitEnumNames ? '' : 'PIT_UNKNOWN');
  static const PlayInfoType JOKE =
      PlayInfoType._(0, _omitEnumNames ? '' : 'JOKE');
  static const PlayInfoType POEM =
      PlayInfoType._(1, _omitEnumNames ? '' : 'POEM');
  static const PlayInfoType MUSIC =
      PlayInfoType._(2, _omitEnumNames ? '' : 'MUSIC');
  static const PlayInfoType STATION =
      PlayInfoType._(3, _omitEnumNames ? '' : 'STATION');
  static const PlayInfoType VOICE_NEWS =
      PlayInfoType._(4, _omitEnumNames ? '' : 'VOICE_NEWS');
  static const PlayInfoType SOUND =
      PlayInfoType._(5, _omitEnumNames ? '' : 'SOUND');
  static const PlayInfoType TRANSLATION =
      PlayInfoType._(6, _omitEnumNames ? '' : 'TRANSLATION');

  static const $core.List<PlayInfoType> values = <PlayInfoType>[
    PIT_UNKNOWN,
    JOKE,
    POEM,
    MUSIC,
    STATION,
    VOICE_NEWS,
    SOUND,
    TRANSLATION,
  ];

  static final $core.Map<$core.int, PlayInfoType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PlayInfoType? valueOf($core.int value) => _byValue[value];

  const PlayInfoType._(super.value, super.name);
}

class SwitchPanelType extends $pb.ProtobufEnum {
  static const SwitchPanelType SwitchPanelType_UNKNOWN =
      SwitchPanelType._(-1, _omitEnumNames ? '' : 'SwitchPanelType_UNKNOWN');
  static const SwitchPanelType DEFAULT =
      SwitchPanelType._(0, _omitEnumNames ? '' : 'DEFAULT');
  static const SwitchPanelType COUNTDOWN =
      SwitchPanelType._(1, _omitEnumNames ? '' : 'COUNTDOWN');

  static const $core.List<SwitchPanelType> values = <SwitchPanelType>[
    SwitchPanelType_UNKNOWN,
    DEFAULT,
    COUNTDOWN,
  ];

  static final $core.Map<$core.int, SwitchPanelType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SwitchPanelType? valueOf($core.int value) => _byValue[value];

  const SwitchPanelType._(super.value, super.name);
}

class AlertType extends $pb.ProtobufEnum {
  static const AlertType AlertType_UNKNOWN =
      AlertType._(-1, _omitEnumNames ? '' : 'AlertType_UNKNOWN');
  static const AlertType ALARM = AlertType._(0, _omitEnumNames ? '' : 'ALARM');
  static const AlertType REMINDER =
      AlertType._(1, _omitEnumNames ? '' : 'REMINDER');
  static const AlertType TIMER = AlertType._(2, _omitEnumNames ? '' : 'TIMER');

  static const $core.List<AlertType> values = <AlertType>[
    AlertType_UNKNOWN,
    ALARM,
    REMINDER,
    TIMER,
  ];

  static final $core.Map<$core.int, AlertType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AlertType? valueOf($core.int value) => _byValue[value];

  const AlertType._(super.value, super.name);
}

class AlertCircleType extends $pb.ProtobufEnum {
  static const AlertCircleType AlertCircleType_UNKNOWN =
      AlertCircleType._(-1, _omitEnumNames ? '' : 'AlertCircleType_UNKNOWN');
  static const AlertCircleType ONCE =
      AlertCircleType._(0, _omitEnumNames ? '' : 'ONCE');
  static const AlertCircleType EVERYDAY =
      AlertCircleType._(1, _omitEnumNames ? '' : 'EVERYDAY');
  static const AlertCircleType WORKDAY =
      AlertCircleType._(2, _omitEnumNames ? '' : 'WORKDAY');
  static const AlertCircleType MONDAY_TO_FRIDAY =
      AlertCircleType._(3, _omitEnumNames ? '' : 'MONDAY_TO_FRIDAY');
  static const AlertCircleType HOLIDAY =
      AlertCircleType._(4, _omitEnumNames ? '' : 'HOLIDAY');
  static const AlertCircleType WEEKEND =
      AlertCircleType._(5, _omitEnumNames ? '' : 'WEEKEND');
  static const AlertCircleType WEEKLY =
      AlertCircleType._(6, _omitEnumNames ? '' : 'WEEKLY');
  static const AlertCircleType MONTHLY =
      AlertCircleType._(7, _omitEnumNames ? '' : 'MONTHLY');
  static const AlertCircleType YEARLY =
      AlertCircleType._(8, _omitEnumNames ? '' : 'YEARLY');

  static const $core.List<AlertCircleType> values = <AlertCircleType>[
    AlertCircleType_UNKNOWN,
    ONCE,
    EVERYDAY,
    WORKDAY,
    MONDAY_TO_FRIDAY,
    HOLIDAY,
    WEEKEND,
    WEEKLY,
    MONTHLY,
    YEARLY,
  ];

  static final $core.Map<$core.int, AlertCircleType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AlertCircleType? valueOf($core.int value) => _byValue[value];

  const AlertCircleType._(super.value, super.name);
}

class AlertOperation extends $pb.ProtobufEnum {
  static const AlertOperation AlertOperation_UNKNOWN =
      AlertOperation._(-1, _omitEnumNames ? '' : 'AlertOperation_UNKNOWN');
  static const AlertOperation OPEN =
      AlertOperation._(0, _omitEnumNames ? '' : 'OPEN');
  static const AlertOperation CLOSE =
      AlertOperation._(1, _omitEnumNames ? '' : 'CLOSE');
  static const AlertOperation PAUSE =
      AlertOperation._(2, _omitEnumNames ? '' : 'PAUSE');
  static const AlertOperation PROCEED =
      AlertOperation._(3, _omitEnumNames ? '' : 'PROCEED');
  static const AlertOperation QUERY =
      AlertOperation._(4, _omitEnumNames ? '' : 'QUERY');
  static const AlertOperation DELETE =
      AlertOperation._(5, _omitEnumNames ? '' : 'DELETE');

  static const $core.List<AlertOperation> values = <AlertOperation>[
    AlertOperation_UNKNOWN,
    OPEN,
    CLOSE,
    PAUSE,
    PROCEED,
    QUERY,
    DELETE,
  ];

  static final $core.Map<$core.int, AlertOperation> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AlertOperation? valueOf($core.int value) => _byValue[value];

  const AlertOperation._(super.value, super.name);
}

class AlertFilterType extends $pb.ProtobufEnum {
  static const AlertFilterType ALERTFILTER_UNKNOWN =
      AlertFilterType._(-1, _omitEnumNames ? '' : 'ALERTFILTER_UNKNOWN');
  static const AlertFilterType ALERTFILTER_RECENTLY_SET =
      AlertFilterType._(0, _omitEnumNames ? '' : 'ALERTFILTER_RECENTLY_SET');
  static const AlertFilterType ALERTFILTER_RECENTLY_CALL =
      AlertFilterType._(1, _omitEnumNames ? '' : 'ALERTFILTER_RECENTLY_CALL');
  static const AlertFilterType ALERTFILTER_ON_STATUS =
      AlertFilterType._(2, _omitEnumNames ? '' : 'ALERTFILTER_ON_STATUS');
  static const AlertFilterType ALERTFILTER_OFF_STATUS =
      AlertFilterType._(3, _omitEnumNames ? '' : 'ALERTFILTER_OFF_STATUS');

  static const $core.List<AlertFilterType> values = <AlertFilterType>[
    ALERTFILTER_UNKNOWN,
    ALERTFILTER_RECENTLY_SET,
    ALERTFILTER_RECENTLY_CALL,
    ALERTFILTER_ON_STATUS,
    ALERTFILTER_OFF_STATUS,
  ];

  static final $core.Map<$core.int, AlertFilterType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AlertFilterType? valueOf($core.int value) => _byValue[value];

  const AlertFilterType._(super.value, super.name);
}

class AlertTimeType extends $pb.ProtobufEnum {
  static const AlertTimeType ALERTTIME_UNKNOWN =
      AlertTimeType._(-1, _omitEnumNames ? '' : 'ALERTTIME_UNKNOWN');
  static const AlertTimeType ALERTTIME_DATETIME =
      AlertTimeType._(0, _omitEnumNames ? '' : 'ALERTTIME_DATETIME');
  static const AlertTimeType ALERTTIME_DURATION =
      AlertTimeType._(1, _omitEnumNames ? '' : 'ALERTTIME_DURATION');
  static const AlertTimeType ALERTTIME_OFFSET =
      AlertTimeType._(2, _omitEnumNames ? '' : 'ALERTTIME_OFFSET');
  static const AlertTimeType ALERTTIME_INDETER_DATETIME =
      AlertTimeType._(3, _omitEnumNames ? '' : 'ALERTTIME_INDETER_DATETIME');

  static const $core.List<AlertTimeType> values = <AlertTimeType>[
    ALERTTIME_UNKNOWN,
    ALERTTIME_DATETIME,
    ALERTTIME_DURATION,
    ALERTTIME_OFFSET,
    ALERTTIME_INDETER_DATETIME,
  ];

  static final $core.Map<$core.int, AlertTimeType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AlertTimeType? valueOf($core.int value) => _byValue[value];

  const AlertTimeType._(super.value, super.name);
}

class MediaErrorType extends $pb.ProtobufEnum {
  static const MediaErrorType Media_ERROR_OK =
      MediaErrorType._(0, _omitEnumNames ? '' : 'Media_ERROR_OK');
  static const MediaErrorType Media_ERROR_UNSUPPORT_SYSTEM =
      MediaErrorType._(1, _omitEnumNames ? '' : 'Media_ERROR_UNSUPPORT_SYSTEM');
  static const MediaErrorType Media_ERROR_NO_PERMISSION =
      MediaErrorType._(2, _omitEnumNames ? '' : 'Media_ERROR_NO_PERMISSION');
  static const MediaErrorType Media_ERROR_NO_MUSIC =
      MediaErrorType._(3, _omitEnumNames ? '' : 'Media_ERROR_NO_MUSIC');
  static const MediaErrorType Media_ERROR_ALREADY_PLAYING_ON_PLAY =
      MediaErrorType._(
          4, _omitEnumNames ? '' : 'Media_ERROR_ALREADY_PLAYING_ON_PLAY');
  static const MediaErrorType Media_ERROR_ALREADY_PAUSED_ON_PAUSE =
      MediaErrorType._(
          5, _omitEnumNames ? '' : 'Media_ERROR_ALREADY_PAUSED_ON_PAUSE');
  static const MediaErrorType Media_ERROR_ALREADY_MAX_ON_RAISE_VOLUME =
      MediaErrorType._(
          6, _omitEnumNames ? '' : 'Media_ERROR_ALREADY_MAX_ON_RAISE_VOLUME');
  static const MediaErrorType Media_ERROR_ALREADY_MIN_ON_LOWER_VOLUME =
      MediaErrorType._(
          7, _omitEnumNames ? '' : 'Media_ERROR_ALREADY_MIN_ON_LOWER_VOLUME');
  static const MediaErrorType Media_ERROR_ALREADY_PAUSED_ON_ADJUST_VOLUME =
      MediaErrorType._(8,
          _omitEnumNames ? '' : 'Media_ERROR_ALREADY_PAUSED_ON_ADJUST_VOLUME');
  static const MediaErrorType Media_ERROR_ALREADY_PAUSED_ON_SET_VOLUME =
      MediaErrorType._(
          9, _omitEnumNames ? '' : 'Media_ERROR_ALREADY_PAUSED_ON_SET_VOLUME');
  static const MediaErrorType Media_ERROR_ALREADY_PAUSED_ON_SET_MUTE =
      MediaErrorType._(
          10, _omitEnumNames ? '' : 'Media_ERROR_ALREADY_PAUSED_ON_SET_MUTE');

  static const $core.List<MediaErrorType> values = <MediaErrorType>[
    Media_ERROR_OK,
    Media_ERROR_UNSUPPORT_SYSTEM,
    Media_ERROR_NO_PERMISSION,
    Media_ERROR_NO_MUSIC,
    Media_ERROR_ALREADY_PLAYING_ON_PLAY,
    Media_ERROR_ALREADY_PAUSED_ON_PAUSE,
    Media_ERROR_ALREADY_MAX_ON_RAISE_VOLUME,
    Media_ERROR_ALREADY_MIN_ON_LOWER_VOLUME,
    Media_ERROR_ALREADY_PAUSED_ON_ADJUST_VOLUME,
    Media_ERROR_ALREADY_PAUSED_ON_SET_VOLUME,
    Media_ERROR_ALREADY_PAUSED_ON_SET_MUTE,
  ];

  static final $core.List<MediaErrorType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 10);
  static MediaErrorType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MediaErrorType._(super.value, super.name);
}

class SpeakerVolumeType extends $pb.ProtobufEnum {
  static const SpeakerVolumeType Speaker_VOLUME_UNKNOWN =
      SpeakerVolumeType._(-1, _omitEnumNames ? '' : 'Speaker_VOLUME_UNKNOWN');
  static const SpeakerVolumeType Speaker_VOLUME_MEDIA =
      SpeakerVolumeType._(0, _omitEnumNames ? '' : 'Speaker_VOLUME_MEDIA');
  static const SpeakerVolumeType Speaker_VOLUME_RING =
      SpeakerVolumeType._(1, _omitEnumNames ? '' : 'Speaker_VOLUME_RING');
  static const SpeakerVolumeType Speaker_VOLUME_NOTIFICATION =
      SpeakerVolumeType._(
          2, _omitEnumNames ? '' : 'Speaker_VOLUME_NOTIFICATION');
  static const SpeakerVolumeType Speaker_VOLUME_VOICE_ASSISTANT =
      SpeakerVolumeType._(
          3, _omitEnumNames ? '' : 'Speaker_VOLUME_VOICE_ASSISTANT');
  static const SpeakerVolumeType Speaker_VOLUME_ALARM =
      SpeakerVolumeType._(4, _omitEnumNames ? '' : 'Speaker_VOLUME_ALARM');

  static const $core.List<SpeakerVolumeType> values = <SpeakerVolumeType>[
    Speaker_VOLUME_UNKNOWN,
    Speaker_VOLUME_MEDIA,
    Speaker_VOLUME_RING,
    Speaker_VOLUME_NOTIFICATION,
    Speaker_VOLUME_VOICE_ASSISTANT,
    Speaker_VOLUME_ALARM,
  ];

  static final $core.Map<$core.int, SpeakerVolumeType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SpeakerVolumeType? valueOf($core.int value) => _byValue[value];

  const SpeakerVolumeType._(super.value, super.name);
}

class SpeakerUnitDef extends $pb.ProtobufEnum {
  static const SpeakerUnitDef Speaker_UNIT_UNKNOWN =
      SpeakerUnitDef._(-1, _omitEnumNames ? '' : 'Speaker_UNIT_UNKNOWN');
  static const SpeakerUnitDef Speaker_UNIT_PERCENT =
      SpeakerUnitDef._(0, _omitEnumNames ? '' : 'Speaker_UNIT_PERCENT');
  static const SpeakerUnitDef Speaker_UNIT_ABSOLUTE =
      SpeakerUnitDef._(1, _omitEnumNames ? '' : 'Speaker_UNIT_ABSOLUTE');

  static const $core.List<SpeakerUnitDef> values = <SpeakerUnitDef>[
    Speaker_UNIT_UNKNOWN,
    Speaker_UNIT_PERCENT,
    Speaker_UNIT_ABSOLUTE,
  ];

  static final $core.Map<$core.int, SpeakerUnitDef> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SpeakerUnitDef? valueOf($core.int value) => _byValue[value];

  const SpeakerUnitDef._(super.value, super.name);
}

class Aivs_AivsID extends $pb.ProtobufEnum {
  static const Aivs_AivsID SYNC_INSTRUCTION_LIST =
      Aivs_AivsID._(0, _omitEnumNames ? '' : 'SYNC_INSTRUCTION_LIST');
  static const Aivs_AivsID GET_CONFIG =
      Aivs_AivsID._(1, _omitEnumNames ? '' : 'GET_CONFIG');
  static const Aivs_AivsID SET_CONFIG =
      Aivs_AivsID._(2, _omitEnumNames ? '' : 'SET_CONFIG');
  static const Aivs_AivsID GET_MEDIA_CONFIG =
      Aivs_AivsID._(3, _omitEnumNames ? '' : 'GET_MEDIA_CONFIG');
  static const Aivs_AivsID REQUEST_MULTI_MODAL =
      Aivs_AivsID._(4, _omitEnumNames ? '' : 'REQUEST_MULTI_MODAL');
  static const Aivs_AivsID SYNC_AIVS_STATUS =
      Aivs_AivsID._(5, _omitEnumNames ? '' : 'SYNC_AIVS_STATUS');
  static const Aivs_AivsID SYNC_AIVS_ERROR =
      Aivs_AivsID._(6, _omitEnumNames ? '' : 'SYNC_AIVS_ERROR');
  static const Aivs_AivsID GET_AFLASH_SUPPORTED_LANGUAGE =
      Aivs_AivsID._(7, _omitEnumNames ? '' : 'GET_AFLASH_SUPPORTED_LANGUAGE');
  static const Aivs_AivsID REPLY_AFLASH_CONFIRM_RESULT =
      Aivs_AivsID._(8, _omitEnumNames ? '' : 'REPLY_AFLASH_CONFIRM_RESULT');
  static const Aivs_AivsID LLM_ISSUE_IMAGE =
      Aivs_AivsID._(9, _omitEnumNames ? '' : 'LLM_ISSUE_IMAGE');

  static const $core.List<Aivs_AivsID> values = <Aivs_AivsID>[
    SYNC_INSTRUCTION_LIST,
    GET_CONFIG,
    SET_CONFIG,
    GET_MEDIA_CONFIG,
    REQUEST_MULTI_MODAL,
    SYNC_AIVS_STATUS,
    SYNC_AIVS_ERROR,
    GET_AFLASH_SUPPORTED_LANGUAGE,
    REPLY_AFLASH_CONFIRM_RESULT,
    LLM_ISSUE_IMAGE,
  ];

  static final $core.List<Aivs_AivsID?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
  static Aivs_AivsID? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Aivs_AivsID._(super.value, super.name);
}

class ShowContacts_Code extends $pb.ProtobufEnum {
  static const ShowContacts_Code OK =
      ShowContacts_Code._(0, _omitEnumNames ? '' : 'OK');
  static const ShowContacts_Code NO_PERMISSION =
      ShowContacts_Code._(1, _omitEnumNames ? '' : 'NO_PERMISSION');

  static const $core.List<ShowContacts_Code> values = <ShowContacts_Code>[
    OK,
    NO_PERMISSION,
  ];

  static final $core.List<ShowContacts_Code?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ShowContacts_Code? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ShowContacts_Code._(super.value, super.name);
}

class AivsStatus_VoiceStatus extends $pb.ProtobufEnum {
  static const AivsStatus_VoiceStatus VOICE_IDLE =
      AivsStatus_VoiceStatus._(0, _omitEnumNames ? '' : 'VOICE_IDLE');
  static const AivsStatus_VoiceStatus WAKE_UP =
      AivsStatus_VoiceStatus._(1, _omitEnumNames ? '' : 'WAKE_UP');
  static const AivsStatus_VoiceStatus RECORDING =
      AivsStatus_VoiceStatus._(2, _omitEnumNames ? '' : 'RECORDING');
  static const AivsStatus_VoiceStatus STANDBY =
      AivsStatus_VoiceStatus._(3, _omitEnumNames ? '' : 'STANDBY');

  static const $core.List<AivsStatus_VoiceStatus> values =
      <AivsStatus_VoiceStatus>[
    VOICE_IDLE,
    WAKE_UP,
    RECORDING,
    STANDBY,
  ];

  static final $core.List<AivsStatus_VoiceStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static AivsStatus_VoiceStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AivsStatus_VoiceStatus._(super.value, super.name);
}

class AivsStatus_TtsStatus extends $pb.ProtobufEnum {
  static const AivsStatus_TtsStatus TTS_IDLE =
      AivsStatus_TtsStatus._(0, _omitEnumNames ? '' : 'TTS_IDLE');
  static const AivsStatus_TtsStatus TTS_PLAYING =
      AivsStatus_TtsStatus._(1, _omitEnumNames ? '' : 'TTS_PLAYING');

  static const $core.List<AivsStatus_TtsStatus> values = <AivsStatus_TtsStatus>[
    TTS_IDLE,
    TTS_PLAYING,
  ];

  static final $core.List<AivsStatus_TtsStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static AivsStatus_TtsStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AivsStatus_TtsStatus._(super.value, super.name);
}

class AivsStatus_MediaPlayStatus extends $pb.ProtobufEnum {
  static const AivsStatus_MediaPlayStatus MEDIA_IDLE =
      AivsStatus_MediaPlayStatus._(0, _omitEnumNames ? '' : 'MEDIA_IDLE');
  static const AivsStatus_MediaPlayStatus MEDIA_PLAYING =
      AivsStatus_MediaPlayStatus._(1, _omitEnumNames ? '' : 'MEDIA_PLAYING');
  static const AivsStatus_MediaPlayStatus MEDIA_PAUSED =
      AivsStatus_MediaPlayStatus._(2, _omitEnumNames ? '' : 'MEDIA_PAUSED');
  static const AivsStatus_MediaPlayStatus MEDIA_STOPPED =
      AivsStatus_MediaPlayStatus._(3, _omitEnumNames ? '' : 'MEDIA_STOPPED');

  static const $core.List<AivsStatus_MediaPlayStatus> values =
      <AivsStatus_MediaPlayStatus>[
    MEDIA_IDLE,
    MEDIA_PLAYING,
    MEDIA_PAUSED,
    MEDIA_STOPPED,
  ];

  static final $core.List<AivsStatus_MediaPlayStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static AivsStatus_MediaPlayStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AivsStatus_MediaPlayStatus._(super.value, super.name);
}

class AivsStatus_ImageStatus extends $pb.ProtobufEnum {
  static const AivsStatus_ImageStatus IMAGE_IDLE =
      AivsStatus_ImageStatus._(0, _omitEnumNames ? '' : 'IMAGE_IDLE');
  static const AivsStatus_ImageStatus IMAGE_PREPARE =
      AivsStatus_ImageStatus._(1, _omitEnumNames ? '' : 'IMAGE_PREPARE');
  static const AivsStatus_ImageStatus IMAGE_UPLOADING =
      AivsStatus_ImageStatus._(2, _omitEnumNames ? '' : 'IMAGE_UPLOADING');

  static const $core.List<AivsStatus_ImageStatus> values =
      <AivsStatus_ImageStatus>[
    IMAGE_IDLE,
    IMAGE_PREPARE,
    IMAGE_UPLOADING,
  ];

  static final $core.List<AivsStatus_ImageStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static AivsStatus_ImageStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AivsStatus_ImageStatus._(super.value, super.name);
}

class AivsStatus_OperatingStatus extends $pb.ProtobufEnum {
  static const AivsStatus_OperatingStatus OPERATING_IDLE =
      AivsStatus_OperatingStatus._(0, _omitEnumNames ? '' : 'OPERATING_IDLE');
  static const AivsStatus_OperatingStatus EXECUTING =
      AivsStatus_OperatingStatus._(1, _omitEnumNames ? '' : 'EXECUTING');

  static const $core.List<AivsStatus_OperatingStatus> values =
      <AivsStatus_OperatingStatus>[
    OPERATING_IDLE,
    EXECUTING,
  ];

  static final $core.List<AivsStatus_OperatingStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static AivsStatus_OperatingStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AivsStatus_OperatingStatus._(super.value, super.name);
}

class AivsStatus_DeviceStatus extends $pb.ProtobufEnum {
  static const AivsStatus_DeviceStatus CONNECTED_ONLINE =
      AivsStatus_DeviceStatus._(0, _omitEnumNames ? '' : 'CONNECTED_ONLINE');
  static const AivsStatus_DeviceStatus CONNECTED_OFFLINE =
      AivsStatus_DeviceStatus._(1, _omitEnumNames ? '' : 'CONNECTED_OFFLINE');
  static const AivsStatus_DeviceStatus DISCONNECTED_OFFLINE =
      AivsStatus_DeviceStatus._(
          2, _omitEnumNames ? '' : 'DISCONNECTED_OFFLINE');

  static const $core.List<AivsStatus_DeviceStatus> values =
      <AivsStatus_DeviceStatus>[
    CONNECTED_ONLINE,
    CONNECTED_OFFLINE,
    DISCONNECTED_OFFLINE,
  ];

  static final $core.List<AivsStatus_DeviceStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static AivsStatus_DeviceStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AivsStatus_DeviceStatus._(super.value, super.name);
}

class AFlash_Scene extends $pb.ProtobufEnum {
  static const AFlash_Scene QUESTION_AND_ANSWER =
      AFlash_Scene._(0, _omitEnumNames ? '' : 'QUESTION_AND_ANSWER');
  static const AFlash_Scene TEXT_TO_IMAGE =
      AFlash_Scene._(1, _omitEnumNames ? '' : 'TEXT_TO_IMAGE');

  static const $core.List<AFlash_Scene> values = <AFlash_Scene>[
    QUESTION_AND_ANSWER,
    TEXT_TO_IMAGE,
  ];

  static final $core.List<AFlash_Scene?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static AFlash_Scene? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AFlash_Scene._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
