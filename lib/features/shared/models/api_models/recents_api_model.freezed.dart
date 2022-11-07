// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recents_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentMatches _$RecentMatchesFromJson(Map<String, dynamic> json) {
  return _RecentMatches.fromJson(json);
}

/// @nodoc
mixin _$RecentMatches {
  int get matchId => throw _privateConstructorUsedError;
  int get playerSlot => throw _privateConstructorUsedError;
  bool get radiantWin => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get gameMode => throw _privateConstructorUsedError;
  int get lobbyType => throw _privateConstructorUsedError;
  int get heroId => throw _privateConstructorUsedError;
  int get startTime => throw _privateConstructorUsedError;
  int get kills => throw _privateConstructorUsedError;
  int get deaths => throw _privateConstructorUsedError;
  int get assists => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_rank')
  int? get avgRank => throw _privateConstructorUsedError;
  @JsonKey(name: 'xp_per_min')
  int get xpm => throw _privateConstructorUsedError;
  @JsonKey(name: 'gold_per_min')
  int get gpm => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 1)
  int? get partySize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentMatchesCopyWith<RecentMatches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentMatchesCopyWith<$Res> {
  factory $RecentMatchesCopyWith(
          RecentMatches value, $Res Function(RecentMatches) then) =
      _$RecentMatchesCopyWithImpl<$Res, RecentMatches>;
  @useResult
  $Res call(
      {int matchId,
      int playerSlot,
      bool radiantWin,
      int duration,
      int gameMode,
      int lobbyType,
      int heroId,
      int startTime,
      int kills,
      int deaths,
      int assists,
      @JsonKey(name: 'average_rank') int? avgRank,
      @JsonKey(name: 'xp_per_min') int xpm,
      @JsonKey(name: 'gold_per_min') int gpm,
      @JsonKey(defaultValue: 1) int? partySize});
}

