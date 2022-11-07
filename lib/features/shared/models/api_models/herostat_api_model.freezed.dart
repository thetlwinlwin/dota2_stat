// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'herostat_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeroStats _$HeroStatsFromJson(Map<String, dynamic> json) {
  return _HeroStats.fromJson(json);
}

/// @nodoc
mixin _$HeroStats {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'localized_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_attr')
  String get attribute => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_str')
  num get power => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_agi')
  num get agile => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_int')
  num get wisdom => throw _privateConstructorUsedError;
  @JsonKey(name: 'str_gain')
  num get powerGain => throw _privateConstructorUsedError;
  @JsonKey(name: 'agi_gain')
  num get agileGain => throw _privateConstructorUsedError;
  @JsonKey(name: 'int_gain')
  num get wisdomGain => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_attack_max')
  num get attack => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_armor')
  num get armor => throw _privateConstructorUsedError;
  @JsonKey(name: 'move_speed')
  num get mobile => throw _privateConstructorUsedError;
  @JsonKey(name: '1_pick')
  int get pick1 => throw _privateConstructorUsedError;
  @JsonKey(name: '2_pick')
  int get pick2 => throw _privateConstructorUsedError;
  @JsonKey(name: '3_pick')
  int get pick3 => throw _privateConstructorUsedError;
  @JsonKey(name: '4_pick')
  int get pick4 => throw _privateConstructorUsedError;
  @JsonKey(name: '5_pick')
  int get pick5 => throw _privateConstructorUsedError;
  @JsonKey(name: '6_pick')
  int get pick6 => throw _privateConstructorUsedError;
  @JsonKey(name: '7_pick')
  int get pick7 => throw _privateConstructorUsedError;
  @JsonKey(name: '8_pick')
  int get pick8 => throw _privateConstructorUsedError;
  @JsonKey(name: '1_win')
  int get win1 => throw _privateConstructorUsedError;
  @JsonKey(name: '2_win')
  int get win2 => throw _privateConstructorUsedError;
  @JsonKey(name: '3_win')
  int get win3 => throw _privateConstructorUsedError;
  @JsonKey(name: '4_win')
  int get win4 => throw _privateConstructorUsedError;
  @JsonKey(name: '5_win')
  int get win5 => throw _privateConstructorUsedError;
  @JsonKey(name: '6_win')
  int get win6 => throw _privateConstructorUsedError;
  @JsonKey(name: '7_win')
  int get win7 => throw _privateConstructorUsedError;
  @JsonKey(name: '8_win')
  int get win8 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeroStatsCopyWith<HeroStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroStatsCopyWith<$Res> {
  factory $HeroStatsCopyWith(HeroStats value, $Res Function(HeroStats) then) =
      _$HeroStatsCopyWithImpl<$Res, HeroStats>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'localized_name') String name,
      @JsonKey(name: 'primary_attr') String attribute,
      List<String> roles,
      String img,
      String icon,
      @JsonKey(name: 'base_str') num power,
      @JsonKey(name: 'base_agi') num agile,
      @JsonKey(name: 'base_int') num wisdom,
      @JsonKey(name: 'str_gain') num powerGain,
      @JsonKey(name: 'agi_gain') num agileGain,
      @JsonKey(name: 'int_gain') num wisdomGain,
      @JsonKey(name: 'base_attack_max') num attack,
      @JsonKey(name: 'base_armor') num armor,
      @JsonKey(name: 'move_speed') num mobile,
      @JsonKey(name: '1_pick') int pick1,
      @JsonKey(name: '2_pick') int pick2,
      @JsonKey(name: '3_pick') int pick3,
      @JsonKey(name: '4_pick') int pick4,
      @JsonKey(name: '5_pick') int pick5,
      @JsonKey(name: '6_pick') int pick6,
      @JsonKey(name: '7_pick') int pick7,
      @JsonKey(name: '8_pick') int pick8,
      @JsonKey(name: '1_win') int win1,
      @JsonKey(name: '2_win') int win2,
      @JsonKey(name: '3_win') int win3,
      @JsonKey(name: '4_win') int win4,
      @JsonKey(name: '5_win') int win5,
      @JsonKey(name: '6_win') int win6,
      @JsonKey(name: '7_win') int win7,
      @JsonKey(name: '8_win') int win8});
}

