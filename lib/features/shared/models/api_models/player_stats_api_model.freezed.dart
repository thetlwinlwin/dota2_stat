// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_stats_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerStats _$PlayerStatsFromJson(Map<String, dynamic> json) {
  return _PlayerStats.fromJson(json);
}

/// @nodoc
mixin _$PlayerStats {
  GameMode get gameMode => throw _privateConstructorUsedError;
  LobbyType get lobbyType => throw _privateConstructorUsedError;
  IsRadiant get isRadiant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerStatsCopyWith<PlayerStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStatsCopyWith<$Res> {
  factory $PlayerStatsCopyWith(
          PlayerStats value, $Res Function(PlayerStats) then) =
      _$PlayerStatsCopyWithImpl<$Res, PlayerStats>;
  @useResult
  $Res call({GameMode gameMode, LobbyType lobbyType, IsRadiant isRadiant});

  $GameModeCopyWith<$Res> get gameMode;
  $LobbyTypeCopyWith<$Res> get lobbyType;
  $IsRadiantCopyWith<$Res> get isRadiant;
}

/// @nodoc
class _$PlayerStatsCopyWithImpl<$Res, $Val extends PlayerStats>
    implements $PlayerStatsCopyWith<$Res> {
  _$PlayerStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameMode = null,
    Object? lobbyType = null,
    Object? isRadiant = null,
  }) {
    return _then(_value.copyWith(
      gameMode: null == gameMode
          ? _value.gameMode
          : gameMode // ignore: cast_nullable_to_non_nullable
              as GameMode,
      lobbyType: null == lobbyType
          ? _value.lobbyType
          : lobbyType // ignore: cast_nullable_to_non_nullable
              as LobbyType,
      isRadiant: null == isRadiant
          ? _value.isRadiant
          : isRadiant // ignore: cast_nullable_to_non_nullable
              as IsRadiant,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameModeCopyWith<$Res> get gameMode {
    return $GameModeCopyWith<$Res>(_value.gameMode, (value) {
      return _then(_value.copyWith(gameMode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LobbyTypeCopyWith<$Res> get lobbyType {
    return $LobbyTypeCopyWith<$Res>(_value.lobbyType, (value) {
      return _then(_value.copyWith(lobbyType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IsRadiantCopyWith<$Res> get isRadiant {
    return $IsRadiantCopyWith<$Res>(_value.isRadiant, (value) {
      return _then(_value.copyWith(isRadiant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlayerStatsCopyWith<$Res>
    implements $PlayerStatsCopyWith<$Res> {
  factory _$$_PlayerStatsCopyWith(
          _$_PlayerStats value, $Res Function(_$_PlayerStats) then) =
      __$$_PlayerStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameMode gameMode, LobbyType lobbyType, IsRadiant isRadiant});

  @override
  $GameModeCopyWith<$Res> get gameMode;
  @override
  $LobbyTypeCopyWith<$Res> get lobbyType;
  @override
  $IsRadiantCopyWith<$Res> get isRadiant;
}

/// @nodoc
class __$$_PlayerStatsCopyWithImpl<$Res>
    extends _$PlayerStatsCopyWithImpl<$Res, _$_PlayerStats>
    implements _$$_PlayerStatsCopyWith<$Res> {
  __$$_PlayerStatsCopyWithImpl(
      _$_PlayerStats _value, $Res Function(_$_PlayerStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameMode = null,
    Object? lobbyType = null,
    Object? isRadiant = null,
  }) {
    return _then(_$_PlayerStats(
      gameMode: null == gameMode
          ? _value.gameMode
          : gameMode // ignore: cast_nullable_to_non_nullable
              as GameMode,
      lobbyType: null == lobbyType
          ? _value.lobbyType
          : lobbyType // ignore: cast_nullable_to_non_nullable
              as LobbyType,
      isRadiant: null == isRadiant
          ? _value.isRadiant
          : isRadiant // ignore: cast_nullable_to_non_nullable
              as IsRadiant,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_PlayerStats extends _PlayerStats with DiagnosticableTreeMixin {
  const _$_PlayerStats(
      {required this.gameMode,
      required this.lobbyType,
      required this.isRadiant})
      : super._();

  factory _$_PlayerStats.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerStatsFromJson(json);

  @override
  final GameMode gameMode;
  @override
  final LobbyType lobbyType;
  @override
  final IsRadiant isRadiant;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerStats(gameMode: $gameMode, lobbyType: $lobbyType, isRadiant: $isRadiant)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerStats'))
      ..add(DiagnosticsProperty('gameMode', gameMode))
      ..add(DiagnosticsProperty('lobbyType', lobbyType))
      ..add(DiagnosticsProperty('isRadiant', isRadiant));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerStats &&
            (identical(other.gameMode, gameMode) ||
                other.gameMode == gameMode) &&
            (identical(other.lobbyType, lobbyType) ||
                other.lobbyType == lobbyType) &&
            (identical(other.isRadiant, isRadiant) ||
                other.isRadiant == isRadiant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameMode, lobbyType, isRadiant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerStatsCopyWith<_$_PlayerStats> get copyWith =>
      __$$_PlayerStatsCopyWithImpl<_$_PlayerStats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerStatsToJson(
      this,
    );
  }
}

abstract class _PlayerStats extends PlayerStats {
  const factory _PlayerStats(
      {required final GameMode gameMode,
      required final LobbyType lobbyType,
      required final IsRadiant isRadiant}) = _$_PlayerStats;
  const _PlayerStats._() : super._();

  factory _PlayerStats.fromJson(Map<String, dynamic> json) =
      _$_PlayerStats.fromJson;

  @override
  GameMode get gameMode;
  @override
  LobbyType get lobbyType;
  @override
  IsRadiant get isRadiant;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerStatsCopyWith<_$_PlayerStats> get copyWith =>
      throw _privateConstructorUsedError;
}

IsRadiant _$IsRadiantFromJson(Map<String, dynamic> json) {
  return _IsRadiant.fromJson(json);
}

/// @nodoc
mixin _$IsRadiant {
  @JsonKey(name: '0')
  GameWinStatus get dire => throw _privateConstructorUsedError;
  @JsonKey(name: '1')
  GameWinStatus get radiant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsRadiantCopyWith<IsRadiant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsRadiantCopyWith<$Res> {
  factory $IsRadiantCopyWith(IsRadiant value, $Res Function(IsRadiant) then) =
      _$IsRadiantCopyWithImpl<$Res, IsRadiant>;
  @useResult
  $Res call(
      {@JsonKey(name: '0') GameWinStatus dire,
      @JsonKey(name: '1') GameWinStatus radiant});

  $GameWinStatusCopyWith<$Res> get dire;
  $GameWinStatusCopyWith<$Res> get radiant;
}

/// @nodoc
class _$IsRadiantCopyWithImpl<$Res, $Val extends IsRadiant>
    implements $IsRadiantCopyWith<$Res> {
  _$IsRadiantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dire = null,
    Object? radiant = null,
  }) {
    return _then(_value.copyWith(
      dire: null == dire
          ? _value.dire
          : dire // ignore: cast_nullable_to_non_nullable
              as GameWinStatus,
      radiant: null == radiant
          ? _value.radiant
          : radiant // ignore: cast_nullable_to_non_nullable
              as GameWinStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res> get dire {
    return $GameWinStatusCopyWith<$Res>(_value.dire, (value) {
      return _then(_value.copyWith(dire: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res> get radiant {
    return $GameWinStatusCopyWith<$Res>(_value.radiant, (value) {
      return _then(_value.copyWith(radiant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IsRadiantCopyWith<$Res> implements $IsRadiantCopyWith<$Res> {
  factory _$$_IsRadiantCopyWith(
          _$_IsRadiant value, $Res Function(_$_IsRadiant) then) =
      __$$_IsRadiantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '0') GameWinStatus dire,
      @JsonKey(name: '1') GameWinStatus radiant});

  @override
  $GameWinStatusCopyWith<$Res> get dire;
  @override
  $GameWinStatusCopyWith<$Res> get radiant;
}

/// @nodoc
class __$$_IsRadiantCopyWithImpl<$Res>
    extends _$IsRadiantCopyWithImpl<$Res, _$_IsRadiant>
    implements _$$_IsRadiantCopyWith<$Res> {
  __$$_IsRadiantCopyWithImpl(
      _$_IsRadiant _value, $Res Function(_$_IsRadiant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dire = null,
    Object? radiant = null,
  }) {
    return _then(_$_IsRadiant(
      dire: null == dire
          ? _value.dire
          : dire // ignore: cast_nullable_to_non_nullable
              as GameWinStatus,
      radiant: null == radiant
          ? _value.radiant
          : radiant // ignore: cast_nullable_to_non_nullable
              as GameWinStatus,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_IsRadiant extends _IsRadiant with DiagnosticableTreeMixin {
  const _$_IsRadiant(
      {@JsonKey(name: '0') required this.dire,
      @JsonKey(name: '1') required this.radiant})
      : super._();

  factory _$_IsRadiant.fromJson(Map<String, dynamic> json) =>
      _$$_IsRadiantFromJson(json);

  @override
  @JsonKey(name: '0')
  final GameWinStatus dire;
  @override
  @JsonKey(name: '1')
  final GameWinStatus radiant;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IsRadiant(dire: $dire, radiant: $radiant)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IsRadiant'))
      ..add(DiagnosticsProperty('dire', dire))
      ..add(DiagnosticsProperty('radiant', radiant));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsRadiant &&
            (identical(other.dire, dire) || other.dire == dire) &&
            (identical(other.radiant, radiant) || other.radiant == radiant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dire, radiant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsRadiantCopyWith<_$_IsRadiant> get copyWith =>
      __$$_IsRadiantCopyWithImpl<_$_IsRadiant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IsRadiantToJson(
      this,
    );
  }
}

abstract class _IsRadiant extends IsRadiant {
  const factory _IsRadiant(
      {@JsonKey(name: '0') required final GameWinStatus dire,
      @JsonKey(name: '1') required final GameWinStatus radiant}) = _$_IsRadiant;
  const _IsRadiant._() : super._();

  factory _IsRadiant.fromJson(Map<String, dynamic> json) =
      _$_IsRadiant.fromJson;

  @override
  @JsonKey(name: '0')
  GameWinStatus get dire;
  @override
  @JsonKey(name: '1')
  GameWinStatus get radiant;
  @override
  @JsonKey(ignore: true)
  _$$_IsRadiantCopyWith<_$_IsRadiant> get copyWith =>
      throw _privateConstructorUsedError;
}

LobbyType _$LobbyTypeFromJson(Map<String, dynamic> json) {
  return _LobbyType.fromJson(json);
}

/// @nodoc
mixin _$LobbyType {
  @JsonKey(name: '0')
  GameWinStatus? get normal => throw _privateConstructorUsedError;
  @JsonKey(name: '5')
  GameWinStatus? get rankedTeam => throw _privateConstructorUsedError;
  @JsonKey(name: '6')
  GameWinStatus? get rankedSolo => throw _privateConstructorUsedError;
  @JsonKey(name: '7')
  GameWinStatus? get ranked => throw _privateConstructorUsedError;
  @JsonKey(name: '9')
  GameWinStatus? get battleCup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LobbyTypeCopyWith<LobbyType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LobbyTypeCopyWith<$Res> {
  factory $LobbyTypeCopyWith(LobbyType value, $Res Function(LobbyType) then) =
      _$LobbyTypeCopyWithImpl<$Res, LobbyType>;
  @useResult
  $Res call(
      {@JsonKey(name: '0') GameWinStatus? normal,
      @JsonKey(name: '5') GameWinStatus? rankedTeam,
      @JsonKey(name: '6') GameWinStatus? rankedSolo,
      @JsonKey(name: '7') GameWinStatus? ranked,
      @JsonKey(name: '9') GameWinStatus? battleCup});

  $GameWinStatusCopyWith<$Res>? get normal;
  $GameWinStatusCopyWith<$Res>? get rankedTeam;
  $GameWinStatusCopyWith<$Res>? get rankedSolo;
  $GameWinStatusCopyWith<$Res>? get ranked;
  $GameWinStatusCopyWith<$Res>? get battleCup;
}

/// @nodoc
class _$LobbyTypeCopyWithImpl<$Res, $Val extends LobbyType>
    implements $LobbyTypeCopyWith<$Res> {
  _$LobbyTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? normal = freezed,
    Object? rankedTeam = freezed,
    Object? rankedSolo = freezed,
    Object? ranked = freezed,
    Object? battleCup = freezed,
  }) {
    return _then(_value.copyWith(
      normal: freezed == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      rankedTeam: freezed == rankedTeam
          ? _value.rankedTeam
          : rankedTeam // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      rankedSolo: freezed == rankedSolo
          ? _value.rankedSolo
          : rankedSolo // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      ranked: freezed == ranked
          ? _value.ranked
          : ranked // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      battleCup: freezed == battleCup
          ? _value.battleCup
          : battleCup // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get normal {
    if (_value.normal == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.normal!, (value) {
      return _then(_value.copyWith(normal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get rankedTeam {
    if (_value.rankedTeam == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.rankedTeam!, (value) {
      return _then(_value.copyWith(rankedTeam: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get rankedSolo {
    if (_value.rankedSolo == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.rankedSolo!, (value) {
      return _then(_value.copyWith(rankedSolo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get ranked {
    if (_value.ranked == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.ranked!, (value) {
      return _then(_value.copyWith(ranked: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get battleCup {
    if (_value.battleCup == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.battleCup!, (value) {
      return _then(_value.copyWith(battleCup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LobbyTypeCopyWith<$Res> implements $LobbyTypeCopyWith<$Res> {
  factory _$$_LobbyTypeCopyWith(
          _$_LobbyType value, $Res Function(_$_LobbyType) then) =
      __$$_LobbyTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '0') GameWinStatus? normal,
      @JsonKey(name: '5') GameWinStatus? rankedTeam,
      @JsonKey(name: '6') GameWinStatus? rankedSolo,
      @JsonKey(name: '7') GameWinStatus? ranked,
      @JsonKey(name: '9') GameWinStatus? battleCup});

  @override
  $GameWinStatusCopyWith<$Res>? get normal;
  @override
  $GameWinStatusCopyWith<$Res>? get rankedTeam;
  @override
  $GameWinStatusCopyWith<$Res>? get rankedSolo;
  @override
  $GameWinStatusCopyWith<$Res>? get ranked;
  @override
  $GameWinStatusCopyWith<$Res>? get battleCup;
}

/// @nodoc
class __$$_LobbyTypeCopyWithImpl<$Res>
    extends _$LobbyTypeCopyWithImpl<$Res, _$_LobbyType>
    implements _$$_LobbyTypeCopyWith<$Res> {
  __$$_LobbyTypeCopyWithImpl(
      _$_LobbyType _value, $Res Function(_$_LobbyType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? normal = freezed,
    Object? rankedTeam = freezed,
    Object? rankedSolo = freezed,
    Object? ranked = freezed,
    Object? battleCup = freezed,
  }) {
    return _then(_$_LobbyType(
      normal: freezed == normal
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      rankedTeam: freezed == rankedTeam
          ? _value.rankedTeam
          : rankedTeam // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      rankedSolo: freezed == rankedSolo
          ? _value.rankedSolo
          : rankedSolo // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      ranked: freezed == ranked
          ? _value.ranked
          : ranked // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      battleCup: freezed == battleCup
          ? _value.battleCup
          : battleCup // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_LobbyType extends _LobbyType with DiagnosticableTreeMixin {
  const _$_LobbyType(
      {@JsonKey(name: '0') required this.normal,
      @JsonKey(name: '5') required this.rankedTeam,
      @JsonKey(name: '6') required this.rankedSolo,
      @JsonKey(name: '7') required this.ranked,
      @JsonKey(name: '9') required this.battleCup})
      : super._();

  factory _$_LobbyType.fromJson(Map<String, dynamic> json) =>
      _$$_LobbyTypeFromJson(json);

  @override
  @JsonKey(name: '0')
  final GameWinStatus? normal;
  @override
  @JsonKey(name: '5')
  final GameWinStatus? rankedTeam;
  @override
  @JsonKey(name: '6')
  final GameWinStatus? rankedSolo;
  @override
  @JsonKey(name: '7')
  final GameWinStatus? ranked;
  @override
  @JsonKey(name: '9')
  final GameWinStatus? battleCup;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LobbyType(normal: $normal, rankedTeam: $rankedTeam, rankedSolo: $rankedSolo, ranked: $ranked, battleCup: $battleCup)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LobbyType'))
      ..add(DiagnosticsProperty('normal', normal))
      ..add(DiagnosticsProperty('rankedTeam', rankedTeam))
      ..add(DiagnosticsProperty('rankedSolo', rankedSolo))
      ..add(DiagnosticsProperty('ranked', ranked))
      ..add(DiagnosticsProperty('battleCup', battleCup));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LobbyType &&
            (identical(other.normal, normal) || other.normal == normal) &&
            (identical(other.rankedTeam, rankedTeam) ||
                other.rankedTeam == rankedTeam) &&
            (identical(other.rankedSolo, rankedSolo) ||
                other.rankedSolo == rankedSolo) &&
            (identical(other.ranked, ranked) || other.ranked == ranked) &&
            (identical(other.battleCup, battleCup) ||
                other.battleCup == battleCup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, normal, rankedTeam, rankedSolo, ranked, battleCup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LobbyTypeCopyWith<_$_LobbyType> get copyWith =>
      __$$_LobbyTypeCopyWithImpl<_$_LobbyType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LobbyTypeToJson(
      this,
    );
  }
}

abstract class _LobbyType extends LobbyType {
  const factory _LobbyType(
          {@JsonKey(name: '0') required final GameWinStatus? normal,
          @JsonKey(name: '5') required final GameWinStatus? rankedTeam,
          @JsonKey(name: '6') required final GameWinStatus? rankedSolo,
          @JsonKey(name: '7') required final GameWinStatus? ranked,
          @JsonKey(name: '9') required final GameWinStatus? battleCup}) =
      _$_LobbyType;
  const _LobbyType._() : super._();

  factory _LobbyType.fromJson(Map<String, dynamic> json) =
      _$_LobbyType.fromJson;

  @override
  @JsonKey(name: '0')
  GameWinStatus? get normal;
  @override
  @JsonKey(name: '5')
  GameWinStatus? get rankedTeam;
  @override
  @JsonKey(name: '6')
  GameWinStatus? get rankedSolo;
  @override
  @JsonKey(name: '7')
  GameWinStatus? get ranked;
  @override
  @JsonKey(name: '9')
  GameWinStatus? get battleCup;
  @override
  @JsonKey(ignore: true)
  _$$_LobbyTypeCopyWith<_$_LobbyType> get copyWith =>
      throw _privateConstructorUsedError;
}

GameMode _$GameModeFromJson(Map<String, dynamic> json) {
  return _GameMode.fromJson(json);
}

/// @nodoc
mixin _$GameMode {
  @JsonKey(name: '0')
  GameWinStatus? get unknown => throw _privateConstructorUsedError;
  @JsonKey(name: '1')
  GameWinStatus? get allPick => throw _privateConstructorUsedError;
  @JsonKey(name: '2')
  GameWinStatus? get captainMode => throw _privateConstructorUsedError;
  @JsonKey(name: '3')
  GameWinStatus? get randomDraft => throw _privateConstructorUsedError;
  @JsonKey(name: '4')
  GameWinStatus? get singleDraft => throw _privateConstructorUsedError;
  @JsonKey(name: '5')
  GameWinStatus? get allRandom => throw _privateConstructorUsedError;
  @JsonKey(name: '15')
  GameWinStatus? get custom => throw _privateConstructorUsedError;
  @JsonKey(name: '16')
  GameWinStatus? get captainsDraft => throw _privateConstructorUsedError;
  @JsonKey(name: '18')
  GameWinStatus? get abilityDraft => throw _privateConstructorUsedError;
  @JsonKey(name: '19')
  GameWinStatus? get event => throw _privateConstructorUsedError;
  @JsonKey(name: '22')
  GameWinStatus? get allDraft => throw _privateConstructorUsedError;
  @JsonKey(name: '23')
  GameWinStatus? get turbo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameModeCopyWith<GameMode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModeCopyWith<$Res> {
  factory $GameModeCopyWith(GameMode value, $Res Function(GameMode) then) =
      _$GameModeCopyWithImpl<$Res, GameMode>;
  @useResult
  $Res call(
      {@JsonKey(name: '0') GameWinStatus? unknown,
      @JsonKey(name: '1') GameWinStatus? allPick,
      @JsonKey(name: '2') GameWinStatus? captainMode,
      @JsonKey(name: '3') GameWinStatus? randomDraft,
      @JsonKey(name: '4') GameWinStatus? singleDraft,
      @JsonKey(name: '5') GameWinStatus? allRandom,
      @JsonKey(name: '15') GameWinStatus? custom,
      @JsonKey(name: '16') GameWinStatus? captainsDraft,
      @JsonKey(name: '18') GameWinStatus? abilityDraft,
      @JsonKey(name: '19') GameWinStatus? event,
      @JsonKey(name: '22') GameWinStatus? allDraft,
      @JsonKey(name: '23') GameWinStatus? turbo});

  $GameWinStatusCopyWith<$Res>? get unknown;
  $GameWinStatusCopyWith<$Res>? get allPick;
  $GameWinStatusCopyWith<$Res>? get captainMode;
  $GameWinStatusCopyWith<$Res>? get randomDraft;
  $GameWinStatusCopyWith<$Res>? get singleDraft;
  $GameWinStatusCopyWith<$Res>? get allRandom;
  $GameWinStatusCopyWith<$Res>? get custom;
  $GameWinStatusCopyWith<$Res>? get captainsDraft;
  $GameWinStatusCopyWith<$Res>? get abilityDraft;
  $GameWinStatusCopyWith<$Res>? get event;
  $GameWinStatusCopyWith<$Res>? get allDraft;
  $GameWinStatusCopyWith<$Res>? get turbo;
}

/// @nodoc
class _$GameModeCopyWithImpl<$Res, $Val extends GameMode>
    implements $GameModeCopyWith<$Res> {
  _$GameModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unknown = freezed,
    Object? allPick = freezed,
    Object? captainMode = freezed,
    Object? randomDraft = freezed,
    Object? singleDraft = freezed,
    Object? allRandom = freezed,
    Object? custom = freezed,
    Object? captainsDraft = freezed,
    Object? abilityDraft = freezed,
    Object? event = freezed,
    Object? allDraft = freezed,
    Object? turbo = freezed,
  }) {
    return _then(_value.copyWith(
      unknown: freezed == unknown
          ? _value.unknown
          : unknown // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      allPick: freezed == allPick
          ? _value.allPick
          : allPick // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      captainMode: freezed == captainMode
          ? _value.captainMode
          : captainMode // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      randomDraft: freezed == randomDraft
          ? _value.randomDraft
          : randomDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      singleDraft: freezed == singleDraft
          ? _value.singleDraft
          : singleDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      allRandom: freezed == allRandom
          ? _value.allRandom
          : allRandom // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      custom: freezed == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      captainsDraft: freezed == captainsDraft
          ? _value.captainsDraft
          : captainsDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      abilityDraft: freezed == abilityDraft
          ? _value.abilityDraft
          : abilityDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      allDraft: freezed == allDraft
          ? _value.allDraft
          : allDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      turbo: freezed == turbo
          ? _value.turbo
          : turbo // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get unknown {
    if (_value.unknown == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.unknown!, (value) {
      return _then(_value.copyWith(unknown: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get allPick {
    if (_value.allPick == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.allPick!, (value) {
      return _then(_value.copyWith(allPick: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get captainMode {
    if (_value.captainMode == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.captainMode!, (value) {
      return _then(_value.copyWith(captainMode: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get randomDraft {
    if (_value.randomDraft == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.randomDraft!, (value) {
      return _then(_value.copyWith(randomDraft: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get singleDraft {
    if (_value.singleDraft == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.singleDraft!, (value) {
      return _then(_value.copyWith(singleDraft: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get allRandom {
    if (_value.allRandom == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.allRandom!, (value) {
      return _then(_value.copyWith(allRandom: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get custom {
    if (_value.custom == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.custom!, (value) {
      return _then(_value.copyWith(custom: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get captainsDraft {
    if (_value.captainsDraft == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.captainsDraft!, (value) {
      return _then(_value.copyWith(captainsDraft: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get abilityDraft {
    if (_value.abilityDraft == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.abilityDraft!, (value) {
      return _then(_value.copyWith(abilityDraft: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get allDraft {
    if (_value.allDraft == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.allDraft!, (value) {
      return _then(_value.copyWith(allDraft: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GameWinStatusCopyWith<$Res>? get turbo {
    if (_value.turbo == null) {
      return null;
    }

    return $GameWinStatusCopyWith<$Res>(_value.turbo!, (value) {
      return _then(_value.copyWith(turbo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameModeCopyWith<$Res> implements $GameModeCopyWith<$Res> {
  factory _$$_GameModeCopyWith(
          _$_GameMode value, $Res Function(_$_GameMode) then) =
      __$$_GameModeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '0') GameWinStatus? unknown,
      @JsonKey(name: '1') GameWinStatus? allPick,
      @JsonKey(name: '2') GameWinStatus? captainMode,
      @JsonKey(name: '3') GameWinStatus? randomDraft,
      @JsonKey(name: '4') GameWinStatus? singleDraft,
      @JsonKey(name: '5') GameWinStatus? allRandom,
      @JsonKey(name: '15') GameWinStatus? custom,
      @JsonKey(name: '16') GameWinStatus? captainsDraft,
      @JsonKey(name: '18') GameWinStatus? abilityDraft,
      @JsonKey(name: '19') GameWinStatus? event,
      @JsonKey(name: '22') GameWinStatus? allDraft,
      @JsonKey(name: '23') GameWinStatus? turbo});

  @override
  $GameWinStatusCopyWith<$Res>? get unknown;
  @override
  $GameWinStatusCopyWith<$Res>? get allPick;
  @override
  $GameWinStatusCopyWith<$Res>? get captainMode;
  @override
  $GameWinStatusCopyWith<$Res>? get randomDraft;
  @override
  $GameWinStatusCopyWith<$Res>? get singleDraft;
  @override
  $GameWinStatusCopyWith<$Res>? get allRandom;
  @override
  $GameWinStatusCopyWith<$Res>? get custom;
  @override
  $GameWinStatusCopyWith<$Res>? get captainsDraft;
  @override
  $GameWinStatusCopyWith<$Res>? get abilityDraft;
  @override
  $GameWinStatusCopyWith<$Res>? get event;
  @override
  $GameWinStatusCopyWith<$Res>? get allDraft;
  @override
  $GameWinStatusCopyWith<$Res>? get turbo;
}

/// @nodoc
class __$$_GameModeCopyWithImpl<$Res>
    extends _$GameModeCopyWithImpl<$Res, _$_GameMode>
    implements _$$_GameModeCopyWith<$Res> {
  __$$_GameModeCopyWithImpl(
      _$_GameMode _value, $Res Function(_$_GameMode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unknown = freezed,
    Object? allPick = freezed,
    Object? captainMode = freezed,
    Object? randomDraft = freezed,
    Object? singleDraft = freezed,
    Object? allRandom = freezed,
    Object? custom = freezed,
    Object? captainsDraft = freezed,
    Object? abilityDraft = freezed,
    Object? event = freezed,
    Object? allDraft = freezed,
    Object? turbo = freezed,
  }) {
    return _then(_$_GameMode(
      unknown: freezed == unknown
          ? _value.unknown
          : unknown // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      allPick: freezed == allPick
          ? _value.allPick
          : allPick // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      captainMode: freezed == captainMode
          ? _value.captainMode
          : captainMode // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      randomDraft: freezed == randomDraft
          ? _value.randomDraft
          : randomDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      singleDraft: freezed == singleDraft
          ? _value.singleDraft
          : singleDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      allRandom: freezed == allRandom
          ? _value.allRandom
          : allRandom // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      custom: freezed == custom
          ? _value.custom
          : custom // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      captainsDraft: freezed == captainsDraft
          ? _value.captainsDraft
          : captainsDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      abilityDraft: freezed == abilityDraft
          ? _value.abilityDraft
          : abilityDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      allDraft: freezed == allDraft
          ? _value.allDraft
          : allDraft // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
      turbo: freezed == turbo
          ? _value.turbo
          : turbo // ignore: cast_nullable_to_non_nullable
              as GameWinStatus?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_GameMode extends _GameMode with DiagnosticableTreeMixin {
  const _$_GameMode(
      {@JsonKey(name: '0') this.unknown,
      @JsonKey(name: '1') this.allPick,
      @JsonKey(name: '2') this.captainMode,
      @JsonKey(name: '3') this.randomDraft,
      @JsonKey(name: '4') this.singleDraft,
      @JsonKey(name: '5') this.allRandom,
      @JsonKey(name: '15') this.custom,
      @JsonKey(name: '16') this.captainsDraft,
      @JsonKey(name: '18') this.abilityDraft,
      @JsonKey(name: '19') this.event,
      @JsonKey(name: '22') this.allDraft,
      @JsonKey(name: '23') this.turbo})
      : super._();

  factory _$_GameMode.fromJson(Map<String, dynamic> json) =>
      _$$_GameModeFromJson(json);

  @override
  @JsonKey(name: '0')
  final GameWinStatus? unknown;
  @override
  @JsonKey(name: '1')
  final GameWinStatus? allPick;
  @override
  @JsonKey(name: '2')
  final GameWinStatus? captainMode;
  @override
  @JsonKey(name: '3')
  final GameWinStatus? randomDraft;
  @override
  @JsonKey(name: '4')
  final GameWinStatus? singleDraft;
  @override
  @JsonKey(name: '5')
  final GameWinStatus? allRandom;
  @override
  @JsonKey(name: '15')
  final GameWinStatus? custom;
  @override
  @JsonKey(name: '16')
  final GameWinStatus? captainsDraft;
  @override
  @JsonKey(name: '18')
  final GameWinStatus? abilityDraft;
  @override
  @JsonKey(name: '19')
  final GameWinStatus? event;
  @override
  @JsonKey(name: '22')
  final GameWinStatus? allDraft;
  @override
  @JsonKey(name: '23')
  final GameWinStatus? turbo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameMode(unknown: $unknown, allPick: $allPick, captainMode: $captainMode, randomDraft: $randomDraft, singleDraft: $singleDraft, allRandom: $allRandom, custom: $custom, captainsDraft: $captainsDraft, abilityDraft: $abilityDraft, event: $event, allDraft: $allDraft, turbo: $turbo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameMode'))
      ..add(DiagnosticsProperty('unknown', unknown))
      ..add(DiagnosticsProperty('allPick', allPick))
      ..add(DiagnosticsProperty('captainMode', captainMode))
      ..add(DiagnosticsProperty('randomDraft', randomDraft))
      ..add(DiagnosticsProperty('singleDraft', singleDraft))
      ..add(DiagnosticsProperty('allRandom', allRandom))
      ..add(DiagnosticsProperty('custom', custom))
      ..add(DiagnosticsProperty('captainsDraft', captainsDraft))
      ..add(DiagnosticsProperty('abilityDraft', abilityDraft))
      ..add(DiagnosticsProperty('event', event))
      ..add(DiagnosticsProperty('allDraft', allDraft))
      ..add(DiagnosticsProperty('turbo', turbo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameMode &&
            (identical(other.unknown, unknown) || other.unknown == unknown) &&
            (identical(other.allPick, allPick) || other.allPick == allPick) &&
            (identical(other.captainMode, captainMode) ||
                other.captainMode == captainMode) &&
            (identical(other.randomDraft, randomDraft) ||
                other.randomDraft == randomDraft) &&
            (identical(other.singleDraft, singleDraft) ||
                other.singleDraft == singleDraft) &&
            (identical(other.allRandom, allRandom) ||
                other.allRandom == allRandom) &&
            (identical(other.custom, custom) || other.custom == custom) &&
            (identical(other.captainsDraft, captainsDraft) ||
                other.captainsDraft == captainsDraft) &&
            (identical(other.abilityDraft, abilityDraft) ||
                other.abilityDraft == abilityDraft) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.allDraft, allDraft) ||
                other.allDraft == allDraft) &&
            (identical(other.turbo, turbo) || other.turbo == turbo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      unknown,
      allPick,
      captainMode,
      randomDraft,
      singleDraft,
      allRandom,
      custom,
      captainsDraft,
      abilityDraft,
      event,
      allDraft,
      turbo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameModeCopyWith<_$_GameMode> get copyWith =>
      __$$_GameModeCopyWithImpl<_$_GameMode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameModeToJson(
      this,
    );
  }
}

abstract class _GameMode extends GameMode {
  const factory _GameMode(
      {@JsonKey(name: '0') final GameWinStatus? unknown,
      @JsonKey(name: '1') final GameWinStatus? allPick,
      @JsonKey(name: '2') final GameWinStatus? captainMode,
      @JsonKey(name: '3') final GameWinStatus? randomDraft,
      @JsonKey(name: '4') final GameWinStatus? singleDraft,
      @JsonKey(name: '5') final GameWinStatus? allRandom,
      @JsonKey(name: '15') final GameWinStatus? custom,
      @JsonKey(name: '16') final GameWinStatus? captainsDraft,
      @JsonKey(name: '18') final GameWinStatus? abilityDraft,
      @JsonKey(name: '19') final GameWinStatus? event,
      @JsonKey(name: '22') final GameWinStatus? allDraft,
      @JsonKey(name: '23') final GameWinStatus? turbo}) = _$_GameMode;
  const _GameMode._() : super._();

  factory _GameMode.fromJson(Map<String, dynamic> json) = _$_GameMode.fromJson;

  @override
  @JsonKey(name: '0')
  GameWinStatus? get unknown;
  @override
  @JsonKey(name: '1')
  GameWinStatus? get allPick;
  @override
  @JsonKey(name: '2')
  GameWinStatus? get captainMode;
  @override
  @JsonKey(name: '3')
  GameWinStatus? get randomDraft;
  @override
  @JsonKey(name: '4')
  GameWinStatus? get singleDraft;
  @override
  @JsonKey(name: '5')
  GameWinStatus? get allRandom;
  @override
  @JsonKey(name: '15')
  GameWinStatus? get custom;
  @override
  @JsonKey(name: '16')
  GameWinStatus? get captainsDraft;
  @override
  @JsonKey(name: '18')
  GameWinStatus? get abilityDraft;
  @override
  @JsonKey(name: '19')
  GameWinStatus? get event;
  @override
  @JsonKey(name: '22')
  GameWinStatus? get allDraft;
  @override
  @JsonKey(name: '23')
  GameWinStatus? get turbo;
  @override
  @JsonKey(ignore: true)
  _$$_GameModeCopyWith<_$_GameMode> get copyWith =>
      throw _privateConstructorUsedError;
}

GameWinStatus _$GameWinStatusFromJson(Map<String, dynamic> json) {
  return _GameWinStatus.fromJson(json);
}

/// @nodoc
mixin _$GameWinStatus {
  int get games => throw _privateConstructorUsedError;
  int get win => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameWinStatusCopyWith<GameWinStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameWinStatusCopyWith<$Res> {
  factory $GameWinStatusCopyWith(
          GameWinStatus value, $Res Function(GameWinStatus) then) =
      _$GameWinStatusCopyWithImpl<$Res, GameWinStatus>;
  @useResult
  $Res call({int games, int win});
}

/// @nodoc
class _$GameWinStatusCopyWithImpl<$Res, $Val extends GameWinStatus>
    implements $GameWinStatusCopyWith<$Res> {
  _$GameWinStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? win = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_GameWinStatusCopyWith<$Res>
    implements $GameWinStatusCopyWith<$Res> {
  factory _$$_GameWinStatusCopyWith(
          _$_GameWinStatus value, $Res Function(_$_GameWinStatus) then) =
      __$$_GameWinStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int games, int win});
}

/// @nodoc
class __$$_GameWinStatusCopyWithImpl<$Res>
    extends _$GameWinStatusCopyWithImpl<$Res, _$_GameWinStatus>
    implements _$$_GameWinStatusCopyWith<$Res> {
  __$$_GameWinStatusCopyWithImpl(
      _$_GameWinStatus _value, $Res Function(_$_GameWinStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? win = null,
  }) {
    return _then(_$_GameWinStatus(
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
class _$_GameWinStatus extends _GameWinStatus with DiagnosticableTreeMixin {
  const _$_GameWinStatus({required this.games, required this.win}) : super._();

  factory _$_GameWinStatus.fromJson(Map<String, dynamic> json) =>
      _$$_GameWinStatusFromJson(json);

  @override
  final int games;
  @override
  final int win;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameWinStatus(games: $games, win: $win)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameWinStatus'))
      ..add(DiagnosticsProperty('games', games))
      ..add(DiagnosticsProperty('win', win));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameWinStatus &&
            (identical(other.games, games) || other.games == games) &&
            (identical(other.win, win) || other.win == win));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, games, win);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameWinStatusCopyWith<_$_GameWinStatus> get copyWith =>
      __$$_GameWinStatusCopyWithImpl<_$_GameWinStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameWinStatusToJson(
      this,
    );
  }
}

abstract class _GameWinStatus extends GameWinStatus {
  const factory _GameWinStatus(
      {required final int games, required final int win}) = _$_GameWinStatus;
  const _GameWinStatus._() : super._();

  factory _GameWinStatus.fromJson(Map<String, dynamic> json) =
      _$_GameWinStatus.fromJson;

  @override
  int get games;
  @override
  int get win;
  @override
  @JsonKey(ignore: true)
  _$$_GameWinStatusCopyWith<_$_GameWinStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