/// @nodoc
class _$RecentMatchesCopyWithImpl<$Res, $Val extends RecentMatches>
    implements $RecentMatchesCopyWith<$Res> {
  _$RecentMatchesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchId = null,
    Object? playerSlot = null,
    Object? radiantWin = null,
    Object? duration = null,
    Object? gameMode = null,
    Object? lobbyType = null,
    Object? heroId = null,
    Object? startTime = null,
    Object? kills = null,
    Object? deaths = null,
    Object? assists = null,
    Object? avgRank = freezed,
    Object? xpm = null,
    Object? gpm = null,
    Object? partySize = freezed,
  }) {
    return _then(_value.copyWith(
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as int,
      playerSlot: null == playerSlot
          ? _value.playerSlot
          : playerSlot // ignore: cast_nullable_to_non_nullable
              as int,
      radiantWin: null == radiantWin
          ? _value.radiantWin
          : radiantWin // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      gameMode: null == gameMode
          ? _value.gameMode
          : gameMode // ignore: cast_nullable_to_non_nullable
              as int,
      lobbyType: null == lobbyType
          ? _value.lobbyType
          : lobbyType // ignore: cast_nullable_to_non_nullable
              as int,
      heroId: null == heroId
          ? _value.heroId
          : heroId // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      kills: null == kills
          ? _value.kills
          : kills // ignore: cast_nullable_to_non_nullable
              as int,
      deaths: null == deaths
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int,
      assists: null == assists
          ? _value.assists
          : assists // ignore: cast_nullable_to_non_nullable
              as int,
      avgRank: freezed == avgRank
          ? _value.avgRank
          : avgRank // ignore: cast_nullable_to_non_nullable
              as int?,
      xpm: null == xpm
          ? _value.xpm
          : xpm // ignore: cast_nullable_to_non_nullable
              as int,
      gpm: null == gpm
          ? _value.gpm
          : gpm // ignore: cast_nullable_to_non_nullable
              as int,
      partySize: freezed == partySize
          ? _value.partySize
          : partySize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecentMatchesCopyWith<$Res>
    implements $RecentMatchesCopyWith<$Res> {
  factory _$$_RecentMatchesCopyWith(
          _$_RecentMatches value, $Res Function(_$_RecentMatches) then) =
      __$$_RecentMatchesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int matchId,
      int playerSlot,
      bool radiantWin,
      int duration,
      int gameMode,
      int lobbyType,
      int heroId,
      int startTime,
      int kills,
      int deaths,
      int assists,
      @JsonKey(name: 'average_rank') int? avgRank,
      @JsonKey(name: 'xp_per_min') int xpm,
      @JsonKey(name: 'gold_per_min') int gpm,
      @JsonKey(defaultValue: 1) int? partySize});
}

/// @nodoc
class __$$_RecentMatchesCopyWithImpl<$Res>
    extends _$RecentMatchesCopyWithImpl<$Res, _$_RecentMatches>
    implements _$$_RecentMatchesCopyWith<$Res> {
  __$$_RecentMatchesCopyWithImpl(
      _$_RecentMatches _value, $Res Function(_$_RecentMatches) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matchId = null,
    Object? playerSlot = null,
    Object? radiantWin = null,
    Object? duration = null,
    Object? gameMode = null,
    Object? lobbyType = null,
    Object? heroId = null,
    Object? startTime = null,
    Object? kills = null,
    Object? deaths = null,
    Object? assists = null,
    Object? avgRank = freezed,
    Object? xpm = null,
    Object? gpm = null,
    Object? partySize = freezed,
  }) {
    return _then(_$_RecentMatches(
      matchId: null == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as int,
      playerSlot: null == playerSlot
          ? _value.playerSlot
          : playerSlot // ignore: cast_nullable_to_non_nullable
              as int,
      radiantWin: null == radiantWin
          ? _value.radiantWin
          : radiantWin // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      gameMode: null == gameMode
          ? _value.gameMode
          : gameMode // ignore: cast_nullable_to_non_nullable
              as int,
      lobbyType: null == lobbyType
          ? _value.lobbyType
          : lobbyType // ignore: cast_nullable_to_non_nullable
              as int,
      heroId: null == heroId
          ? _value.heroId
          : heroId // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int,
      kills: null == kills
          ? _value.kills
          : kills // ignore: cast_nullable_to_non_nullable
              as int,
      deaths: null == deaths
          ? _value.deaths
          : deaths // ignore: cast_nullable_to_non_nullable
              as int,
      assists: null == assists
          ? _value.assists
          : assists // ignore: cast_nullable_to_non_nullable
              as int,
      avgRank: freezed == avgRank
          ? _value.avgRank
          : avgRank // ignore: cast_nullable_to_non_nullable
              as int?,
      xpm: null == xpm
          ? _value.xpm
          : xpm // ignore: cast_nullable_to_non_nullable
              as int,
      gpm: null == gpm
          ? _value.gpm
          : gpm // ignore: cast_nullable_to_non_nullable
              as int,
      partySize: freezed == partySize
          ? _value.partySize
          : partySize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_RecentMatches extends _RecentMatches with DiagnosticableTreeMixin {
  const _$_RecentMatches(
      {required this.matchId,
      required this.playerSlot,
      required this.radiantWin,
      required this.duration,
      required this.gameMode,
      required this.lobbyType,
      required this.heroId,
      required this.startTime,
      required this.kills,
      required this.deaths,
      required this.assists,
      @JsonKey(name: 'average_rank') required this.avgRank,
      @JsonKey(name: 'xp_per_min') required this.xpm,
      @JsonKey(name: 'gold_per_min') required this.gpm,
      @JsonKey(defaultValue: 1) required this.partySize})
      : super._();

  factory _$_RecentMatches.fromJson(Map<String, dynamic> json) =>
      _$$_RecentMatchesFromJson(json);

  @override
  final int matchId;
  @override
  final int playerSlot;
  @override
  final bool radiantWin;
  @override
  final int duration;
  @override
  final int gameMode;
  @override
  final int lobbyType;
  @override
  final int heroId;
  @override
  final int startTime;
  @override
  final int kills;
  @override
  final int deaths;
  @override
  final int assists;
  @override
  @JsonKey(name: 'average_rank')
  final int? avgRank;
  @override
  @JsonKey(name: 'xp_per_min')
  final int xpm;
  @override
  @JsonKey(name: 'gold_per_min')
  final int gpm;
  @override
  @JsonKey(defaultValue: 1)
  final int? partySize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecentMatches(matchId: $matchId, playerSlot: $playerSlot, radiantWin: $radiantWin, duration: $duration, gameMode: $gameMode, lobbyType: $lobbyType, heroId: $heroId, startTime: $startTime, kills: $kills, deaths: $deaths, assists: $assists, avgRank: $avgRank, xpm: $xpm, gpm: $gpm, partySize: $partySize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecentMatches'))
      ..add(DiagnosticsProperty('matchId', matchId))
      ..add(DiagnosticsProperty('playerSlot', playerSlot))
      ..add(DiagnosticsProperty('radiantWin', radiantWin))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('gameMode', gameMode))
      ..add(DiagnosticsProperty('lobbyType', lobbyType))
      ..add(DiagnosticsProperty('heroId', heroId))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('kills', kills))
      ..add(DiagnosticsProperty('deaths', deaths))
      ..add(DiagnosticsProperty('assists', assists))
      ..add(DiagnosticsProperty('avgRank', avgRank))
      ..add(DiagnosticsProperty('xpm', xpm))
      ..add(DiagnosticsProperty('gpm', gpm))
      ..add(DiagnosticsProperty('partySize', partySize));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentMatches &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.playerSlot, playerSlot) ||
                other.playerSlot == playerSlot) &&
            (identical(other.radiantWin, radiantWin) ||
                other.radiantWin == radiantWin) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.gameMode, gameMode) ||
                other.gameMode == gameMode) &&
            (identical(other.lobbyType, lobbyType) ||
                other.lobbyType == lobbyType) &&
            (identical(other.heroId, heroId) || other.heroId == heroId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.kills, kills) || other.kills == kills) &&
            (identical(other.deaths, deaths) || other.deaths == deaths) &&
            (identical(other.assists, assists) || other.assists == assists) &&
            (identical(other.avgRank, avgRank) || other.avgRank == avgRank) &&
            (identical(other.xpm, xpm) || other.xpm == xpm) &&
            (identical(other.gpm, gpm) || other.gpm == gpm) &&
            (identical(other.partySize, partySize) ||
                other.partySize == partySize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      matchId,
      playerSlot,
      radiantWin,
      duration,
      gameMode,
      lobbyType,
      heroId,
      startTime,
      kills,
      deaths,
      assists,
      avgRank,
      xpm,
      gpm,
      partySize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentMatchesCopyWith<_$_RecentMatches> get copyWith =>
      __$$_RecentMatchesCopyWithImpl<_$_RecentMatches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentMatchesToJson(
      this,
    );
  }
}

