// This is a generated file - do not edit.
//
// Generated from wear_common.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ErrorCode extends $pb.ProtobufEnum {
  static const ErrorCode NO_ERROR =
      ErrorCode._(0, _omitEnumNames ? '' : 'NO_ERROR');
  static const ErrorCode NOT_SUPPORT =
      ErrorCode._(1, _omitEnumNames ? '' : 'NOT_SUPPORT');
  static const ErrorCode DEPENDENCY_NOT_READY =
      ErrorCode._(2, _omitEnumNames ? '' : 'DEPENDENCY_NOT_READY');
  static const ErrorCode SET_FAILED =
      ErrorCode._(3, _omitEnumNames ? '' : 'SET_FAILED');
  static const ErrorCode PARAM_ERROR =
      ErrorCode._(4, _omitEnumNames ? '' : 'PARAM_ERROR');
  static const ErrorCode BUSY_IN_OTA =
      ErrorCode._(5, _omitEnumNames ? '' : 'BUSY_IN_OTA');
  static const ErrorCode BUSY_IN_UPLOAD_LOG =
      ErrorCode._(6, _omitEnumNames ? '' : 'BUSY_IN_UPLOAD_LOG');
  static const ErrorCode BUSY_IN_A2DP =
      ErrorCode._(7, _omitEnumNames ? '' : 'BUSY_IN_A2DP');
  static const ErrorCode UNKNOWN =
      ErrorCode._(255, _omitEnumNames ? '' : 'UNKNOWN');

  static const $core.List<ErrorCode> values = <ErrorCode>[
    NO_ERROR,
    NOT_SUPPORT,
    DEPENDENCY_NOT_READY,
    SET_FAILED,
    PARAM_ERROR,
    BUSY_IN_OTA,
    BUSY_IN_UPLOAD_LOG,
    BUSY_IN_A2DP,
    UNKNOWN,
  ];

  static final $core.Map<$core.int, ErrorCode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ErrorCode? valueOf($core.int value) => _byValue[value];

  const ErrorCode._(super.value, super.name);
}

class PrepareStatus extends $pb.ProtobufEnum {
  static const PrepareStatus READY =
      PrepareStatus._(0, _omitEnumNames ? '' : 'READY');
  static const PrepareStatus BUSY =
      PrepareStatus._(1, _omitEnumNames ? '' : 'BUSY');
  static const PrepareStatus DUPLICATED =
      PrepareStatus._(2, _omitEnumNames ? '' : 'DUPLICATED');
  static const PrepareStatus LOW_STORAGE =
      PrepareStatus._(3, _omitEnumNames ? '' : 'LOW_STORAGE');
  static const PrepareStatus LOW_BATTERY =
      PrepareStatus._(4, _omitEnumNames ? '' : 'LOW_BATTERY');
  static const PrepareStatus DOWNGRADE =
      PrepareStatus._(5, _omitEnumNames ? '' : 'DOWNGRADE');
  static const PrepareStatus OP_NOT_SUPPORT =
      PrepareStatus._(6, _omitEnumNames ? '' : 'OP_NOT_SUPPORT');
  static const PrepareStatus EXCEED_QUANTITY_LIMIT =
      PrepareStatus._(7, _omitEnumNames ? '' : 'EXCEED_QUANTITY_LIMIT');
  static const PrepareStatus NETWORK_ERROR =
      PrepareStatus._(8, _omitEnumNames ? '' : 'NETWORK_ERROR');
  static const PrepareStatus FAILED =
      PrepareStatus._(255, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<PrepareStatus> values = <PrepareStatus>[
    READY,
    BUSY,
    DUPLICATED,
    LOW_STORAGE,
    LOW_BATTERY,
    DOWNGRADE,
    OP_NOT_SUPPORT,
    EXCEED_QUANTITY_LIMIT,
    NETWORK_ERROR,
    FAILED,
  ];

  static final $core.Map<$core.int, PrepareStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PrepareStatus? valueOf($core.int value) => _byValue[value];

  const PrepareStatus._(super.value, super.name);
}

class Sex extends $pb.ProtobufEnum {
  static const Sex NEUTRAL = Sex._(0, _omitEnumNames ? '' : 'NEUTRAL');
  static const Sex MALE = Sex._(1, _omitEnumNames ? '' : 'MALE');
  static const Sex FEMALE = Sex._(2, _omitEnumNames ? '' : 'FEMALE');

  static const $core.List<Sex> values = <Sex>[
    NEUTRAL,
    MALE,
    FEMALE,
  ];

