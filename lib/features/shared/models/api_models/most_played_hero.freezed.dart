// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'most_played_hero.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerMostPlayedHeroes _$PlayerMostPlayedHeroesFromJson(
    Map<String, dynamic> json) {
  return _PlayerMostPlayedHeroes.fromJson(json);
}

/// @nodoc
mixin _$PlayerMostPlayedHeroes {
  @JsonKey(name: 'hero_id')
  String get heroId => throw _privateConstructorUsedError;
  int get games => throw _privateConstructorUsedError;
  int get win => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerMostPlayedHeroesCopyWith<PlayerMostPlayedHeroes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerMostPlayedHeroesCopyWith<$Res> {
  factory $PlayerMostPlayedHeroesCopyWith(PlayerMostPlayedHeroes value,
          $Res Function(PlayerMostPlayedHeroes) then) =
      _$PlayerMostPlayedHeroesCopyWithImpl<$Res, PlayerMostPlayedHeroes>;
  @useResult
  $Res call({@JsonKey(name: 'hero_id') String heroId, int games, int win});
}

/// @nodoc
class _$PlayerMostPlayedHeroesCopyWithImpl<$Res,
        $Val extends PlayerMostPlayedHeroes>
    implements $PlayerMostPlayedHeroesCopyWith<$Res> {
  _$PlayerMostPlayedHeroesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heroId = null,
    Object? games = null,
    Object? win = null,
  }) {
    return _then(_value.copyWith(
      heroId: null == heroId
          ? _value.heroId
          : heroId // ignore: cast_nullable_to_non_nullable
              as String,
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as int,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerMostPlayedHeroesCopyWith<$Res>
    implements $PlayerMostPlayedHeroesCopyWith<$Res> {
  factory _$$_PlayerMostPlayedHeroesCopyWith(_$_PlayerMostPlayedHeroes value,
          $Res Function(_$_PlayerMostPlayedHeroes) then) =
      __$$_PlayerMostPlayedHeroesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'hero_id') String heroId, int games, int win});
}

/// @nodoc
class __$$_PlayerMostPlayedHeroesCopyWithImpl<$Res>
    extends _$PlayerMostPlayedHeroesCopyWithImpl<$Res,
        _$_PlayerMostPlayedHeroes>
    implements _$$_PlayerMostPlayedHeroesCopyWith<$Res> {
  __$$_PlayerMostPlayedHeroesCopyWithImpl(_$_PlayerMostPlayedHeroes _value,
      $Res Function(_$_PlayerMostPlayedHeroes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heroId = null,
    Object? games = null,
    Object? win = null,
  }) {
    return _then(_$_PlayerMostPlayedHeroes(
      heroId: null == heroId
          ? _value.heroId
          : heroId // ignore: cast_nullable_to_non_nullable
              as String,
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as int,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_PlayerMostPlayedHeroes extends _PlayerMostPlayedHeroes {
  const _$_PlayerMostPlayedHeroes(
      {@JsonKey(name: 'hero_id') required this.heroId,
      required this.games,
      required this.win})
      : super._();

  factory _$_PlayerMostPlayedHeroes.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerMostPlayedHeroesFromJson(json);

  @override
  @JsonKey(name: 'hero_id')
  final String heroId;
  @override
  final int games;
  @override
  final int win;

  @override
  String toString() {
    return 'PlayerMostPlayedHeroes(heroId: $heroId, games: $games, win: $win)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerMostPlayedHeroes &&
            (identical(other.heroId, heroId) || other.heroId == heroId) &&
            (identical(other.games, games) || other.games == games) &&
            (identical(other.win, win) || other.win == win));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, heroId, games, win);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerMostPlayedHeroesCopyWith<_$_PlayerMostPlayedHeroes> get copyWith =>
      __$$_PlayerMostPlayedHeroesCopyWithImpl<_$_PlayerMostPlayedHeroes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerMostPlayedHeroesToJson(
      this,
    );
  }
}

abstract class _PlayerMostPlayedHeroes extends PlayerMostPlayedHeroes {
  const factory _PlayerMostPlayedHeroes(
      {@JsonKey(name: 'hero_id') required final String heroId,
      required final int games,
      required final int win}) = _$_PlayerMostPlayedHeroes;
  const _PlayerMostPlayedHeroes._() : super._();

  factory _PlayerMostPlayedHeroes.fromJson(Map<String, dynamic> json) =
      _$_PlayerMostPlayedHeroes.fromJson;

  @override
  @JsonKey(name: 'hero_id')
  String get heroId;
  @override
  int get games;
  @override
  int get win;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerMostPlayedHeroesCopyWith<_$_PlayerMostPlayedHeroes> get copyWith =>
      throw _privateConstructorUsedError;
}