/// @nodoc
class _$HeroStatsCopyWithImpl<$Res, $Val extends HeroStats>
    implements $HeroStatsCopyWith<$Res> {
  _$HeroStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? attribute = null,
    Object? roles = null,
    Object? img = null,
    Object? icon = null,
    Object? power = null,
    Object? agile = null,
    Object? wisdom = null,
    Object? powerGain = null,
    Object? agileGain = null,
    Object? wisdomGain = null,
    Object? attack = null,
    Object? armor = null,
    Object? mobile = null,
    Object? pick1 = null,
    Object? pick2 = null,
    Object? pick3 = null,
    Object? pick4 = null,
    Object? pick5 = null,
    Object? pick6 = null,
    Object? pick7 = null,
    Object? pick8 = null,
    Object? win1 = null,
    Object? win2 = null,
    Object? win3 = null,
    Object? win4 = null,
    Object? win5 = null,
    Object? win6 = null,
    Object? win7 = null,
    Object? win8 = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attribute: null == attribute
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as num,
      agile: null == agile
          ? _value.agile
          : agile // ignore: cast_nullable_to_non_nullable
              as num,
      wisdom: null == wisdom
          ? _value.wisdom
          : wisdom // ignore: cast_nullable_to_non_nullable
              as num,
      powerGain: null == powerGain
          ? _value.powerGain
          : powerGain // ignore: cast_nullable_to_non_nullable
              as num,
      agileGain: null == agileGain
          ? _value.agileGain
          : agileGain // ignore: cast_nullable_to_non_nullable
              as num,
      wisdomGain: null == wisdomGain
          ? _value.wisdomGain
          : wisdomGain // ignore: cast_nullable_to_non_nullable
              as num,
      attack: null == attack
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as num,
      armor: null == armor
          ? _value.armor
          : armor // ignore: cast_nullable_to_non_nullable
              as num,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as num,
      pick1: null == pick1
          ? _value.pick1
          : pick1 // ignore: cast_nullable_to_non_nullable
              as int,
      pick2: null == pick2
          ? _value.pick2
          : pick2 // ignore: cast_nullable_to_non_nullable
              as int,
      pick3: null == pick3
          ? _value.pick3
          : pick3 // ignore: cast_nullable_to_non_nullable
              as int,
      pick4: null == pick4
          ? _value.pick4
          : pick4 // ignore: cast_nullable_to_non_nullable
              as int,
      pick5: null == pick5
          ? _value.pick5
          : pick5 // ignore: cast_nullable_to_non_nullable
              as int,
      pick6: null == pick6
          ? _value.pick6
          : pick6 // ignore: cast_nullable_to_non_nullable
              as int,
      pick7: null == pick7
          ? _value.pick7
          : pick7 // ignore: cast_nullable_to_non_nullable
              as int,
      pick8: null == pick8
          ? _value.pick8
          : pick8 // ignore: cast_nullable_to_non_nullable
              as int,
      win1: null == win1
          ? _value.win1
          : win1 // ignore: cast_nullable_to_non_nullable
              as int,
      win2: null == win2
          ? _value.win2
          : win2 // ignore: cast_nullable_to_non_nullable
              as int,
      win3: null == win3
          ? _value.win3
          : win3 // ignore: cast_nullable_to_non_nullable
              as int,
      win4: null == win4
          ? _value.win4
          : win4 // ignore: cast_nullable_to_non_nullable
              as int,
      win5: null == win5
          ? _value.win5
          : win5 // ignore: cast_nullable_to_non_nullable
              as int,
      win6: null == win6
          ? _value.win6
          : win6 // ignore: cast_nullable_to_non_nullable
              as int,
      win7: null == win7
          ? _value.win7
          : win7 // ignore: cast_nullable_to_non_nullable
              as int,
      win8: null == win8
          ? _value.win8
          : win8 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HeroStatsCopyWith<$Res> implements $HeroStatsCopyWith<$Res> {
  factory _$$_HeroStatsCopyWith(
          _$_HeroStats value, $Res Function(_$_HeroStats) then) =
      __$$_HeroStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'localized_name') String name,
      @JsonKey(name: 'primary_attr') String attribute,
      List<String> roles,
      String img,
      String icon,
      @JsonKey(name: 'base_str') num power,
      @JsonKey(name: 'base_agi') num agile,
      @JsonKey(name: 'base_int') num wisdom,
      @JsonKey(name: 'str_gain') num powerGain,
      @JsonKey(name: 'agi_gain') num agileGain,
      @JsonKey(name: 'int_gain') num wisdomGain,
      @JsonKey(name: 'base_attack_max') num attack,
      @JsonKey(name: 'base_armor') num armor,
      @JsonKey(name: 'move_speed') num mobile,
      @JsonKey(name: '1_pick') int pick1,
      @JsonKey(name: '2_pick') int pick2,
      @JsonKey(name: '3_pick') int pick3,
      @JsonKey(name: '4_pick') int pick4,
      @JsonKey(name: '5_pick') int pick5,
      @JsonKey(name: '6_pick') int pick6,
      @JsonKey(name: '7_pick') int pick7,
      @JsonKey(name: '8_pick') int pick8,
      @JsonKey(name: '1_win') int win1,
      @JsonKey(name: '2_win') int win2,
      @JsonKey(name: '3_win') int win3,
      @JsonKey(name: '4_win') int win4,
      @JsonKey(name: '5_win') int win5,
      @JsonKey(name: '6_win') int win6,
      @JsonKey(name: '7_win') int win7,
      @JsonKey(name: '8_win') int win8});
}