  static final $core.List<Sex?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static Sex? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Sex._(super.value, super.name);
}

class SportType extends $pb.ProtobufEnum {
  static const SportType NONE = SportType._(0, _omitEnumNames ? '' : 'NONE');
  static const SportType RUN_OUTDOOR =
      SportType._(1, _omitEnumNames ? '' : 'RUN_OUTDOOR');
  static const SportType WALK_OUTDOOR =
      SportType._(2, _omitEnumNames ? '' : 'WALK_OUTDOOR');
  static const SportType RUN_INDOOR =
      SportType._(3, _omitEnumNames ? '' : 'RUN_INDOOR');
  static const SportType CLIMBING =
      SportType._(4, _omitEnumNames ? '' : 'CLIMBING');
  static const SportType CROSS_COUNTRY =
      SportType._(5, _omitEnumNames ? '' : 'CROSS_COUNTRY');
  static const SportType RIDE_OUTDOOR =
      SportType._(6, _omitEnumNames ? '' : 'RIDE_OUTDOOR');
  static const SportType RIDE_INDOOR =
      SportType._(7, _omitEnumNames ? '' : 'RIDE_INDOOR');
  static const SportType FREE_TRAINING =
      SportType._(8, _omitEnumNames ? '' : 'FREE_TRAINING');
  static const SportType SWIM_INDOOR =
      SportType._(9, _omitEnumNames ? '' : 'SWIM_INDOOR');
  static const SportType SWIM_OUTDOOR =
      SportType._(10, _omitEnumNames ? '' : 'SWIM_OUTDOOR');
  static const SportType ELLIPTICAL_MACHINE =
      SportType._(11, _omitEnumNames ? '' : 'ELLIPTICAL_MACHINE');
  static const SportType YOGA = SportType._(12, _omitEnumNames ? '' : 'YOGA');
  static const SportType ROWING_MACHINE =
      SportType._(13, _omitEnumNames ? '' : 'ROWING_MACHINE');
  static const SportType ROPE_SKIPPING =
      SportType._(14, _omitEnumNames ? '' : 'ROPE_SKIPPING');
  static const SportType HIKING_OUTDOOR =
      SportType._(15, _omitEnumNames ? '' : 'HIKING_OUTDOOR');
  static const SportType HIGH_INTERVAL_TRAINING =
      SportType._(16, _omitEnumNames ? '' : 'HIGH_INTERVAL_TRAINING');
  static const SportType TRIATHLON =
      SportType._(17, _omitEnumNames ? '' : 'TRIATHLON');
  static const SportType GENERAL_BALL =
      SportType._(18, _omitEnumNames ? '' : 'GENERAL_BALL');
  static const SportType BASKETBALL_S =
      SportType._(19, _omitEnumNames ? '' : 'BASKETBALL_S');
  static const SportType GOLF_S =
      SportType._(20, _omitEnumNames ? '' : 'GOLF_S');
  static const SportType SKIING =
      SportType._(21, _omitEnumNames ? '' : 'SKIING');
  static const SportType OUTDOOR_WALK_CATEGORY =
      SportType._(22, _omitEnumNames ? '' : 'OUTDOOR_WALK_CATEGORY');
  static const SportType OUTDOOR_NON_WALK_CATEGORY =
      SportType._(23, _omitEnumNames ? '' : 'OUTDOOR_NON_WALK_CATEGORY');
  static const SportType ROCK_CLIMBING_S =
      SportType._(24, _omitEnumNames ? '' : 'ROCK_CLIMBING_S');
  static const SportType DIVING =
      SportType._(25, _omitEnumNames ? '' : 'DIVING');
  static const SportType SAILBOAT =
      SportType._(100, _omitEnumNames ? '' : 'SAILBOAT');
  static const SportType PADDLE_BOARD =
      SportType._(101, _omitEnumNames ? '' : 'PADDLE_BOARD');
  static const SportType WATER_POLO =
      SportType._(102, _omitEnumNames ? '' : 'WATER_POLO');
  static const SportType AQUATIC_SPORT =
      SportType._(103, _omitEnumNames ? '' : 'AQUATIC_SPORT');
  static const SportType SURFING =
      SportType._(104, _omitEnumNames ? '' : 'SURFING');
  static const SportType CANOEING =
      SportType._(105, _omitEnumNames ? '' : 'CANOEING');
  static const SportType KAYAK_RAFTING =
      SportType._(106, _omitEnumNames ? '' : 'KAYAK_RAFTING');
  static const SportType ROWING =
      SportType._(107, _omitEnumNames ? '' : 'ROWING');
  static const SportType MOTORBOAT =
      SportType._(108, _omitEnumNames ? '' : 'MOTORBOAT');
  static const SportType WEB_SWIMMING =
      SportType._(109, _omitEnumNames ? '' : 'WEB_SWIMMING');
  static const SportType DRIVING =
      SportType._(110, _omitEnumNames ? '' : 'DRIVING');
  static const SportType FANCY_SWIMMING =
      SportType._(111, _omitEnumNames ? '' : 'FANCY_SWIMMING');
  static const SportType SNORKELING =
      SportType._(112, _omitEnumNames ? '' : 'SNORKELING');
  static const SportType KITE_SURFING =
      SportType._(113, _omitEnumNames ? '' : 'KITE_SURFING');
  static const SportType INDOOR_SURFING =
      SportType._(114, _omitEnumNames ? '' : 'INDOOR_SURFING');
  static const SportType DRAGON_BOAT =
      SportType._(115, _omitEnumNames ? '' : 'DRAGON_BOAT');
  static const SportType FREE_DIVING =
      SportType._(116, _omitEnumNames ? '' : 'FREE_DIVING');
  static const SportType SCUBA_DIVING =
      SportType._(117, _omitEnumNames ? '' : 'SCUBA_DIVING');
  static const SportType INSTRUMENT_DIVING =
      SportType._(118, _omitEnumNames ? '' : 'INSTRUMENT_DIVING');
  static const SportType ROCK_CLIMBING =
      SportType._(200, _omitEnumNames ? '' : 'ROCK_CLIMBING');
  static const SportType SKATE =
      SportType._(201, _omitEnumNames ? '' : 'SKATE');
  static const SportType ROLLER_SKATING =
      SportType._(202, _omitEnumNames ? '' : 'ROLLER_SKATING');
  static const SportType PARKOUR =
      SportType._(203, _omitEnumNames ? '' : 'PARKOUR');
  static const SportType ATV = SportType._(204, _omitEnumNames ? '' : 'ATV');
  static const SportType PARAGLIDER =
      SportType._(205, _omitEnumNames ? '' : 'PARAGLIDER');
  static const SportType BICYCLE_MOTO =
      SportType._(206, _omitEnumNames ? '' : 'BICYCLE_MOTO');
  static const SportType HEEL_AND_TOE =
      SportType._(207, _omitEnumNames ? '' : 'HEEL_AND_TOE');
  static const SportType CLIMBING_MACHINE =
      SportType._(300, _omitEnumNames ? '' : 'CLIMBING_MACHINE');
  static const SportType CLIMB_STAIRS =
      SportType._(301, _omitEnumNames ? '' : 'CLIMB_STAIRS');
  static const SportType STEPPER =
      SportType._(302, _omitEnumNames ? '' : 'STEPPER');
  static const SportType CORE_TRAINING =
      SportType._(303, _omitEnumNames ? '' : 'CORE_TRAINING');
  static const SportType FLEXIBILITY_TRAINING =
      SportType._(304, _omitEnumNames ? '' : 'FLEXIBILITY_TRAINING');
  static const SportType PILATES =
      SportType._(305, _omitEnumNames ? '' : 'PILATES');
  static const SportType GYMNASTICS =
      SportType._(306, _omitEnumNames ? '' : 'GYMNASTICS');
  static const SportType STRETCH =
      SportType._(307, _omitEnumNames ? '' : 'STRETCH');
  static const SportType STRENGTH_TRAINING =
      SportType._(308, _omitEnumNames ? '' : 'STRENGTH_TRAINING');
  static const SportType CROSS_FIT =
      SportType._(309, _omitEnumNames ? '' : 'CROSS_FIT');
  static const SportType AEROBICS =
      SportType._(310, _omitEnumNames ? '' : 'AEROBICS');
  static const SportType PHYSICAL_TRAINING =
      SportType._(311, _omitEnumNames ? '' : 'PHYSICAL_TRAINING');
  static const SportType WALL_BALL =
      SportType._(312, _omitEnumNames ? '' : 'WALL_BALL');
  static const SportType DUMBBELL_TRAINING =
      SportType._(313, _omitEnumNames ? '' : 'DUMBBELL_TRAINING');
  static const SportType BARBELL_TRAINING =
      SportType._(314, _omitEnumNames ? '' : 'BARBELL_TRAINING');
  static const SportType WEIGHTLIFTING =
      SportType._(315, _omitEnumNames ? '' : 'WEIGHTLIFTING');
  static const SportType DEADLIFT =
      SportType._(316, _omitEnumNames ? '' : 'DEADLIFT');
  static const SportType BOBBY_JUMP =
      SportType._(317, _omitEnumNames ? '' : 'BOBBY_JUMP');
  static const SportType SIT_UPS =
      SportType._(318, _omitEnumNames ? '' : 'SIT_UPS');
  static const SportType FUNCTIONAL_TRAINING =
      SportType._(319, _omitEnumNames ? '' : 'FUNCTIONAL_TRAINING');
  static const SportType UPPER_LIMB_TRAINING =
      SportType._(320, _omitEnumNames ? '' : 'UPPER_LIMB_TRAINING');
  static const SportType LOWER_LIMB_TRAINING =
      SportType._(321, _omitEnumNames ? '' : 'LOWER_LIMB_TRAINING');
  static const SportType WAIST_TRAINING =
      SportType._(322, _omitEnumNames ? '' : 'WAIST_TRAINING');
  static const SportType BACK_TRAINING =
      SportType._(323, _omitEnumNames ? '' : 'BACK_TRAINING');
  static const SportType SPINNING =
      SportType._(324, _omitEnumNames ? '' : 'SPINNING');
  static const SportType WALKING_MACHINE =
      SportType._(325, _omitEnumNames ? '' : 'WALKING_MACHINE');
  static const SportType STEP_TRAINING =
      SportType._(326, _omitEnumNames ? '' : 'STEP_TRAINING');
  static const SportType SINGLE_BAR =
      SportType._(327, _omitEnumNames ? '' : 'SINGLE_BAR');
  static const SportType PARALLEL_BARS =
      SportType._(328, _omitEnumNames ? '' : 'PARALLEL_BARS');
  static const SportType GROUP_CALLISTHENICS =
      SportType._(329, _omitEnumNames ? '' : 'GROUP_CALLISTHENICS');
  static const SportType STRIKE =
      SportType._(330, _omitEnumNames ? '' : 'STRIKE');
  static const SportType BATTLE_ROPE =
      SportType._(331, _omitEnumNames ? '' : 'BATTLE_ROPE');
  static const SportType MIXED_AEROBIC =
      SportType._(332, _omitEnumNames ? '' : 'MIXED_AEROBIC');
  static const SportType WALK_INDOOR =
      SportType._(333, _omitEnumNames ? '' : 'WALK_INDOOR');
  static const SportType GYM = SportType._(399, _omitEnumNames ? '' : 'GYM');
  static const SportType SQUARE_DANCE =
      SportType._(400, _omitEnumNames ? '' : 'SQUARE_DANCE');
  static const SportType BELLY_DANCE =
      SportType._(401, _omitEnumNames ? '' : 'BELLY_DANCE');
  static const SportType BALLET =
      SportType._(402, _omitEnumNames ? '' : 'BALLET');
  static const SportType STREET_DANCE =
      SportType._(403, _omitEnumNames ? '' : 'STREET_DANCE');
  static const SportType ZUMBA =
      SportType._(404, _omitEnumNames ? '' : 'ZUMBA');
  static const SportType NATIONAL_DANCE =
      SportType._(405, _omitEnumNames ? '' : 'NATIONAL_DANCE');
  static const SportType JAZZ = SportType._(406, _omitEnumNames ? '' : 'JAZZ');
  static const SportType LATIN_DANCE =
      SportType._(407, _omitEnumNames ? '' : 'LATIN_DANCE');
  static const SportType HIP_HOP_DANCE =
      SportType._(408, _omitEnumNames ? '' : 'HIP_HOP_DANCE');
  static const SportType POLE_DANCE =
      SportType._(409, _omitEnumNames ? '' : 'POLE_DANCE');
  static const SportType BREAKDANCING =
      SportType._(410, _omitEnumNames ? '' : 'BREAKDANCING');
  static const SportType SOCIAL_DANCING =
      SportType._(411, _omitEnumNames ? '' : 'SOCIAL_DANCING');
  static const SportType MODERN_DANCING =
      SportType._(412, _omitEnumNames ? '' : 'MODERN_DANCING');
  static const SportType DANCE =
      SportType._(499, _omitEnumNames ? '' : 'DANCE');
  static const SportType BOXING =
      SportType._(500, _omitEnumNames ? '' : 'BOXING');
  static const SportType WRESTLING =
      SportType._(501, _omitEnumNames ? '' : 'WRESTLING');
  static const SportType MARTIAL_ARTS =
      SportType._(502, _omitEnumNames ? '' : 'MARTIAL_ARTS');
  static const SportType TAICHI =
      SportType._(503, _omitEnumNames ? '' : 'TAICHI');
  static const SportType MUAY_THAI =
      SportType._(504, _omitEnumNames ? '' : 'MUAY_THAI');
  static const SportType JUDO = SportType._(505, _omitEnumNames ? '' : 'JUDO');
  static const SportType TAEKWONDO =
      SportType._(506, _omitEnumNames ? '' : 'TAEKWONDO');
  static const SportType KARATE =
      SportType._(507, _omitEnumNames ? '' : 'KARATE');
  static const SportType FREE_SPARRING =
      SportType._(508, _omitEnumNames ? '' : 'FREE_SPARRING');
  static const SportType SWORDSMANSHIP =
      SportType._(509, _omitEnumNames ? '' : 'SWORDSMANSHIP');
  static const SportType FENCING =
      SportType._(510, _omitEnumNames ? '' : 'FENCING');
  static const SportType JUJITSU =
      SportType._(511, _omitEnumNames ? '' : 'JUJITSU');
  static const SportType FOOTBALL =
      SportType._(600, _omitEnumNames ? '' : 'FOOTBALL');
  static const SportType BASKETBALL =
      SportType._(601, _omitEnumNames ? '' : 'BASKETBALL');
  static const SportType VOLLEYBALL =
      SportType._(602, _omitEnumNames ? '' : 'VOLLEYBALL');
  static const SportType BASEBALL =
      SportType._(603, _omitEnumNames ? '' : 'BASEBALL');
  static const SportType SOFTBALL =
      SportType._(604, _omitEnumNames ? '' : 'SOFTBALL');
  static const SportType RUGBY =
      SportType._(605, _omitEnumNames ? '' : 'RUGBY');
  static const SportType HOCKEY =
      SportType._(606, _omitEnumNames ? '' : 'HOCKEY');
  static const SportType PINGPONG =
      SportType._(607, _omitEnumNames ? '' : 'PINGPONG');
  static const SportType BADMINTON =
      SportType._(608, _omitEnumNames ? '' : 'BADMINTON');
  static const SportType TENNIS =
      SportType._(609, _omitEnumNames ? '' : 'TENNIS');
  static const SportType CRICKET =
      SportType._(610, _omitEnumNames ? '' : 'CRICKET');
  static const SportType HANDBALL =
      SportType._(611, _omitEnumNames ? '' : 'HANDBALL');
  static const SportType BOWLING =
      SportType._(612, _omitEnumNames ? '' : 'BOWLING');
  static const SportType SQUASH =
      SportType._(613, _omitEnumNames ? '' : 'SQUASH');
  static const SportType BILLIARDS =
      SportType._(614, _omitEnumNames ? '' : 'BILLIARDS');
  static const SportType SHUTTLECOCK =
      SportType._(615, _omitEnumNames ? '' : 'SHUTTLECOCK');
  static const SportType BEACH_FOOTBALL =
      SportType._(616, _omitEnumNames ? '' : 'BEACH_FOOTBALL');
  static const SportType BEACH_VOLLEYBALL =
      SportType._(617, _omitEnumNames ? '' : 'BEACH_VOLLEYBALL');
  static const SportType SEPAK_TAKRAW =
      SportType._(618, _omitEnumNames ? '' : 'SEPAK_TAKRAW');
  static const SportType GOLF = SportType._(619, _omitEnumNames ? '' : 'GOLF');
  static const SportType FOOSBALL =
      SportType._(620, _omitEnumNames ? '' : 'FOOSBALL');
  static const SportType INDOOR_FOOTBALL =
      SportType._(621, _omitEnumNames ? '' : 'INDOOR_FOOTBALL');
  static const SportType SANDBAGS_BALL =
      SportType._(622, _omitEnumNames ? '' : 'SANDBAGS_BALL');
  static const SportType BOCCI =
      SportType._(623, _omitEnumNames ? '' : 'BOCCI');
  static const SportType HIHI_BALL =
      SportType._(624, _omitEnumNames ? '' : 'HIHI_BALL');
  static const SportType GATEBALL =
      SportType._(625, _omitEnumNames ? '' : 'GATEBALL');
  static const SportType DODGEBALL =
      SportType._(626, _omitEnumNames ? '' : 'DODGEBALL');
  static const SportType SHUFFLE_BALL =
      SportType._(627, _omitEnumNames ? '' : 'SHUFFLE_BALL');
  static const SportType OUTDOOR_SKATING =
      SportType._(700, _omitEnumNames ? '' : 'OUTDOOR_SKATING');
  static const SportType CURLING =
      SportType._(701, _omitEnumNames ? '' : 'CURLING');
  static const SportType SNOW_SPORTS =
      SportType._(702, _omitEnumNames ? '' : 'SNOW_SPORTS');
  static const SportType SNOWMOBILE =
      SportType._(703, _omitEnumNames ? '' : 'SNOWMOBILE');
  static const SportType PUCK = SportType._(704, _omitEnumNames ? '' : 'PUCK');
  static const SportType SNOW_CAR =
      SportType._(705, _omitEnumNames ? '' : 'SNOW_CAR');
  static const SportType SLED = SportType._(706, _omitEnumNames ? '' : 'SLED');
  static const SportType INDOOR__SKATING =
      SportType._(707, _omitEnumNames ? '' : 'INDOOR__SKATING');
  static const SportType SNOWBOARDING =
      SportType._(708, _omitEnumNames ? '' : 'SNOWBOARDING');
  static const SportType DOUBLE_BOARD_SKIING =
      SportType._(709, _omitEnumNames ? '' : 'DOUBLE_BOARD_SKIING');
  static const SportType CROSS_COUNTRY_SKIING =
      SportType._(710, _omitEnumNames ? '' : 'CROSS_COUNTRY_SKIING');
  static const SportType ARCHERY =
      SportType._(800, _omitEnumNames ? '' : 'ARCHERY');
  static const SportType DARTS =
      SportType._(801, _omitEnumNames ? '' : 'DARTS');
  static const SportType HORSE_RIDING =
      SportType._(802, _omitEnumNames ? '' : 'HORSE_RIDING');
  static const SportType TUG_OF_WAR =
      SportType._(803, _omitEnumNames ? '' : 'TUG_OF_WAR');
  static const SportType HULA_HOOP =
      SportType._(804, _omitEnumNames ? '' : 'HULA_HOOP');
  static const SportType FLY_KITE =
      SportType._(805, _omitEnumNames ? '' : 'FLY_KITE');
  static const SportType FISHING =
      SportType._(806, _omitEnumNames ? '' : 'FISHING');
  static const SportType FRISBEE =
      SportType._(807, _omitEnumNames ? '' : 'FRISBEE');
  static const SportType SHUTTLECOCK_KICKING =
      SportType._(808, _omitEnumNames ? '' : 'SHUTTLECOCK_KICKING');
  static const SportType SWING =
      SportType._(809, _omitEnumNames ? '' : 'SWING');
  static const SportType MOTION_SENSING_GAME =
      SportType._(810, _omitEnumNames ? '' : 'MOTION_SENSING_GAME');
  static const SportType ELECTRONIC_SPORTS =
      SportType._(811, _omitEnumNames ? '' : 'ELECTRONIC_SPORTS');
  static const SportType NINTENDO_JUSTDANCE =
      SportType._(812, _omitEnumNames ? '' : 'NINTENDO_JUSTDANCE');
  static const SportType CHESS =
      SportType._(900, _omitEnumNames ? '' : 'CHESS');
  static const SportType DRAUGHTS =
      SportType._(901, _omitEnumNames ? '' : 'DRAUGHTS');
  static const SportType WEIQI =
      SportType._(902, _omitEnumNames ? '' : 'WEIQI');
  static const SportType BRIDGE =
      SportType._(903, _omitEnumNames ? '' : 'BRIDGE');
  static const SportType BOARD_GAMES =
      SportType._(904, _omitEnumNames ? '' : 'BOARD_GAMES');
  static const SportType INDOOR_ROCK_CLIMBING =
      SportType._(1000, _omitEnumNames ? '' : 'INDOOR_ROCK_CLIMBING');
  static const SportType OUTDOOR_ROCK_CLIMBING =
      SportType._(1001, _omitEnumNames ? '' : 'OUTDOOR_ROCK_CLIMBING');
  static const SportType EQUESTTRIAN =
      SportType._(10000, _omitEnumNames ? '' : 'EQUESTTRIAN');
  static const SportType TRACK_AND_FIELD =
      SportType._(10001, _omitEnumNames ? '' : 'TRACK_AND_FIELD');
  static const SportType RACING_CAR =
      SportType._(10002, _omitEnumNames ? '' : 'RACING_CAR');