abstract class _RecentMatches extends RecentMatches {
  const factory _RecentMatches(
          {required final int matchId,
          required final int playerSlot,
          required final bool radiantWin,
          required final int duration,
          required final int gameMode,
          required final int lobbyType,
          required final int heroId,
          required final int startTime,
          required final int kills,
          required final int deaths,
          required final int assists,
          @JsonKey(name: 'average_rank') required final int? avgRank,
          @JsonKey(name: 'xp_per_min') required final int xpm,
          @JsonKey(name: 'gold_per_min') required final int gpm,
          @JsonKey(defaultValue: 1) required final int? partySize}) =
      _$_RecentMatches;
  const _RecentMatches._() : super._();

  factory _RecentMatches.fromJson(Map<String, dynamic> json) =
      _$_RecentMatches.fromJson;

  @override
  int get matchId;
  @override
  int get playerSlot;
  @override
  bool get radiantWin;
  @override
  int get duration;
  @override
  int get gameMode;
  @override
  int get lobbyType;
  @override
  int get heroId;
  @override
  int get startTime;
  @override
  int get kills;
  @override
  int get deaths;
  @override
  int get assists;
  @override
  @JsonKey(name: 'average_rank')
  int? get avgRank;
  @override
  @JsonKey(name: 'xp_per_min')
  int get xpm;
  @override
  @JsonKey(name: 'gold_per_min')
  int get gpm;
  @override
  @JsonKey(defaultValue: 1)
  int? get partySize;
  @override
  @JsonKey(ignore: true)
  _$$_RecentMatchesCopyWith<_$_RecentMatches> get copyWith =>
      throw _privateConstructorUsedError;
}