/// @nodoc
class __$$_HeroStatsCopyWithImpl<$Res>
    extends _$HeroStatsCopyWithImpl<$Res, _$_HeroStats>
    implements _$$_HeroStatsCopyWith<$Res> {
  __$$_HeroStatsCopyWithImpl(
      _$_HeroStats _value, $Res Function(_$_HeroStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? attribute = null,
    Object? roles = null,
    Object? img = null,
    Object? icon = null,
    Object? power = null,
    Object? agile = null,
    Object? wisdom = null,
    Object? powerGain = null,
    Object? agileGain = null,
    Object? wisdomGain = null,
    Object? attack = null,
    Object? armor = null,
    Object? mobile = null,
    Object? pick1 = null,
    Object? pick2 = null,
    Object? pick3 = null,
    Object? pick4 = null,
    Object? pick5 = null,
    Object? pick6 = null,
    Object? pick7 = null,
    Object? pick8 = null,
    Object? win1 = null,
    Object? win2 = null,
    Object? win3 = null,
    Object? win4 = null,
    Object? win5 = null,
    Object? win6 = null,
    Object? win7 = null,
    Object? win8 = null,
  }) {
    return _then(_$_HeroStats(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      attribute: null == attribute
          ? _value.attribute
          : attribute // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as num,
      agile: null == agile
          ? _value.agile
          : agile // ignore: cast_nullable_to_non_nullable
              as num,
      wisdom: null == wisdom
          ? _value.wisdom
          : wisdom // ignore: cast_nullable_to_non_nullable
              as num,
      powerGain: null == powerGain
          ? _value.powerGain
          : powerGain // ignore: cast_nullable_to_non_nullable
              as num,
      agileGain: null == agileGain
          ? _value.agileGain
          : agileGain // ignore: cast_nullable_to_non_nullable
              as num,
      wisdomGain: null == wisdomGain
          ? _value.wisdomGain
          : wisdomGain // ignore: cast_nullable_to_non_nullable
              as num,
      attack: null == attack
          ? _value.attack
          : attack // ignore: cast_nullable_to_non_nullable
              as num,
      armor: null == armor
          ? _value.armor
          : armor // ignore: cast_nullable_to_non_nullable
              as num,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as num,
      pick1: null == pick1
          ? _value.pick1
          : pick1 // ignore: cast_nullable_to_non_nullable
              as int,
      pick2: null == pick2
          ? _value.pick2
          : pick2 // ignore: cast_nullable_to_non_nullable
              as int,
      pick3: null == pick3
          ? _value.pick3
          : pick3 // ignore: cast_nullable_to_non_nullable
              as int,
      pick4: null == pick4
          ? _value.pick4
          : pick4 // ignore: cast_nullable_to_non_nullable
              as int,
      pick5: null == pick5
          ? _value.pick5
          : pick5 // ignore: cast_nullable_to_non_nullable
              as int,
      pick6: null == pick6
          ? _value.pick6
          : pick6 // ignore: cast_nullable_to_non_nullable
              as int,
      pick7: null == pick7
          ? _value.pick7
          : pick7 // ignore: cast_nullable_to_non_nullable
              as int,
      pick8: null == pick8
          ? _value.pick8
          : pick8 // ignore: cast_nullable_to_non_nullable
              as int,
      win1: null == win1
          ? _value.win1
          : win1 // ignore: cast_nullable_to_non_nullable
              as int,
      win2: null == win2
          ? _value.win2
          : win2 // ignore: cast_nullable_to_non_nullable
              as int,
      win3: null == win3
          ? _value.win3
          : win3 // ignore: cast_nullable_to_non_nullable
              as int,
      win4: null == win4
          ? _value.win4
          : win4 // ignore: cast_nullable_to_non_nullable
              as int,
      win5: null == win5
          ? _value.win5
          : win5 // ignore: cast_nullable_to_non_nullable
              as int,
      win6: null == win6
          ? _value.win6
          : win6 // ignore: cast_nullable_to_non_nullable
              as int,
      win7: null == win7
          ? _value.win7
          : win7 // ignore: cast_nullable_to_non_nullable
              as int,
      win8: null == win8
          ? _value.win8
          : win8 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_HeroStats extends _HeroStats with DiagnosticableTreeMixin {
  const _$_HeroStats(
      {required this.id,
      @JsonKey(name: 'localized_name') required this.name,
      @JsonKey(name: 'primary_attr') required this.attribute,
      required final List<String> roles,
      required this.img,
      required this.icon,
      @JsonKey(name: 'base_str') required this.power,
      @JsonKey(name: 'base_agi') required this.agile,
      @JsonKey(name: 'base_int') required this.wisdom,
      @JsonKey(name: 'str_gain') required this.powerGain,
      @JsonKey(name: 'agi_gain') required this.agileGain,
      @JsonKey(name: 'int_gain') required this.wisdomGain,
      @JsonKey(name: 'base_attack_max') required this.attack,
      @JsonKey(name: 'base_armor') required this.armor,
      @JsonKey(name: 'move_speed') required this.mobile,
      @JsonKey(name: '1_pick') required this.pick1,
      @JsonKey(name: '2_pick') required this.pick2,
      @JsonKey(name: '3_pick') required this.pick3,
      @JsonKey(name: '4_pick') required this.pick4,
      @JsonKey(name: '5_pick') required this.pick5,
      @JsonKey(name: '6_pick') required this.pick6,
      @JsonKey(name: '7_pick') required this.pick7,
      @JsonKey(name: '8_pick') required this.pick8,
      @JsonKey(name: '1_win') required this.win1,
      @JsonKey(name: '2_win') required this.win2,
      @JsonKey(name: '3_win') required this.win3,
      @JsonKey(name: '4_win') required this.win4,
      @JsonKey(name: '5_win') required this.win5,
      @JsonKey(name: '6_win') required this.win6,
      @JsonKey(name: '7_win') required this.win7,
      @JsonKey(name: '8_win') required this.win8})
      : _roles = roles,
        super._();

  factory _$_HeroStats.fromJson(Map<String, dynamic> json) =>
      _$$_HeroStatsFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'localized_name')
  final String name;
  @override
  @JsonKey(name: 'primary_attr')
  final String attribute;
  final List<String> _roles;
  @override
  List<String> get roles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  final String img;
  @override
  final String icon;
  @override
  @JsonKey(name: 'base_str')
  final num power;
  @override
  @JsonKey(name: 'base_agi')
  final num agile;
  @override
  @JsonKey(name: 'base_int')
  final num wisdom;
  @override
  @JsonKey(name: 'str_gain')
  final num powerGain;
  @override
  @JsonKey(name: 'agi_gain')
  final num agileGain;
  @override
  @JsonKey(name: 'int_gain')
  final num wisdomGain;
  @override
  @JsonKey(name: 'base_attack_max')
  final num attack;
  @override
  @JsonKey(name: 'base_armor')
  final num armor;
  @override
  @JsonKey(name: 'move_speed')
  final num mobile;
  @override
  @JsonKey(name: '1_pick')
  final int pick1;
  @override
  @JsonKey(name: '2_pick')
  final int pick2;
  @override
  @JsonKey(name: '3_pick')
  final int pick3;
  @override
  @JsonKey(name: '4_pick')
  final int pick4;
  @override
  @JsonKey(name: '5_pick')
  final int pick5;
  @override
  @JsonKey(name: '6_pick')
  final int pick6;
  @override
  @JsonKey(name: '7_pick')
  final int pick7;
  @override
  @JsonKey(name: '8_pick')
  final int pick8;
  @override
  @JsonKey(name: '1_win')
  final int win1;
  @override
  @JsonKey(name: '2_win')
  final int win2;
  @override
  @JsonKey(name: '3_win')
  final int win3;
  @override
  @JsonKey(name: '4_win')
  final int win4;
  @override
  @JsonKey(name: '5_win')
  final int win5;
  @override
  @JsonKey(name: '6_win')
  final int win6;
  @override
  @JsonKey(name: '7_win')
  final int win7;
  @override
  @JsonKey(name: '8_win')
  final int win8;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HeroStats(id: $id, name: $name, attribute: $attribute, roles: $roles, img: $img, icon: $icon, power: $power, agile: $agile, wisdom: $wisdom, powerGain: $powerGain, agileGain: $agileGain, wisdomGain: $wisdomGain, attack: $attack, armor: $armor, mobile: $mobile, pick1: $pick1, pick2: $pick2, pick3: $pick3, pick4: $pick4, pick5: $pick5, pick6: $pick6, pick7: $pick7, pick8: $pick8, win1: $win1, win2: $win2, win3: $win3, win4: $win4, win5: $win5, win6: $win6, win7: $win7, win8: $win8)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HeroStats'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('attribute', attribute))
      ..add(DiagnosticsProperty('roles', roles))
      ..add(DiagnosticsProperty('img', img))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('power', power))
      ..add(DiagnosticsProperty('agile', agile))
      ..add(DiagnosticsProperty('wisdom', wisdom))
      ..add(DiagnosticsProperty('powerGain', powerGain))
      ..add(DiagnosticsProperty('agileGain', agileGain))
      ..add(DiagnosticsProperty('wisdomGain', wisdomGain))
      ..add(DiagnosticsProperty('attack', attack))
      ..add(DiagnosticsProperty('armor', armor))
      ..add(DiagnosticsProperty('mobile', mobile))
      ..add(DiagnosticsProperty('pick1', pick1))
      ..add(DiagnosticsProperty('pick2', pick2))
      ..add(DiagnosticsProperty('pick3', pick3))
      ..add(DiagnosticsProperty('pick4', pick4))
      ..add(DiagnosticsProperty('pick5', pick5))
      ..add(DiagnosticsProperty('pick6', pick6))
      ..add(DiagnosticsProperty('pick7', pick7))
      ..add(DiagnosticsProperty('pick8', pick8))
      ..add(DiagnosticsProperty('win1', win1))
      ..add(DiagnosticsProperty('win2', win2))
      ..add(DiagnosticsProperty('win3', win3))
      ..add(DiagnosticsProperty('win4', win4))
      ..add(DiagnosticsProperty('win5', win5))
      ..add(DiagnosticsProperty('win6', win6))
      ..add(DiagnosticsProperty('win7', win7))
      ..add(DiagnosticsProperty('win8', win8));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeroStats &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.attribute, attribute) ||
                other.attribute == attribute) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.agile, agile) || other.agile == agile) &&
            (identical(other.wisdom, wisdom) || other.wisdom == wisdom) &&
            (identical(other.powerGain, powerGain) ||
                other.powerGain == powerGain) &&
            (identical(other.agileGain, agileGain) ||
                other.agileGain == agileGain) &&
            (identical(other.wisdomGain, wisdomGain) ||
                other.wisdomGain == wisdomGain) &&
            (identical(other.attack, attack) || other.attack == attack) &&
            (identical(other.armor, armor) || other.armor == armor) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.pick1, pick1) || other.pick1 == pick1) &&
            (identical(other.pick2, pick2) || other.pick2 == pick2) &&
            (identical(other.pick3, pick3) || other.pick3 == pick3) &&
            (identical(other.pick4, pick4) || other.pick4 == pick4) &&
            (identical(other.pick5, pick5) || other.pick5 == pick5) &&
            (identical(other.pick6, pick6) || other.pick6 == pick6) &&
            (identical(other.pick7, pick7) || other.pick7 == pick7) &&
            (identical(other.pick8, pick8) || other.pick8 == pick8) &&
            (identical(other.win1, win1) || other.win1 == win1) &&
            (identical(other.win2, win2) || other.win2 == win2) &&
            (identical(other.win3, win3) || other.win3 == win3) &&
            (identical(other.win4, win4) || other.win4 == win4) &&
            (identical(other.win5, win5) || other.win5 == win5) &&
            (identical(other.win6, win6) || other.win6 == win6) &&
            (identical(other.win7, win7) || other.win7 == win7) &&
            (identical(other.win8, win8) || other.win8 == win8));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        attribute,
        const DeepCollectionEquality().hash(_roles),
        img,
        icon,
        power,
        agile,
        wisdom,
        powerGain,
        agileGain,
        wisdomGain,
        attack,
        armor,
        mobile,
        pick1,
        pick2,
        pick3,
        pick4,
        pick5,
        pick6,
        pick7,
        pick8,
        win1,
        win2,
        win3,
        win4,
        win5,
        win6,
        win7,
        win8
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeroStatsCopyWith<_$_HeroStats> get copyWith =>
      __$$_HeroStatsCopyWithImpl<_$_HeroStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeroStatsToJson(
      this,
    );
  }
}