  static const $core.List<SportType> values = <SportType>[
    NONE,
    RUN_OUTDOOR,
    WALK_OUTDOOR,
    RUN_INDOOR,
    CLIMBING,
    CROSS_COUNTRY,
    RIDE_OUTDOOR,
    RIDE_INDOOR,
    FREE_TRAINING,
    SWIM_INDOOR,
    SWIM_OUTDOOR,
    ELLIPTICAL_MACHINE,
    YOGA,
    ROWING_MACHINE,
    ROPE_SKIPPING,
    HIKING_OUTDOOR,
    HIGH_INTERVAL_TRAINING,
    TRIATHLON,
    GENERAL_BALL,
    BASKETBALL_S,
    GOLF_S,
    SKIING,
    OUTDOOR_WALK_CATEGORY,
    OUTDOOR_NON_WALK_CATEGORY,
    ROCK_CLIMBING_S,
    DIVING,
    SAILBOAT,
    PADDLE_BOARD,
    WATER_POLO,
    AQUATIC_SPORT,
    SURFING,
    CANOEING,
    KAYAK_RAFTING,
    ROWING,
    MOTORBOAT,
    WEB_SWIMMING,
    DRIVING,
    FANCY_SWIMMING,
    SNORKELING,
    KITE_SURFING,
    INDOOR_SURFING,
    DRAGON_BOAT,
    FREE_DIVING,
    SCUBA_DIVING,
    INSTRUMENT_DIVING,
    ROCK_CLIMBING,
    SKATE,
    ROLLER_SKATING,
    PARKOUR,
    ATV,
    PARAGLIDER,
    BICYCLE_MOTO,
    HEEL_AND_TOE,
    CLIMBING_MACHINE,
    CLIMB_STAIRS,
    STEPPER,
    CORE_TRAINING,
    FLEXIBILITY_TRAINING,
    PILATES,
    GYMNASTICS,
    STRETCH,
    STRENGTH_TRAINING,
    CROSS_FIT,
    AEROBICS,
    PHYSICAL_TRAINING,
    WALL_BALL,
    DUMBBELL_TRAINING,
    BARBELL_TRAINING,
    WEIGHTLIFTING,
    DEADLIFT,
    BOBBY_JUMP,
    SIT_UPS,
    FUNCTIONAL_TRAINING,
    UPPER_LIMB_TRAINING,
    LOWER_LIMB_TRAINING,
    WAIST_TRAINING,
    BACK_TRAINING,
    SPINNING,
    WALKING_MACHINE,
    STEP_TRAINING,
    SINGLE_BAR,
    PARALLEL_BARS,
    GROUP_CALLISTHENICS,
    STRIKE,
    BATTLE_ROPE,
    MIXED_AEROBIC,
    WALK_INDOOR,
    GYM,
    SQUARE_DANCE,
    BELLY_DANCE,
    BALLET,
    STREET_DANCE,
    ZUMBA,
    NATIONAL_DANCE,
    JAZZ,
    LATIN_DANCE,
    HIP_HOP_DANCE,
    POLE_DANCE,
    BREAKDANCING,
    SOCIAL_DANCING,
    MODERN_DANCING,
    DANCE,
    BOXING,
    WRESTLING,
    MARTIAL_ARTS,
    TAICHI,
    MUAY_THAI,
    JUDO,
    TAEKWONDO,
    KARATE,
    FREE_SPARRING,
    SWORDSMANSHIP,
    FENCING,
    JUJITSU,
    FOOTBALL,
    BASKETBALL,
    VOLLEYBALL,
    BASEBALL,
    SOFTBALL,
    RUGBY,
    HOCKEY,
    PINGPONG,
    BADMINTON,
    TENNIS,
    CRICKET,
    HANDBALL,
    BOWLING,
    SQUASH,
    BILLIARDS,
    SHUTTLECOCK,
    BEACH_FOOTBALL,
    BEACH_VOLLEYBALL,
    SEPAK_TAKRAW,
    GOLF,
    FOOSBALL,
    INDOOR_FOOTBALL,
    SANDBAGS_BALL,
    BOCCI,
    HIHI_BALL,
    GATEBALL,
    DODGEBALL,
    SHUFFLE_BALL,
    OUTDOOR_SKATING,
    CURLING,
    SNOW_SPORTS,
    SNOWMOBILE,
    PUCK,
    SNOW_CAR,
    SLED,
    INDOOR__SKATING,
    SNOWBOARDING,
    DOUBLE_BOARD_SKIING,
    CROSS_COUNTRY_SKIING,
    ARCHERY,
    DARTS,
    HORSE_RIDING,
    TUG_OF_WAR,
    HULA_HOOP,
    FLY_KITE,
    FISHING,
    FRISBEE,
    SHUTTLECOCK_KICKING,
    SWING,
    MOTION_SENSING_GAME,
    ELECTRONIC_SPORTS,
    NINTENDO_JUSTDANCE,
    CHESS,
    DRAUGHTS,
    WEIQI,
    BRIDGE,
    BOARD_GAMES,
    INDOOR_ROCK_CLIMBING,
    OUTDOOR_ROCK_CLIMBING,
    EQUESTTRIAN,
    TRACK_AND_FIELD,
    RACING_CAR,
  ];

  static final $core.Map<$core.int, SportType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static SportType? valueOf($core.int value) => _byValue[value];

  const SportType._(super.value, super.name);
}

class SportTargetType extends $pb.ProtobufEnum {
  static const SportTargetType TARGET_DURATION =
      SportTargetType._(1, _omitEnumNames ? '' : 'TARGET_DURATION');
  static const SportTargetType TARGET_CALORIE =
      SportTargetType._(2, _omitEnumNames ? '' : 'TARGET_CALORIE');
  static const SportTargetType TARGET_DISTANCE =
      SportTargetType._(3, _omitEnumNames ? '' : 'TARGET_DISTANCE');
  static const SportTargetType TARGET_PACE =
      SportTargetType._(4, _omitEnumNames ? '' : 'TARGET_PACE');
  static const SportTargetType TARGET_STEP_FREQUENCY =
      SportTargetType._(5, _omitEnumNames ? '' : 'TARGET_STEP_FREQUENCY');
  static const SportTargetType TARGET_COUNT =
      SportTargetType._(6, _omitEnumNames ? '' : 'TARGET_COUNT');
  static const SportTargetType TARGET_HEARTRATE =
      SportTargetType._(7, _omitEnumNames ? '' : 'TARGET_HEARTRATE');

  static const $core.List<SportTargetType> values = <SportTargetType>[
    TARGET_DURATION,
    TARGET_CALORIE,
    TARGET_DISTANCE,
    TARGET_PACE,
    TARGET_STEP_FREQUENCY,
    TARGET_COUNT,
    TARGET_HEARTRATE,
  ];

  static final $core.List<SportTargetType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static SportTargetType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SportTargetType._(super.value, super.name);
}

class SportState extends $pb.ProtobufEnum {
  static const SportState SPORT_START =
      SportState._(0, _omitEnumNames ? '' : 'SPORT_START');
  static const SportState SPORT_PAUSE =
      SportState._(1, _omitEnumNames ? '' : 'SPORT_PAUSE');
  static const SportState SPORT_RESUME =
      SportState._(2, _omitEnumNames ? '' : 'SPORT_RESUME');
  static const SportState SPORT_STOP =
      SportState._(3, _omitEnumNames ? '' : 'SPORT_STOP');

  static const $core.List<SportState> values = <SportState>[
    SPORT_START,
    SPORT_PAUSE,
    SPORT_RESUME,
    SPORT_STOP,
  ];

  static final $core.List<SportState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static SportState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SportState._(super.value, super.name);
}

class Function_ extends $pb.ProtobufEnum {
  static const Function_ SETTING =
      Function_._(1, _omitEnumNames ? '' : 'SETTING');
  static const Function_ FITNESS =
      Function_._(2, _omitEnumNames ? '' : 'FITNESS');
  static const Function_ HEART_RATE =
      Function_._(3, _omitEnumNames ? '' : 'HEART_RATE');
  static const Function_ PRESSURE =
      Function_._(4, _omitEnumNames ? '' : 'PRESSURE');
  static const Function_ ENERGY =
      Function_._(5, _omitEnumNames ? '' : 'ENERGY');
  static const Function_ SLEEP = Function_._(6, _omitEnumNames ? '' : 'SLEEP');
  static const Function_ BREATH =
      Function_._(7, _omitEnumNames ? '' : 'BREATH');
  static const Function_ ANAEROBIC_THRESHOLD =
      Function_._(8, _omitEnumNames ? '' : 'ANAEROBIC_THRESHOLD');
  static const Function_ CALENDAR =
      Function_._(9, _omitEnumNames ? '' : 'CALENDAR');
  static const Function_ CLOCK = Function_._(10, _omitEnumNames ? '' : 'CLOCK');
  static const Function_ STOPWATCH =
      Function_._(11, _omitEnumNames ? '' : 'STOPWATCH');
  static const Function_ TIME_KEEPING =
      Function_._(12, _omitEnumNames ? '' : 'TIME_KEEPING');
  static const Function_ WEATHER =
      Function_._(13, _omitEnumNames ? '' : 'WEATHER');
  static const Function_ STOCK = Function_._(14, _omitEnumNames ? '' : 'STOCK');
  static const Function_ APP_LIST =
      Function_._(15, _omitEnumNames ? '' : 'APP_LIST');
  static const Function_ SPORT_LIST =
      Function_._(16, _omitEnumNames ? '' : 'SPORT_LIST');
  static const Function_ HOME = Function_._(17, _omitEnumNames ? '' : 'HOME');
  static const Function_ MUSIC_CONTROLLER =
      Function_._(18, _omitEnumNames ? '' : 'MUSIC_CONTROLLER');
  static const Function_ VOICE_ASSISTANT =
      Function_._(19, _omitEnumNames ? '' : 'VOICE_ASSISTANT');
  static const Function_ BLOOD_OXYGEN =
      Function_._(20, _omitEnumNames ? '' : 'BLOOD_OXYGEN');
  static const Function_ CONTROL_CENTER =
      Function_._(21, _omitEnumNames ? '' : 'CONTROL_CENTER');
  static const Function_ WOMEN_HEALTH =
      Function_._(22, _omitEnumNames ? '' : 'WOMEN_HEALTH');
  static const Function_ SYSTEM =
      Function_._(23, _omitEnumNames ? '' : 'SYSTEM');
  static const Function_ TEMPERATURE =
      Function_._(24, _omitEnumNames ? '' : 'TEMPERATURE');
  static const Function_ BLOOD_PRESSURE =
      Function_._(25, _omitEnumNames ? '' : 'BLOOD_PRESSURE');
  static const Function_ ECG = Function_._(26, _omitEnumNames ? '' : 'ECG');
  static const Function_ EVENT = Function_._(27, _omitEnumNames ? '' : 'EVENT');
  static const Function_ MIHOME =
      Function_._(28, _omitEnumNames ? '' : 'MIHOME');
  static const Function_ ACTIVITY =
      Function_._(29, _omitEnumNames ? '' : 'ACTIVITY');
  static const Function_ SPORT_RECORD =
      Function_._(30, _omitEnumNames ? '' : 'SPORT_RECORD');
  static const Function_ SHARE = Function_._(31, _omitEnumNames ? '' : 'SHARE');
  static const Function_ TODO_LIST =
      Function_._(38, _omitEnumNames ? '' : 'TODO_LIST');
  static const Function_ PHONE = Function_._(39, _omitEnumNames ? '' : 'PHONE');
  static const Function_ LACTATE_THRESHOLD =
      Function_._(40, _omitEnumNames ? '' : 'LACTATE_THRESHOLD');
  static const Function_ COMPASS =
      Function_._(41, _omitEnumNames ? '' : 'COMPASS');
  static const Function_ ALIPAY =
      Function_._(32, _omitEnumNames ? '' : 'ALIPAY');
  static const Function_ CARD = Function_._(33, _omitEnumNames ? '' : 'CARD');
  static const Function_ DOOR = Function_._(34, _omitEnumNames ? '' : 'DOOR');
  static const Function_ BUS = Function_._(35, _omitEnumNames ? '' : 'BUS');
  static const Function_ BANK = Function_._(36, _omitEnumNames ? '' : 'BANK');
  static const Function_ WECHAT_PAY =
      Function_._(37, _omitEnumNames ? '' : 'WECHAT_PAY');

  static const $core.List<Function_> values = <Function_>[
    SETTING,
    FITNESS,
    HEART_RATE,
    PRESSURE,
    ENERGY,
    SLEEP,
    BREATH,
    ANAEROBIC_THRESHOLD,
    CALENDAR,
    CLOCK,
    STOPWATCH,
    TIME_KEEPING,
    WEATHER,
    STOCK,
    APP_LIST,
    SPORT_LIST,
    HOME,
    MUSIC_CONTROLLER,
    VOICE_ASSISTANT,
    BLOOD_OXYGEN,
    CONTROL_CENTER,
    WOMEN_HEALTH,
    SYSTEM,
    TEMPERATURE,
    BLOOD_PRESSURE,
    ECG,
    EVENT,
    MIHOME,
    ACTIVITY,
    SPORT_RECORD,
    SHARE,
    TODO_LIST,
    PHONE,
    LACTATE_THRESHOLD,
    COMPASS,
    ALIPAY,
    CARD,
    DOOR,
    BUS,
    BANK,
    WECHAT_PAY,
  ];

  static final $core.List<Function_?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 41);
  static Function_? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Function_._(super.value, super.name);
}

class WidgetStyle extends $pb.ProtobufEnum {
  static const WidgetStyle STYLE_11 =
      WidgetStyle._(1, _omitEnumNames ? '' : 'STYLE_11');
  static const WidgetStyle STYLE_12 =
      WidgetStyle._(2, _omitEnumNames ? '' : 'STYLE_12');
  static const WidgetStyle STYLE_21 =
      WidgetStyle._(3, _omitEnumNames ? '' : 'STYLE_21');
  static const WidgetStyle STYLE_22 =
      WidgetStyle._(4, _omitEnumNames ? '' : 'STYLE_22');
  static const WidgetStyle STYLE_SQUARE =
      WidgetStyle._(8, _omitEnumNames ? '' : 'STYLE_SQUARE');
  static const WidgetStyle STYLE_RECT =
      WidgetStyle._(9, _omitEnumNames ? '' : 'STYLE_RECT');
  static const WidgetStyle STYLE_CIRCLE =
      WidgetStyle._(10, _omitEnumNames ? '' : 'STYLE_CIRCLE');

  static const $core.List<WidgetStyle> values = <WidgetStyle>[
    STYLE_11,
    STYLE_12,
    STYLE_21,
    STYLE_22,
    STYLE_SQUARE,
    STYLE_RECT,
    STYLE_CIRCLE,
  ];

  static final $core.Map<$core.int, WidgetStyle> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static WidgetStyle? valueOf($core.int value) => _byValue[value];

  const WidgetStyle._(super.value, super.name);
}