abstract class _HeroStats extends HeroStats {
  const factory _HeroStats(
      {required final int id,
      @JsonKey(name: 'localized_name') required final String name,
      @JsonKey(name: 'primary_attr') required final String attribute,
      required final List<String> roles,
      required final String img,
      required final String icon,
      @JsonKey(name: 'base_str') required final num power,
      @JsonKey(name: 'base_agi') required final num agile,
      @JsonKey(name: 'base_int') required final num wisdom,
      @JsonKey(name: 'str_gain') required final num powerGain,
      @JsonKey(name: 'agi_gain') required final num agileGain,
      @JsonKey(name: 'int_gain') required final num wisdomGain,
      @JsonKey(name: 'base_attack_max') required final num attack,
      @JsonKey(name: 'base_armor') required final num armor,
      @JsonKey(name: 'move_speed') required final num mobile,
      @JsonKey(name: '1_pick') required final int pick1,
      @JsonKey(name: '2_pick') required final int pick2,
      @JsonKey(name: '3_pick') required final int pick3,
      @JsonKey(name: '4_pick') required final int pick4,
      @JsonKey(name: '5_pick') required final int pick5,
      @JsonKey(name: '6_pick') required final int pick6,
      @JsonKey(name: '7_pick') required final int pick7,
      @JsonKey(name: '8_pick') required final int pick8,
      @JsonKey(name: '1_win') required final int win1,
      @JsonKey(name: '2_win') required final int win2,
      @JsonKey(name: '3_win') required final int win3,
      @JsonKey(name: '4_win') required final int win4,
      @JsonKey(name: '5_win') required final int win5,
      @JsonKey(name: '6_win') required final int win6,
      @JsonKey(name: '7_win') required final int win7,
      @JsonKey(name: '8_win') required final int win8}) = _$_HeroStats;
  const _HeroStats._() : super._();

  factory _HeroStats.fromJson(Map<String, dynamic> json) =
      _$_HeroStats.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'localized_name')
  String get name;
  @override
  @JsonKey(name: 'primary_attr')
  String get attribute;
  @override
  List<String> get roles;
  @override
  String get img;
  @override
  String get icon;
  @override
  @JsonKey(name: 'base_str')
  num get power;
  @override
  @JsonKey(name: 'base_agi')
  num get agile;
  @override
  @JsonKey(name: 'base_int')
  num get wisdom;
  @override
  @JsonKey(name: 'str_gain')
  num get powerGain;
  @override
  @JsonKey(name: 'agi_gain')
  num get agileGain;
  @override
  @JsonKey(name: 'int_gain')
  num get wisdomGain;
  @override
  @JsonKey(name: 'base_attack_max')
  num get attack;
  @override
  @JsonKey(name: 'base_armor')
  num get armor;
  @override
  @JsonKey(name: 'move_speed')
  num get mobile;
  @override
  @JsonKey(name: '1_pick')
  int get pick1;
  @override
  @JsonKey(name: '2_pick')
  int get pick2;
  @override
  @JsonKey(name: '3_pick')
  int get pick3;
  @override
  @JsonKey(name: '4_pick')
  int get pick4;
  @override
  @JsonKey(name: '5_pick')
  int get pick5;
  @override
  @JsonKey(name: '6_pick')
  int get pick6;
  @override
  @JsonKey(name: '7_pick')
  int get pick7;
  @override
  @JsonKey(name: '8_pick')
  int get pick8;
  @override
  @JsonKey(name: '1_win')
  int get win1;
  @override
  @JsonKey(name: '2_win')
  int get win2;
  @override
  @JsonKey(name: '3_win')
  int get win3;
  @override
  @JsonKey(name: '4_win')
  int get win4;
  @override
  @JsonKey(name: '5_win')
  int get win5;
  @override
  @JsonKey(name: '6_win')
  int get win6;
  @override
  @JsonKey(name: '7_win')
  int get win7;
  @override
  @JsonKey(name: '8_win')
  int get win8;
  @override
  @JsonKey(ignore: true)
  _$$_HeroStatsCopyWith<_$_HeroStats> get copyWith =>
      throw _privateConstructorUsedError;
}