class WidgetSubType extends $pb.ProtobufEnum {
  static const WidgetSubType SYSTEM_DARK_STYLE11_BATTERY =
      WidgetSubType._(17, _omitEnumNames ? '' : 'SYSTEM_DARK_STYLE11_BATTERY');
  static const WidgetSubType SYSTEM_DARK_STYLE11_FLASHLIGHT = WidgetSubType._(
      18, _omitEnumNames ? '' : 'SYSTEM_DARK_STYLE11_FLASHLIGHT');
  static const WidgetSubType SYSTEM_DARK_STYLE21_CONTROL =
      WidgetSubType._(19, _omitEnumNames ? '' : 'SYSTEM_DARK_STYLE21_CONTROL');
  static const WidgetSubType APP_LIST_DARK_STYLE11_ENTRY = WidgetSubType._(
      1041, _omitEnumNames ? '' : 'APP_LIST_DARK_STYLE11_ENTRY');
  static const WidgetSubType SPORT_LIST_DARK_STYLE11_START = WidgetSubType._(
      2065, _omitEnumNames ? '' : 'SPORT_LIST_DARK_STYLE11_START');
  static const WidgetSubType SPORT_LIST_DARK_STYLE12_START = WidgetSubType._(
      2081, _omitEnumNames ? '' : 'SPORT_LIST_DARK_STYLE12_START');
  static const WidgetSubType SPORT_LIST_LIGHT_STYLE11_START = WidgetSubType._(
      2321, _omitEnumNames ? '' : 'SPORT_LIST_LIGHT_STYLE11_START');
  static const WidgetSubType SPORT_LIST_LIGHT_STYLE12_START = WidgetSubType._(
      2337, _omitEnumNames ? '' : 'SPORT_LIST_LIGHT_STYLE12_START');
  static const WidgetSubType FITNESS_DARK_STYLE11_VITALITY = WidgetSubType._(
      3089, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE11_VITALITY');
  static const WidgetSubType FITNESS_DARK_STYLE11_STEP =
      WidgetSubType._(3090, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE11_STEP');
  static const WidgetSubType FITNESS_DARK_STYLE11_CALORIE = WidgetSubType._(
      3091, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE11_CALORIE');
  static const WidgetSubType FITNESS_DARK_STYLE11_STAND =
      WidgetSubType._(3092, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE11_STAND');
  static const WidgetSubType FITNESS_DARK_STYLE11_ACTIVITY = WidgetSubType._(
      3093, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE11_ACTIVITY');
  static const WidgetSubType FITNESS_DARK_STYLE12_VITALITY = WidgetSubType._(
      3105, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE12_VITALITY');
  static const WidgetSubType FITNESS_DARK_STYLE12_STEP =
      WidgetSubType._(3106, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE12_STEP');
  static const WidgetSubType FITNESS_DARK_STYLE12_CALORIE = WidgetSubType._(
      3107, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE12_CALORIE');
  static const WidgetSubType FITNESS_DARK_STYLE12_STAND =
      WidgetSubType._(3108, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE12_STAND');
  static const WidgetSubType FITNESS_DARK_STYLE12_ACTIVITY = WidgetSubType._(
      3109, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE12_ACTIVITY');
  static const WidgetSubType FITNESS_DARK_STYLE21_VITALITY = WidgetSubType._(
      3121, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE21_VITALITY');
  static const WidgetSubType FITNESS_DARK_STYLE22_VITALITY = WidgetSubType._(
      3137, _omitEnumNames ? '' : 'FITNESS_DARK_STYLE22_VITALITY');
  static const WidgetSubType FITNESS_LIGHT_STYLE11_STEP =
      WidgetSubType._(3346, _omitEnumNames ? '' : 'FITNESS_LIGHT_STYLE11_STEP');
  static const WidgetSubType FITNESS_LIGHT_STYLE11_CALORIE = WidgetSubType._(
      3347, _omitEnumNames ? '' : 'FITNESS_LIGHT_STYLE11_CALORIE');
  static const WidgetSubType FITNESS_LIGHT_STYLE11_STAND = WidgetSubType._(
      3348, _omitEnumNames ? '' : 'FITNESS_LIGHT_STYLE11_STAND');
  static const WidgetSubType FITNESS_LIGHT_STYLE11_ACTIVITY = WidgetSubType._(
      3349, _omitEnumNames ? '' : 'FITNESS_LIGHT_STYLE11_ACTIVITY');
  static const WidgetSubType FITNESS_LIGHT_STYLE12_STEP =
      WidgetSubType._(3362, _omitEnumNames ? '' : 'FITNESS_LIGHT_STYLE12_STEP');
  static const WidgetSubType FITNESS_LIGHT_STYLE12_CALORIE = WidgetSubType._(
      3363, _omitEnumNames ? '' : 'FITNESS_LIGHT_STYLE12_CALORIE');
  static const WidgetSubType FITNESS_LIGHT_STYLE12_STAND = WidgetSubType._(
      3364, _omitEnumNames ? '' : 'FITNESS_LIGHT_STYLE12_STAND');
  static const WidgetSubType FITNESS_LIGHT_STYLE12_ACTIVITY = WidgetSubType._(
      3365, _omitEnumNames ? '' : 'FITNESS_LIGHT_STYLE12_ACTIVITY');
  static const WidgetSubType FITNESS_DARK_SQUARE_VITALITY = WidgetSubType._(
      3201, _omitEnumNames ? '' : 'FITNESS_DARK_SQUARE_VITALITY');
  static const WidgetSubType FITNESS_DARK_RECT_VITALITY =
      WidgetSubType._(3217, _omitEnumNames ? '' : 'FITNESS_DARK_RECT_VITALITY');
  static const WidgetSubType FITNESS_DARK_RECT_STEP =
      WidgetSubType._(3218, _omitEnumNames ? '' : 'FITNESS_DARK_RECT_STEP');
  static const WidgetSubType FITNESS_DARK_RECT_CALORIE =
      WidgetSubType._(3219, _omitEnumNames ? '' : 'FITNESS_DARK_RECT_CALORIE');
  static const WidgetSubType FITNESS_DARK_RECT_STAND =
      WidgetSubType._(3220, _omitEnumNames ? '' : 'FITNESS_DARK_RECT_STAND');
  static const WidgetSubType FITNESS_DARK_RECT_ACTIVITY =
      WidgetSubType._(3221, _omitEnumNames ? '' : 'FITNESS_DARK_RECT_ACTIVITY');
  static const WidgetSubType FITNESS_LIGHT_RECT_STAND =
      WidgetSubType._(3476, _omitEnumNames ? '' : 'FITNESS_LIGHT_RECT_STAND');
  static const WidgetSubType HEART_RATE_DARK_STYLE11_CURRENT = WidgetSubType._(
      4113, _omitEnumNames ? '' : 'HEART_RATE_DARK_STYLE11_CURRENT');
  static const WidgetSubType HEART_RATE_DARK_STYLE12_SPLASH = WidgetSubType._(
      4130, _omitEnumNames ? '' : 'HEART_RATE_DARK_STYLE12_SPLASH');
  static const WidgetSubType HEART_RATE_DARK_STYLE12_LINE = WidgetSubType._(
      4131, _omitEnumNames ? '' : 'HEART_RATE_DARK_STYLE12_LINE');
  static const WidgetSubType HEART_RATE_DARK_STYLE21_CURRENT = WidgetSubType._(
      4145, _omitEnumNames ? '' : 'HEART_RATE_DARK_STYLE21_CURRENT');
  static const WidgetSubType HEART_RATE_DARK_STYLE22_SPLASH = WidgetSubType._(
      4162, _omitEnumNames ? '' : 'HEART_RATE_DARK_STYLE22_SPLASH');
  static const WidgetSubType HEART_RATE_DARK_STYLE32_CURRENT = WidgetSubType._(
      4177, _omitEnumNames ? '' : 'HEART_RATE_DARK_STYLE32_CURRENT');
  static const WidgetSubType HEART_RATE_LIGHT_STYLE11_CURRENT = WidgetSubType._(
      4369, _omitEnumNames ? '' : 'HEART_RATE_LIGHT_STYLE11_CURRENT');
  static const WidgetSubType HEART_RATE_LIGHT_STYLE12_SPLASH = WidgetSubType._(
      4386, _omitEnumNames ? '' : 'HEART_RATE_LIGHT_STYLE12_SPLASH');
  static const WidgetSubType HEART_RATE_LIGHT_STYLE12_LINE = WidgetSubType._(
      4387, _omitEnumNames ? '' : 'HEART_RATE_LIGHT_STYLE12_LINE');
  static const WidgetSubType HEART_RATE_LIGHT_STYLE22_SPLASH = WidgetSubType._(
      4418, _omitEnumNames ? '' : 'HEART_RATE_LIGHT_STYLE22_SPLASH');
  static const WidgetSubType HEART_RATE_DARK_RECT_SPLASH = WidgetSubType._(
      4242, _omitEnumNames ? '' : 'HEART_RATE_DARK_RECT_SPLASH');
  static const WidgetSubType HEART_RATE_LIGHT_RECT_SPLASH = WidgetSubType._(
      4498, _omitEnumNames ? '' : 'HEART_RATE_LIGHT_RECT_SPLASH');
  static const WidgetSubType BREATH_DARK_STYLE11_ENTRY =
      WidgetSubType._(5137, _omitEnumNames ? '' : 'BREATH_DARK_STYLE11_ENTRY');
  static const WidgetSubType BREATH_DARK_STYLE12_ENTRY =
      WidgetSubType._(5153, _omitEnumNames ? '' : 'BREATH_DARK_STYLE12_ENTRY');
  static const WidgetSubType BREATH_DARK_STYLE21_ENTRY =
      WidgetSubType._(5169, _omitEnumNames ? '' : 'BREATH_DARK_STYLE21_ENTRY');
  static const WidgetSubType BREATH_LIGHT_STYLE11_ENTRY =
      WidgetSubType._(5393, _omitEnumNames ? '' : 'BREATH_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType BREATH_LIGHT_STYLE12_ENTRY =
      WidgetSubType._(5409, _omitEnumNames ? '' : 'BREATH_LIGHT_STYLE12_ENTRY');
  static const WidgetSubType PRESSURE_DARK_STYLE11_CURRENT = WidgetSubType._(
      6161, _omitEnumNames ? '' : 'PRESSURE_DARK_STYLE11_CURRENT');
  static const WidgetSubType PRESSURE_DARK_STYLE12_SPLASH = WidgetSubType._(
      6178, _omitEnumNames ? '' : 'PRESSURE_DARK_STYLE12_SPLASH');
  static const WidgetSubType PRESSURE_DARK_STYLE21_CURRENT = WidgetSubType._(
      6193, _omitEnumNames ? '' : 'PRESSURE_DARK_STYLE21_CURRENT');
  static const WidgetSubType PRESSURE_DARK_STYLE22_CURRENT = WidgetSubType._(
      6209, _omitEnumNames ? '' : 'PRESSURE_DARK_STYLE22_CURRENT');
  static const WidgetSubType PRESSURE_DARK_STYLE32_CURRENT = WidgetSubType._(
      6225, _omitEnumNames ? '' : 'PRESSURE_DARK_STYLE32_CURRENT');
  static const WidgetSubType PRESSURE_LIGHT_STYLE11_CURRENT = WidgetSubType._(
      6417, _omitEnumNames ? '' : 'PRESSURE_LIGHT_STYLE11_CURRENT');
  static const WidgetSubType PRESSURE_LIGHT_STYLE12_SPLASH = WidgetSubType._(
      6434, _omitEnumNames ? '' : 'PRESSURE_LIGHT_STYLE12_SPLASH');
  static const WidgetSubType PRESSURE_DARK_RECT_SPLASH =
      WidgetSubType._(6290, _omitEnumNames ? '' : 'PRESSURE_DARK_RECT_SPLASH');
  static const WidgetSubType PRESSURE_DARK_RECT_LINE =
      WidgetSubType._(6291, _omitEnumNames ? '' : 'PRESSURE_DARK_RECT_LINE');
  static const WidgetSubType BLOOD_OXYGEN_DARK_STYLE11_CURRENT =
      WidgetSubType._(
          7185, _omitEnumNames ? '' : 'BLOOD_OXYGEN_DARK_STYLE11_CURRENT');
  static const WidgetSubType BLOOD_OXYGEN_DARK_STYLE12_SPLASH = WidgetSubType._(
      7202, _omitEnumNames ? '' : 'BLOOD_OXYGEN_DARK_STYLE12_SPLASH');
  static const WidgetSubType BLOOD_OXYGEN_DARK_STYLE21_CURRENT =
      WidgetSubType._(
          7217, _omitEnumNames ? '' : 'BLOOD_OXYGEN_DARK_STYLE21_CURRENT');
  static const WidgetSubType BLOOD_OXYGEN_DARK_STYLE22_SPLASH = WidgetSubType._(
      7234, _omitEnumNames ? '' : 'BLOOD_OXYGEN_DARK_STYLE22_SPLASH');
  static const WidgetSubType BLOOD_OXYGEN_DARK_STYLE32_CURRENT =
      WidgetSubType._(
          7249, _omitEnumNames ? '' : 'BLOOD_OXYGEN_DARK_STYLE32_CURRENT');
  static const WidgetSubType BLOOD_OXYGEN_LIGHT_STYLE11_CURRENT =
      WidgetSubType._(
          7441, _omitEnumNames ? '' : 'BLOOD_OXYGEN_LIGHT_STYLE11_CURRENT');
  static const WidgetSubType BLOOD_OXYGEN_LIGHT_STYLE12_SPLASH =
      WidgetSubType._(
          7458, _omitEnumNames ? '' : 'BLOOD_OXYGEN_LIGHT_STYLE12_SPLASH');
  static const WidgetSubType BLOOD_OXYGEN_LIGHT_STYLE22_SPLASH =
      WidgetSubType._(
          7490, _omitEnumNames ? '' : 'BLOOD_OXYGEN_LIGHT_STYLE22_SPLASH');
  static const WidgetSubType BLOOD_OXYGEN_DARK_RECT_SPLASH = WidgetSubType._(
      7314, _omitEnumNames ? '' : 'BLOOD_OXYGEN_DARK_RECT_SPLASH');
  static const WidgetSubType SLEEP_DARK_STYLE11_RESULT =
      WidgetSubType._(8209, _omitEnumNames ? '' : 'SLEEP_DARK_STYLE11_RESULT');
  static const WidgetSubType SLEEP_DARK_STYLE12_RESULT =
      WidgetSubType._(8225, _omitEnumNames ? '' : 'SLEEP_DARK_STYLE12_RESULT');
  static const WidgetSubType SLEEP_DARK_STYLE21_RESULT =
      WidgetSubType._(8241, _omitEnumNames ? '' : 'SLEEP_DARK_STYLE21_RESULT');
  static const WidgetSubType SLEEP_DARK_STYLE22_RESULT =
      WidgetSubType._(8257, _omitEnumNames ? '' : 'SLEEP_DARK_STYLE22_RESULT');
  static const WidgetSubType SLEEP_DARK_STYLE32_RESULT =
      WidgetSubType._(8273, _omitEnumNames ? '' : 'SLEEP_DARK_STYLE32_RESULT');
  static const WidgetSubType SLEEP_LIGHT_STYLE11_RESULT =
      WidgetSubType._(8465, _omitEnumNames ? '' : 'SLEEP_LIGHT_STYLE11_RESULT');
  static const WidgetSubType SLEEP_LIGHT_STYLE12_RESULT =
      WidgetSubType._(8481, _omitEnumNames ? '' : 'SLEEP_LIGHT_STYLE12_RESULT');
  static const WidgetSubType SLEEP_LIGHT_STYLE22_RESULT =
      WidgetSubType._(8513, _omitEnumNames ? '' : 'SLEEP_LIGHT_STYLE22_RESULT');
  static const WidgetSubType SLEEP_DARK_RECT_RESULT =
      WidgetSubType._(8337, _omitEnumNames ? '' : 'SLEEP_DARK_RECT_RESULT');
  static const WidgetSubType SLEEP_DARK_RECT_LONG =
      WidgetSubType._(8338, _omitEnumNames ? '' : 'SLEEP_DARK_RECT_LONG');
  static const WidgetSubType SLEEP_DARK_RECT_STRUCTURE =
      WidgetSubType._(8339, _omitEnumNames ? '' : 'SLEEP_DARK_RECT_STRUCTURE');
  static const WidgetSubType WOMEN_HEALTH_DARK_STYLE12_DAYS = WidgetSubType._(
      9249, _omitEnumNames ? '' : 'WOMEN_HEALTH_DARK_STYLE12_DAYS');
  static const WidgetSubType WOMEN_HEALTH_DARK_STYLE21_DATA = WidgetSubType._(
      9266, _omitEnumNames ? '' : 'WOMEN_HEALTH_DARK_STYLE21_DATA');
  static const WidgetSubType WOMEN_HEALTH_DARK_STYLE22_DAYS = WidgetSubType._(
      9281, _omitEnumNames ? '' : 'WOMEN_HEALTH_DARK_STYLE22_DAYS');
  static const WidgetSubType WOMEN_HEALTH_DARK_STYLE32_DAYS = WidgetSubType._(
      9297, _omitEnumNames ? '' : 'WOMEN_HEALTH_DARK_STYLE32_DAYS');
  static const WidgetSubType WOMEN_HEALTH_LIGHT_STYLE12_DAYS = WidgetSubType._(
      9505, _omitEnumNames ? '' : 'WOMEN_HEALTH_LIGHT_STYLE12_DAYS');
  static const WidgetSubType WEATHER_DARK_STYLE11_BASIC = WidgetSubType._(
      10257, _omitEnumNames ? '' : 'WEATHER_DARK_STYLE11_BASIC');
  static const WidgetSubType WEATHER_DARK_STYLE12_BASIC = WidgetSubType._(
      10273, _omitEnumNames ? '' : 'WEATHER_DARK_STYLE12_BASIC');
  static const WidgetSubType WEATHER_DARK_STYLE21_BASIC = WidgetSubType._(
      10289, _omitEnumNames ? '' : 'WEATHER_DARK_STYLE21_BASIC');
  static const WidgetSubType WEATHER_DARK_STYLE22_BASIC = WidgetSubType._(
      10305, _omitEnumNames ? '' : 'WEATHER_DARK_STYLE22_BASIC');
  static const WidgetSubType WEATHER_DARK_STYLE22_HOURLY = WidgetSubType._(
      10306, _omitEnumNames ? '' : 'WEATHER_DARK_STYLE22_HOURLY');
  static const WidgetSubType WEATHER_LIGHT_STYLE11_BASIC = WidgetSubType._(
      10513, _omitEnumNames ? '' : 'WEATHER_LIGHT_STYLE11_BASIC');
  static const WidgetSubType WEATHER_LIGHT_STYLE12_BASIC = WidgetSubType._(
      10529, _omitEnumNames ? '' : 'WEATHER_LIGHT_STYLE12_BASIC');
  static const WidgetSubType WEATHER_DARK_RECT_WEEK =
      WidgetSubType._(10386, _omitEnumNames ? '' : 'WEATHER_DARK_RECT_WEEK');
  static const WidgetSubType WEATHER_LIGHT_RECT_WEEK =
      WidgetSubType._(10642, _omitEnumNames ? '' : 'WEATHER_LIGHT_RECT_WEEK');
  static const WidgetSubType WEATHER_DARK_RECT_HOURLY =
      WidgetSubType._(10387, _omitEnumNames ? '' : 'WEATHER_DARK_RECT_HOURLY');
  static const WidgetSubType WEATHER_LIGHT_RECT_HOURLY =
      WidgetSubType._(10643, _omitEnumNames ? '' : 'WEATHER_LIGHT_RECT_HOURLY');
  static const WidgetSubType WEATHER_DARK_RECT_SUN =
      WidgetSubType._(10388, _omitEnumNames ? '' : 'WEATHER_DARK_RECT_SUN');
  static const WidgetSubType WEATHER_LIGHT_RECT_SUN =
      WidgetSubType._(10644, _omitEnumNames ? '' : 'WEATHER_LIGHT_RECT_SUN');
  static const WidgetSubType WEATHER_DARK_RECT_HOURLY_2 = WidgetSubType._(
      10389, _omitEnumNames ? '' : 'WEATHER_DARK_RECT_HOURLY_2');
  static const WidgetSubType WEATHER_DARK_RECT_HOURLY_3 = WidgetSubType._(
      10390, _omitEnumNames ? '' : 'WEATHER_DARK_RECT_HOURLY_3');
  static const WidgetSubType WEATHER_DARK_RECT_HOURLY_4 = WidgetSubType._(
      10391, _omitEnumNames ? '' : 'WEATHER_DARK_RECT_HOURLY_4');
  static const WidgetSubType VOICE_ASSISTANT_DARK_STYLE21_XIAOAI =
      WidgetSubType._(
          11313, _omitEnumNames ? '' : 'VOICE_ASSISTANT_DARK_STYLE21_XIAOAI');
  static const WidgetSubType VOICE_ASSISTANT_DARK_STYLE21_ALEXA =
      WidgetSubType._(
          11314, _omitEnumNames ? '' : 'VOICE_ASSISTANT_DARK_STYLE21_ALEXA');
  static const WidgetSubType VOICE_ASSISTANT_DARK_STYLE22_XIAOAI =
      WidgetSubType._(
          11329, _omitEnumNames ? '' : 'VOICE_ASSISTANT_DARK_STYLE22_XIAOAI');
  static const WidgetSubType VOICE_ASSISTANT_DARK_STYLE22_ALEXA =
      WidgetSubType._(
          11330, _omitEnumNames ? '' : 'VOICE_ASSISTANT_DARK_STYLE22_ALEXA');
  static const WidgetSubType VOICE_ASSISTANT_DARK_STYLE32_XIAOAI =
      WidgetSubType._(
          11345, _omitEnumNames ? '' : 'VOICE_ASSISTANT_DARK_STYLE32_XIAOAI');
  static const WidgetSubType VOICE_ASSISTANT_DARK_STYLE32_ALEXA =
      WidgetSubType._(
          11346, _omitEnumNames ? '' : 'VOICE_ASSISTANT_DARK_STYLE32_ALEXA');
  static const WidgetSubType ALIPAY_DARK_STYLE11_ENTRY =
      WidgetSubType._(12305, _omitEnumNames ? '' : 'ALIPAY_DARK_STYLE11_ENTRY');
  static const WidgetSubType ALIPAY_DARK_STYLE21_CODE =
      WidgetSubType._(12338, _omitEnumNames ? '' : 'ALIPAY_DARK_STYLE21_CODE');
  static const WidgetSubType ALIPAY_DARK_STYLE22_CODE =
      WidgetSubType._(12354, _omitEnumNames ? '' : 'ALIPAY_DARK_STYLE22_CODE');
  static const WidgetSubType ALIPAY_DARK_STYLE32_CODE =
      WidgetSubType._(12370, _omitEnumNames ? '' : 'ALIPAY_DARK_STYLE32_CODE');
  static const WidgetSubType ALIPAY_LIGHT_STYLE11_ENTRY = WidgetSubType._(
      12561, _omitEnumNames ? '' : 'ALIPAY_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType ALIPAY_LIGHT_STYLE21_CODE =
      WidgetSubType._(12594, _omitEnumNames ? '' : 'ALIPAY_LIGHT_STYLE21_CODE');
  static const WidgetSubType ALIPAY_LIGHT_STYLE22_CODE =
      WidgetSubType._(12610, _omitEnumNames ? '' : 'ALIPAY_LIGHT_STYLE22_CODE');
  static const WidgetSubType ALIPAY_LIGHT_STYLE32_CODE =
      WidgetSubType._(12626, _omitEnumNames ? '' : 'ALIPAY_LIGHT_STYLE32_CODE');
  static const WidgetSubType WECHAT_PAY_DARK_STYLE11_ENTRY = WidgetSubType._(
      13329, _omitEnumNames ? '' : 'WECHAT_PAY_DARK_STYLE11_ENTRY');
  static const WidgetSubType WECHAT_PAY_DARK_STYLE21_CODE = WidgetSubType._(
      13362, _omitEnumNames ? '' : 'WECHAT_PAY_DARK_STYLE21_CODE');
  static const WidgetSubType WECHAT_PAY_DARK_STYLE22_CODE = WidgetSubType._(
      13378, _omitEnumNames ? '' : 'WECHAT_PAY_DARK_STYLE22_CODE');
  static const WidgetSubType WECHAT_PAY_DARK_STYLE32_CODE = WidgetSubType._(
      13394, _omitEnumNames ? '' : 'WECHAT_PAY_DARK_STYLE32_CODE');
  static const WidgetSubType WECHAT_PAY_LIGHT_STYLE11_ENTRY = WidgetSubType._(
      13585, _omitEnumNames ? '' : 'WECHAT_PAY_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType WECHAT_PAY_LIGHT_STYLE21_CODE = WidgetSubType._(
      13618, _omitEnumNames ? '' : 'WECHAT_PAY_LIGHT_STYLE21_CODE');
  static const WidgetSubType WECHAT_PAY_LIGHT_STYLE22_CODE = WidgetSubType._(
      13634, _omitEnumNames ? '' : 'WECHAT_PAY_LIGHT_STYLE22_CODE');
  static const WidgetSubType WECHAT_PAY_LIGHT_STYLE32_CODE = WidgetSubType._(
      13650, _omitEnumNames ? '' : 'WECHAT_PAY_LIGHT_STYLE32_CODE');
  static const WidgetSubType MUSIC_DARK_STYLE11_CONTROL = WidgetSubType._(
      14353, _omitEnumNames ? '' : 'MUSIC_DARK_STYLE11_CONTROL');
  static const WidgetSubType MUSIC_DARK_STYLE12_CONTROL = WidgetSubType._(
      14369, _omitEnumNames ? '' : 'MUSIC_DARK_STYLE12_CONTROL');
  static const WidgetSubType MUSIC_DARK_STYLE21_CONTROL = WidgetSubType._(
      14385, _omitEnumNames ? '' : 'MUSIC_DARK_STYLE21_CONTROL');
  static const WidgetSubType MUSIC_DARK_STYLE22_CONTROL = WidgetSubType._(
      14401, _omitEnumNames ? '' : 'MUSIC_DARK_STYLE22_CONTROL');
  static const WidgetSubType MUSIC_LIGHT_STYLE11_CONTROL = WidgetSubType._(
      14609, _omitEnumNames ? '' : 'MUSIC_LIGHT_STYLE11_CONTROL');
  static const WidgetSubType MUSIC_LIGHT_STYLE12_CONTROL = WidgetSubType._(
      14625, _omitEnumNames ? '' : 'MUSIC_LIGHT_STYLE12_CONTROL');
  static const WidgetSubType MUSIC_LIGHT_STYLE22_CONTROL = WidgetSubType._(
      14657, _omitEnumNames ? '' : 'MUSIC_LIGHT_STYLE22_CONTROL');
  static const WidgetSubType CARD_DARK_STYLE21_SWITCH_CARD = WidgetSubType._(
      15409, _omitEnumNames ? '' : 'CARD_DARK_STYLE21_SWITCH_CARD');
  static const WidgetSubType CARD_DARK_STYLE22_SWITCH_CARD = WidgetSubType._(
      15425, _omitEnumNames ? '' : 'CARD_DARK_STYLE22_SWITCH_CARD');
  static const WidgetSubType CARD_DARK_STYLE32_SWITCH_CARD = WidgetSubType._(
      15441, _omitEnumNames ? '' : 'CARD_DARK_STYLE32_SWITCH_CARD');
  static const WidgetSubType STOPWATCH_DARK_STYLE11_ENTRY = WidgetSubType._(
      16401, _omitEnumNames ? '' : 'STOPWATCH_DARK_STYLE11_ENTRY');
  static const WidgetSubType STOPWATCH_DARK_STYLE12_CONTROL = WidgetSubType._(
      16418, _omitEnumNames ? '' : 'STOPWATCH_DARK_STYLE12_CONTROL');
  static const WidgetSubType STOPWATCH_LIGHT_STYLE11_ENTRY = WidgetSubType._(
      16657, _omitEnumNames ? '' : 'STOPWATCH_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType STOPWATCH_LIGHT_STYLE12_CONTROL = WidgetSubType._(
      16674, _omitEnumNames ? '' : 'STOPWATCH_LIGHT_STYLE12_CONTROL');
  static const WidgetSubType TIME_KEEPING_DARK_STYLE11_ENTRY = WidgetSubType._(
      17425, _omitEnumNames ? '' : 'TIME_KEEPING_DARK_STYLE11_ENTRY');
  static const WidgetSubType TIME_KEEPING_DARK_STYLE12_CONTROL =
      WidgetSubType._(
          17442, _omitEnumNames ? '' : 'TIME_KEEPING_DARK_STYLE12_CONTROL');
  static const WidgetSubType TIME_KEEPING_LIGHT_STYLE11_ENTRY = WidgetSubType._(
      17681, _omitEnumNames ? '' : 'TIME_KEEPING_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType TIME_KEEPING_LIGHT_STYLE12_CONTROL =
      WidgetSubType._(
          17698, _omitEnumNames ? '' : 'TIME_KEEPING_LIGHT_STYLE12_CONTROL');
  static const WidgetSubType TIME_KEEPING_DARK_SQUARE_ENTRY = WidgetSubType._(
      17537, _omitEnumNames ? '' : 'TIME_KEEPING_DARK_SQUARE_ENTRY');
  static const WidgetSubType CALENDAR_DARK_STYLE11_ENTRY = WidgetSubType._(
      18450, _omitEnumNames ? '' : 'CALENDAR_DARK_STYLE11_ENTRY');
  static const WidgetSubType CALENDAR_DARK_STYLE12_NEXT = WidgetSubType._(
      18465, _omitEnumNames ? '' : 'CALENDAR_DARK_STYLE12_NEXT');
  static const WidgetSubType CALENDAR_DARK_STYLE21_NEXT = WidgetSubType._(
      18481, _omitEnumNames ? '' : 'CALENDAR_DARK_STYLE21_NEXT');
  static const WidgetSubType CALENDAR_DARK_STYLE22_NEXT = WidgetSubType._(
      18497, _omitEnumNames ? '' : 'CALENDAR_DARK_STYLE22_NEXT');
  static const WidgetSubType CALENDAR_LIGHT_STYLE11_ENTRY = WidgetSubType._(
      18706, _omitEnumNames ? '' : 'CALENDAR_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType CALENDAR_DARK_RECT_NEXT =
      WidgetSubType._(18577, _omitEnumNames ? '' : 'CALENDAR_DARK_RECT_NEXT');
  static const WidgetSubType CALENDAR_LIGHT_RECT_NEXT =
      WidgetSubType._(18833, _omitEnumNames ? '' : 'CALENDAR_LIGHT_RECT_NEXT');
  static const WidgetSubType CALENDAR_DARK_CIRCLE_DAY =
      WidgetSubType._(18594, _omitEnumNames ? '' : 'CALENDAR_DARK_CIRCLE_DAY');
  static const WidgetSubType CALENDAR_LIGHT_SQUARE_NEXT = WidgetSubType._(
      18817, _omitEnumNames ? '' : 'CALENDAR_LIGHT_SQUARE_NEXT');
  static const WidgetSubType TEMPERATURE_DARK_STYLE11_ENTRY = WidgetSubType._(
      19473, _omitEnumNames ? '' : 'TEMPERATURE_DARK_STYLE11_ENTRY');
  static const WidgetSubType TEMPERATURE_LIGHT_STYLE11_ENTRY = WidgetSubType._(
      19729, _omitEnumNames ? '' : 'TEMPERATURE_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType BLOOD_PRESSURE_DARK_STYLE11_ENTRY =
      WidgetSubType._(
          20497, _omitEnumNames ? '' : 'BLOOD_PRESSURE_DARK_STYLE11_ENTRY');
  static const WidgetSubType BLOOD_PRESSURE_DARK_STYLE12_RECENT =
      WidgetSubType._(
          20514, _omitEnumNames ? '' : 'BLOOD_PRESSURE_DARK_STYLE12_RECENT');
  static const WidgetSubType BLOOD_PRESSURE_LIGHT_STYLE11_ENTRY =
      WidgetSubType._(
          20753, _omitEnumNames ? '' : 'BLOOD_PRESSURE_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType BLOOD_PRESSURE_LIGHT_STYLE12_RECENT =
      WidgetSubType._(
          20770, _omitEnumNames ? '' : 'BLOOD_PRESSURE_LIGHT_STYLE12_RECENT');
  static const WidgetSubType ECG_DARK_STYLE11_ENTRY =
      WidgetSubType._(21521, _omitEnumNames ? '' : 'ECG_DARK_STYLE11_ENTRY');
  static const WidgetSubType ECG_DARK_STYLE12_RECENT =
      WidgetSubType._(21538, _omitEnumNames ? '' : 'ECG_DARK_STYLE12_RECENT');
  static const WidgetSubType ECG_LIGHT_STYLE11_ENTRY =
      WidgetSubType._(21777, _omitEnumNames ? '' : 'ECG_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType ECG_LIGHT_STYLE12_RECENT =
      WidgetSubType._(21794, _omitEnumNames ? '' : 'ECG_LIGHT_STYLE12_RECENT');
  static const WidgetSubType EVENT_DARK_STYLE12_NEXT =
      WidgetSubType._(22561, _omitEnumNames ? '' : 'EVENT_DARK_STYLE12_NEXT');
  static const WidgetSubType EVENT_DARK_STYLE21_NEXT =
      WidgetSubType._(22577, _omitEnumNames ? '' : 'EVENT_DARK_STYLE21_NEXT');
  static const WidgetSubType MIHOME_DARK_STYLE11_ENTRY =
      WidgetSubType._(23569, _omitEnumNames ? '' : 'MIHOME_DARK_STYLE11_ENTRY');
  static const WidgetSubType MIHOME_LIGHT_STYLE11_ENTRY = WidgetSubType._(
      23825, _omitEnumNames ? '' : 'MIHOME_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType ACTIVITY_DARK_STYLE11_CURRENT = WidgetSubType._(
      24593, _omitEnumNames ? '' : 'ACTIVITY_DARK_STYLE11_CURRENT');
  static const WidgetSubType ACTIVITY_DARK_STYLE12_CURRENT = WidgetSubType._(
      24609, _omitEnumNames ? '' : 'ACTIVITY_DARK_STYLE12_CURRENT');
  static const WidgetSubType ACTIVITY_DARK_STYLE21_CURRENT = WidgetSubType._(
      24625, _omitEnumNames ? '' : 'ACTIVITY_DARK_STYLE21_CURRENT');
  static const WidgetSubType ACTIVITY_DARK_STYLE22_CURRENT = WidgetSubType._(
      24641, _omitEnumNames ? '' : 'ACTIVITY_DARK_STYLE22_CURRENT');
  static const WidgetSubType ACTIVITY_DARK_STYLE32_CURRENT = WidgetSubType._(
      24657, _omitEnumNames ? '' : 'ACTIVITY_DARK_STYLE32_CURRENT');
  static const WidgetSubType ACTIVITY_LIGHT_STYLE11_CURRENT = WidgetSubType._(
      24849, _omitEnumNames ? '' : 'ACTIVITY_LIGHT_STYLE11_CURRENT');
  static const WidgetSubType ACTIVITY_LIGHT_STYLE12_CURRENT = WidgetSubType._(
      24865, _omitEnumNames ? '' : 'ACTIVITY_LIGHT_STYLE12_CURRENT');
  static const WidgetSubType ACTIVITY_LIGHT_STYLE21_CURRENT = WidgetSubType._(
      24881, _omitEnumNames ? '' : 'ACTIVITY_LIGHT_STYLE21_CURRENT');
  static const WidgetSubType ACTIVITY_LIGHT_STYLE22_CURRENT = WidgetSubType._(
      24897, _omitEnumNames ? '' : 'ACTIVITY_LIGHT_STYLE22_CURRENT');
  static const WidgetSubType ACTIVITY_LIGHT_STYLE32_CURRENT = WidgetSubType._(
      24913, _omitEnumNames ? '' : 'ACTIVITY_LIGHT_STYLE32_CURRENT');
  static const WidgetSubType CLOCK_DARK_STYLE11_ENTRY =
      WidgetSubType._(25617, _omitEnumNames ? '' : 'CLOCK_DARK_STYLE11_ENTRY');
  static const WidgetSubType CLOCK_LIGHT_STYLE11_ENTRY =
      WidgetSubType._(25873, _omitEnumNames ? '' : 'CLOCK_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType SHARE_DARK_STYLE11_ENTRY =
      WidgetSubType._(26641, _omitEnumNames ? '' : 'SHARE_DARK_STYLE11_ENTRY');
  static const WidgetSubType SHARE_DARK_STYLE12_ENTRY =
      WidgetSubType._(26657, _omitEnumNames ? '' : 'SHARE_DARK_STYLE12_ENTRY');
  static const WidgetSubType TODO_LIST_DARK_STYLE11_ENTRY = WidgetSubType._(
      27665, _omitEnumNames ? '' : 'TODO_LIST_DARK_STYLE11_ENTRY');
  static const WidgetSubType TODO_LIST_DARK_STYLE12_NEXT = WidgetSubType._(
      27682, _omitEnumNames ? '' : 'TODO_LIST_DARK_STYLE12_NEXT');
  static const WidgetSubType TODO_LIST_DARK_STYLE21_NEXT = WidgetSubType._(
      27698, _omitEnumNames ? '' : 'TODO_LIST_DARK_STYLE21_NEXT');
  static const WidgetSubType TODO_LIST_LIGHT_STYLE11_ENTRY = WidgetSubType._(
      27921, _omitEnumNames ? '' : 'TODO_LIST_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType PHONE_DARK_STYLE11_ENTRY =
      WidgetSubType._(28689, _omitEnumNames ? '' : 'PHONE_DARK_STYLE11_ENTRY');
  static const WidgetSubType PHONE_LIGHT_STYLE11_ENTRY =
      WidgetSubType._(28945, _omitEnumNames ? '' : 'PHONE_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType LACTATE_THRESHOLD_DARK_STYLE11_ENTRY =
      WidgetSubType._(
          29713, _omitEnumNames ? '' : 'LACTATE_THRESHOLD_DARK_STYLE11_ENTRY');
  static const WidgetSubType LACTATE_THRESHOLD_LIGHT_STYLE11_ENTRY =
      WidgetSubType._(
          29969, _omitEnumNames ? '' : 'LACTATE_THRESHOLD_LIGHT_STYLE11_ENTRY');
  static const WidgetSubType COMPASS_DARK_STYLE11_ENTRY = WidgetSubType._(
      30737, _omitEnumNames ? '' : 'COMPASS_DARK_STYLE11_ENTRY');
  static const WidgetSubType COMPASS_LIGHT_STYLE11_ENTRY = WidgetSubType._(
      30993, _omitEnumNames ? '' : 'COMPASS_LIGHT_STYLE11_ENTRY');

  static const $core.List<WidgetSubType> values = <WidgetSubType>[
    SYSTEM_DARK_STYLE11_BATTERY,
    SYSTEM_DARK_STYLE11_FLASHLIGHT,
    SYSTEM_DARK_STYLE21_CONTROL,
    APP_LIST_DARK_STYLE11_ENTRY,
    SPORT_LIST_DARK_STYLE11_START,
    SPORT_LIST_DARK_STYLE12_START,
    SPORT_LIST_LIGHT_STYLE11_START,
    SPORT_LIST_LIGHT_STYLE12_START,
    FITNESS_DARK_STYLE11_VITALITY,
    FITNESS_DARK_STYLE11_STEP,
    FITNESS_DARK_STYLE11_CALORIE,
    FITNESS_DARK_STYLE11_STAND,
    FITNESS_DARK_STYLE11_ACTIVITY,
    FITNESS_DARK_STYLE12_VITALITY,
    FITNESS_DARK_STYLE12_STEP,
    FITNESS_DARK_STYLE12_CALORIE,
    FITNESS_DARK_STYLE12_STAND,
    FITNESS_DARK_STYLE12_ACTIVITY,
    FITNESS_DARK_STYLE21_VITALITY,
    FITNESS_DARK_STYLE22_VITALITY,
    FITNESS_LIGHT_STYLE11_STEP,
    FITNESS_LIGHT_STYLE11_CALORIE,
    FITNESS_LIGHT_STYLE11_STAND,
    FITNESS_LIGHT_STYLE11_ACTIVITY,
    FITNESS_LIGHT_STYLE12_STEP,
    FITNESS_LIGHT_STYLE12_CALORIE,
    FITNESS_LIGHT_STYLE12_STAND,
    FITNESS_LIGHT_STYLE12_ACTIVITY,
    FITNESS_DARK_SQUARE_VITALITY,
    FITNESS_DARK_RECT_VITALITY,
    FITNESS_DARK_RECT_STEP,
    FITNESS_DARK_RECT_CALORIE,
    FITNESS_DARK_RECT_STAND,
    FITNESS_DARK_RECT_ACTIVITY,
    FITNESS_LIGHT_RECT_STAND,
    HEART_RATE_DARK_STYLE11_CURRENT,
    HEART_RATE_DARK_STYLE12_SPLASH,
    HEART_RATE_DARK_STYLE12_LINE,
    HEART_RATE_DARK_STYLE21_CURRENT,
    HEART_RATE_DARK_STYLE22_SPLASH,
    HEART_RATE_DARK_STYLE32_CURRENT,
    HEART_RATE_LIGHT_STYLE11_CURRENT,
    HEART_RATE_LIGHT_STYLE12_SPLASH,
    HEART_RATE_LIGHT_STYLE12_LINE,
    HEART_RATE_LIGHT_STYLE22_SPLASH,
    HEART_RATE_DARK_RECT_SPLASH,
    HEART_RATE_LIGHT_RECT_SPLASH,
    BREATH_DARK_STYLE11_ENTRY,
    BREATH_DARK_STYLE12_ENTRY,
    BREATH_DARK_STYLE21_ENTRY,
    BREATH_LIGHT_STYLE11_ENTRY,
    BREATH_LIGHT_STYLE12_ENTRY,
    PRESSURE_DARK_STYLE11_CURRENT,
    PRESSURE_DARK_STYLE12_SPLASH,
    PRESSURE_DARK_STYLE21_CURRENT,
    PRESSURE_DARK_STYLE22_CURRENT,
    PRESSURE_DARK_STYLE32_CURRENT,
    PRESSURE_LIGHT_STYLE11_CURRENT,
    PRESSURE_LIGHT_STYLE12_SPLASH,
    PRESSURE_DARK_RECT_SPLASH,
    PRESSURE_DARK_RECT_LINE,
    BLOOD_OXYGEN_DARK_STYLE11_CURRENT,
    BLOOD_OXYGEN_DARK_STYLE12_SPLASH,
    BLOOD_OXYGEN_DARK_STYLE21_CURRENT,
    BLOOD_OXYGEN_DARK_STYLE22_SPLASH,
    BLOOD_OXYGEN_DARK_STYLE32_CURRENT,
    BLOOD_OXYGEN_LIGHT_STYLE11_CURRENT,
    BLOOD_OXYGEN_LIGHT_STYLE12_SPLASH,
    BLOOD_OXYGEN_LIGHT_STYLE22_SPLASH,
    BLOOD_OXYGEN_DARK_RECT_SPLASH,
    SLEEP_DARK_STYLE11_RESULT,
    SLEEP_DARK_STYLE12_RESULT,
    SLEEP_DARK_STYLE21_RESULT,
    SLEEP_DARK_STYLE22_RESULT,
    SLEEP_DARK_STYLE32_RESULT,
    SLEEP_LIGHT_STYLE11_RESULT,
    SLEEP_LIGHT_STYLE12_RESULT,
    SLEEP_LIGHT_STYLE22_RESULT,
    SLEEP_DARK_RECT_RESULT,
    SLEEP_DARK_RECT_LONG,
    SLEEP_DARK_RECT_STRUCTURE,
    WOMEN_HEALTH_DARK_STYLE12_DAYS,
    WOMEN_HEALTH_DARK_STYLE21_DATA,
    WOMEN_HEALTH_DARK_STYLE22_DAYS,
    WOMEN_HEALTH_DARK_STYLE32_DAYS,
    WOMEN_HEALTH_LIGHT_STYLE12_DAYS,
    WEATHER_DARK_STYLE11_BASIC,
    WEATHER_DARK_STYLE12_BASIC,
    WEATHER_DARK_STYLE21_BASIC,
    WEATHER_DARK_STYLE22_BASIC,
    WEATHER_DARK_STYLE22_HOURLY,
    WEATHER_LIGHT_STYLE11_BASIC,
    WEATHER_LIGHT_STYLE12_BASIC,
    WEATHER_DARK_RECT_WEEK,
    WEATHER_LIGHT_RECT_WEEK,
    WEATHER_DARK_RECT_HOURLY,
    WEATHER_LIGHT_RECT_HOURLY,
    WEATHER_DARK_RECT_SUN,
    WEATHER_LIGHT_RECT_SUN,
    WEATHER_DARK_RECT_HOURLY_2,
    WEATHER_DARK_RECT_HOURLY_3,
    WEATHER_DARK_RECT_HOURLY_4,
    VOICE_ASSISTANT_DARK_STYLE21_XIAOAI,
    VOICE_ASSISTANT_DARK_STYLE21_ALEXA,
    VOICE_ASSISTANT_DARK_STYLE22_XIAOAI,
    VOICE_ASSISTANT_DARK_STYLE22_ALEXA,
    VOICE_ASSISTANT_DARK_STYLE32_XIAOAI,
    VOICE_ASSISTANT_DARK_STYLE32_ALEXA,
    ALIPAY_DARK_STYLE11_ENTRY,
    ALIPAY_DARK_STYLE21_CODE,
    ALIPAY_DARK_STYLE22_CODE,
    ALIPAY_DARK_STYLE32_CODE,
    ALIPAY_LIGHT_STYLE11_ENTRY,
    ALIPAY_LIGHT_STYLE21_CODE,
    ALIPAY_LIGHT_STYLE22_CODE,
    ALIPAY_LIGHT_STYLE32_CODE,
    WECHAT_PAY_DARK_STYLE11_ENTRY,
    WECHAT_PAY_DARK_STYLE21_CODE,
    WECHAT_PAY_DARK_STYLE22_CODE,
    WECHAT_PAY_DARK_STYLE32_CODE,
    WECHAT_PAY_LIGHT_STYLE11_ENTRY,
    WECHAT_PAY_LIGHT_STYLE21_CODE,
    WECHAT_PAY_LIGHT_STYLE22_CODE,
    WECHAT_PAY_LIGHT_STYLE32_CODE,
    MUSIC_DARK_STYLE11_CONTROL,
    MUSIC_DARK_STYLE12_CONTROL,
    MUSIC_DARK_STYLE21_CONTROL,
    MUSIC_DARK_STYLE22_CONTROL,
    MUSIC_LIGHT_STYLE11_CONTROL,
    MUSIC_LIGHT_STYLE12_CONTROL,
    MUSIC_LIGHT_STYLE22_CONTROL,
    CARD_DARK_STYLE21_SWITCH_CARD,
    CARD_DARK_STYLE22_SWITCH_CARD,
    CARD_DARK_STYLE32_SWITCH_CARD,
    STOPWATCH_DARK_STYLE11_ENTRY,
    STOPWATCH_DARK_STYLE12_CONTROL,
    STOPWATCH_LIGHT_STYLE11_ENTRY,
    STOPWATCH_LIGHT_STYLE12_CONTROL,
    TIME_KEEPING_DARK_STYLE11_ENTRY,
    TIME_KEEPING_DARK_STYLE12_CONTROL,
    TIME_KEEPING_LIGHT_STYLE11_ENTRY,
    TIME_KEEPING_LIGHT_STYLE12_CONTROL,
    TIME_KEEPING_DARK_SQUARE_ENTRY,
    CALENDAR_DARK_STYLE11_ENTRY,
    CALENDAR_DARK_STYLE12_NEXT,
    CALENDAR_DARK_STYLE21_NEXT,
    CALENDAR_DARK_STYLE22_NEXT,
    CALENDAR_LIGHT_STYLE11_ENTRY,
    CALENDAR_DARK_RECT_NEXT,
    CALENDAR_LIGHT_RECT_NEXT,
    CALENDAR_DARK_CIRCLE_DAY,
    CALENDAR_LIGHT_SQUARE_NEXT,
    TEMPERATURE_DARK_STYLE11_ENTRY,
    TEMPERATURE_LIGHT_STYLE11_ENTRY,
    BLOOD_PRESSURE_DARK_STYLE11_ENTRY,
    BLOOD_PRESSURE_DARK_STYLE12_RECENT,
    BLOOD_PRESSURE_LIGHT_STYLE11_ENTRY,
    BLOOD_PRESSURE_LIGHT_STYLE12_RECENT,
    ECG_DARK_STYLE11_ENTRY,
    ECG_DARK_STYLE12_RECENT,
    ECG_LIGHT_STYLE11_ENTRY,
    ECG_LIGHT_STYLE12_RECENT,
    EVENT_DARK_STYLE12_NEXT,
    EVENT_DARK_STYLE21_NEXT,
    MIHOME_DARK_STYLE11_ENTRY,
    MIHOME_LIGHT_STYLE11_ENTRY,
    ACTIVITY_DARK_STYLE11_CURRENT,
    ACTIVITY_DARK_STYLE12_CURRENT,
    ACTIVITY_DARK_STYLE21_CURRENT,
    ACTIVITY_DARK_STYLE22_CURRENT,
    ACTIVITY_DARK_STYLE32_CURRENT,
    ACTIVITY_LIGHT_STYLE11_CURRENT,
    ACTIVITY_LIGHT_STYLE12_CURRENT,
    ACTIVITY_LIGHT_STYLE21_CURRENT,
    ACTIVITY_LIGHT_STYLE22_CURRENT,
    ACTIVITY_LIGHT_STYLE32_CURRENT,
    CLOCK_DARK_STYLE11_ENTRY,
    CLOCK_LIGHT_STYLE11_ENTRY,
    SHARE_DARK_STYLE11_ENTRY,
    SHARE_DARK_STYLE12_ENTRY,
    TODO_LIST_DARK_STYLE11_ENTRY,
    TODO_LIST_DARK_STYLE12_NEXT,
    TODO_LIST_DARK_STYLE21_NEXT,
    TODO_LIST_LIGHT_STYLE11_ENTRY,
    PHONE_DARK_STYLE11_ENTRY,
    PHONE_LIGHT_STYLE11_ENTRY,
    LACTATE_THRESHOLD_DARK_STYLE11_ENTRY,
    LACTATE_THRESHOLD_LIGHT_STYLE11_ENTRY,
    COMPASS_DARK_STYLE11_ENTRY,
    COMPASS_LIGHT_STYLE11_ENTRY,
  ];

  static final $core.Map<$core.int, WidgetSubType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static WidgetSubType? valueOf($core.int value) => _byValue[value];

  const WidgetSubType._(super.value, super.name);
}

class ImageFormat extends $pb.ProtobufEnum {
  static const ImageFormat RGB_565 =
      ImageFormat._(0, _omitEnumNames ? '' : 'RGB_565');
  static const ImageFormat RGB_565_SWAP =
      ImageFormat._(1, _omitEnumNames ? '' : 'RGB_565_SWAP');
  static const ImageFormat ARGB_8888_LE =
      ImageFormat._(2, _omitEnumNames ? '' : 'ARGB_8888_LE');
  static const ImageFormat ARGB_8888 =
      ImageFormat._(3, _omitEnumNames ? '' : 'ARGB_8888');
  static const ImageFormat RGB888 =
      ImageFormat._(4, _omitEnumNames ? '' : 'RGB888');
  static const ImageFormat ARGB_8565_LE =
      ImageFormat._(7, _omitEnumNames ? '' : 'ARGB_8565_LE');
  static const ImageFormat ARGB_8565 =
      ImageFormat._(8, _omitEnumNames ? '' : 'ARGB_8565');
  static const ImageFormat JPEG =
      ImageFormat._(5, _omitEnumNames ? '' : 'JPEG');
  static const ImageFormat PNG = ImageFormat._(6, _omitEnumNames ? '' : 'PNG');
  static const ImageFormat GIF = ImageFormat._(9, _omitEnumNames ? '' : 'GIF');
  static const ImageFormat VECTOR =
      ImageFormat._(10, _omitEnumNames ? '' : 'VECTOR');
  static const ImageFormat MP4 = ImageFormat._(11, _omitEnumNames ? '' : 'MP4');
  static const ImageFormat EZIP =
      ImageFormat._(12, _omitEnumNames ? '' : 'EZIP');

  static const $core.List<ImageFormat> values = <ImageFormat>[
    RGB_565,
    RGB_565_SWAP,
    ARGB_8888_LE,
    ARGB_8888,
    RGB888,
    ARGB_8565_LE,
    ARGB_8565,
    JPEG,
    PNG,
    GIF,
    VECTOR,
    MP4,
    EZIP,
  ];

  static final $core.List<ImageFormat?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 12);
  static ImageFormat? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ImageFormat._(super.value, super.name);
}

class CompressMode extends $pb.ProtobufEnum {
  static const CompressMode NO_COMPRESS =
      CompressMode._(0, _omitEnumNames ? '' : 'NO_COMPRESS');

  static const $core.List<CompressMode> values = <CompressMode>[
    NO_COMPRESS,
  ];

  static final $core.List<CompressMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 0);
  static CompressMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CompressMode._(super.value, super.name);
}

class OptionalSwitcher extends $pb.ProtobufEnum {
  static const OptionalSwitcher NO_FEATURE =
      OptionalSwitcher._(0, _omitEnumNames ? '' : 'NO_FEATURE');
  static const OptionalSwitcher ON =
      OptionalSwitcher._(1, _omitEnumNames ? '' : 'ON');
  static const OptionalSwitcher OFF =
      OptionalSwitcher._(2, _omitEnumNames ? '' : 'OFF');

  static const $core.List<OptionalSwitcher> values = <OptionalSwitcher>[
    NO_FEATURE,
    ON,
    OFF,
  ];

  static final $core.List<OptionalSwitcher?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static OptionalSwitcher? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const OptionalSwitcher._(super.value, super.name);
}

class TemperatureUnit extends $pb.ProtobufEnum {
  static const TemperatureUnit NO_UNIT =
      TemperatureUnit._(0, _omitEnumNames ? '' : 'NO_UNIT');
  static const TemperatureUnit CENTIGRADE =
      TemperatureUnit._(1, _omitEnumNames ? '' : 'CENTIGRADE');
  static const TemperatureUnit FAHRENHEIT =
      TemperatureUnit._(2, _omitEnumNames ? '' : 'FAHRENHEIT');

  static const $core.List<TemperatureUnit> values = <TemperatureUnit>[
    NO_UNIT,
    CENTIGRADE,
    FAHRENHEIT,
  ];

  static final $core.List<TemperatureUnit?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TemperatureUnit? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TemperatureUnit._(super.value, super.name);
}

class ClockMode extends $pb.ProtobufEnum {
  static const ClockMode CLOCK_ONCE =
      ClockMode._(0, _omitEnumNames ? '' : 'CLOCK_ONCE');
  static const ClockMode CLOCK_EVERY_DAY =
      ClockMode._(1, _omitEnumNames ? '' : 'CLOCK_EVERY_DAY');
  static const ClockMode CLOCK_WORKDAY =
      ClockMode._(2, _omitEnumNames ? '' : 'CLOCK_WORKDAY');
  static const ClockMode CLOCK_HOLIDAY =
      ClockMode._(3, _omitEnumNames ? '' : 'CLOCK_HOLIDAY');
  static const ClockMode CLOCK_MONDAY_TO_FRIDAY =
      ClockMode._(4, _omitEnumNames ? '' : 'CLOCK_MONDAY_TO_FRIDAY');
  static const ClockMode CLOCK_CUSTOM =
      ClockMode._(5, _omitEnumNames ? '' : 'CLOCK_CUSTOM');
  static const ClockMode CLOCK_EVERY_WEEK =
      ClockMode._(6, _omitEnumNames ? '' : 'CLOCK_EVERY_WEEK');
  static const ClockMode CLOCK_EVERY_MONTH =
      ClockMode._(7, _omitEnumNames ? '' : 'CLOCK_EVERY_MONTH');
  static const ClockMode CLOCK_EVERY_YEAR =
      ClockMode._(8, _omitEnumNames ? '' : 'CLOCK_EVERY_YEAR');
  static const ClockMode CLOCK_NONE =
      ClockMode._(15, _omitEnumNames ? '' : 'CLOCK_NONE');

  static const $core.List<ClockMode> values = <ClockMode>[
    CLOCK_ONCE,
    CLOCK_EVERY_DAY,
    CLOCK_WORKDAY,
    CLOCK_HOLIDAY,
    CLOCK_MONDAY_TO_FRIDAY,
    CLOCK_CUSTOM,
    CLOCK_EVERY_WEEK,
    CLOCK_EVERY_MONTH,
    CLOCK_EVERY_YEAR,
    CLOCK_NONE,
  ];

  static final $core.Map<$core.int, ClockMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ClockMode? valueOf($core.int value) => _byValue[value];

  const ClockMode._(super.value, super.name);
}

class WearMode extends $pb.ProtobufEnum {
  static const WearMode BAND = WearMode._(0, _omitEnumNames ? '' : 'BAND');
  static const WearMode BEAN = WearMode._(1, _omitEnumNames ? '' : 'BEAN');
  static const WearMode RING = WearMode._(2, _omitEnumNames ? '' : 'RING');

  static const $core.List<WearMode> values = <WearMode>[
    BAND,
    BEAN,
    RING,
  ];

  static final $core.List<WearMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static WearMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WearMode._(super.value, super.name);
}

class HeartRateSection extends $pb.ProtobufEnum {
  static const HeartRateSection HR_NONE =
      HeartRateSection._(0, _omitEnumNames ? '' : 'HR_NONE');
  static const HeartRateSection WARM_UP =
      HeartRateSection._(1, _omitEnumNames ? '' : 'WARM_UP');
  static const HeartRateSection FAT_BURNING =
      HeartRateSection._(2, _omitEnumNames ? '' : 'FAT_BURNING');
  static const HeartRateSection AEROBIC =
      HeartRateSection._(3, _omitEnumNames ? '' : 'AEROBIC');
  static const HeartRateSection ANAEROBIC =
      HeartRateSection._(4, _omitEnumNames ? '' : 'ANAEROBIC');
  static const HeartRateSection EXTREME =
      HeartRateSection._(5, _omitEnumNames ? '' : 'EXTREME');

  static const $core.List<HeartRateSection> values = <HeartRateSection>[
    HR_NONE,
    WARM_UP,
    FAT_BURNING,
    AEROBIC,
    ANAEROBIC,
    EXTREME,
  ];

  static final $core.List<HeartRateSection?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static HeartRateSection? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeartRateSection._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
