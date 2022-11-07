// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'idstat_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdStat _$IdStatFromJson(Map<String, dynamic> json) {
  return _IdStat.fromJson(json);
}

/// @nodoc
mixin _$IdStat {
  int? get competitiveRank => throw _privateConstructorUsedError;
  int? get rankTier => throw _privateConstructorUsedError;
  ProfileApi? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdStatCopyWith<IdStat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdStatCopyWith<$Res> {
  factory $IdStatCopyWith(IdStat value, $Res Function(IdStat) then) =
      _$IdStatCopyWithImpl<$Res, IdStat>;
  @useResult
  $Res call({int? competitiveRank, int? rankTier, ProfileApi? profile});

  $ProfileApiCopyWith<$Res>? get profile;
}

/// @nodoc
class _$IdStatCopyWithImpl<$Res, $Val extends IdStat>
    implements $IdStatCopyWith<$Res> {
  _$IdStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? competitiveRank = freezed,
    Object? rankTier = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      competitiveRank: freezed == competitiveRank
          ? _value.competitiveRank
          : competitiveRank // ignore: cast_nullable_to_non_nullable
              as int?,
      rankTier: freezed == rankTier
          ? _value.rankTier
          : rankTier // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileApi?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileApiCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileApiCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdStatCopyWith<$Res> implements $IdStatCopyWith<$Res> {
  factory _$$_IdStatCopyWith(_$_IdStat value, $Res Function(_$_IdStat) then) =
      __$$_IdStatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? competitiveRank, int? rankTier, ProfileApi? profile});

  @override
  $ProfileApiCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_IdStatCopyWithImpl<$Res>
    extends _$IdStatCopyWithImpl<$Res, _$_IdStat>
    implements _$$_IdStatCopyWith<$Res> {
  __$$_IdStatCopyWithImpl(_$_IdStat _value, $Res Function(_$_IdStat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? competitiveRank = freezed,
    Object? rankTier = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_IdStat(
      competitiveRank: freezed == competitiveRank
          ? _value.competitiveRank
          : competitiveRank // ignore: cast_nullable_to_non_nullable
              as int?,
      rankTier: freezed == rankTier
          ? _value.rankTier
          : rankTier // ignore: cast_nullable_to_non_nullable
              as int?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileApi?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_IdStat extends _IdStat with DiagnosticableTreeMixin {
  const _$_IdStat(
      {required this.competitiveRank,
      required this.rankTier,
      required this.profile})
      : super._();

  factory _$_IdStat.fromJson(Map<String, dynamic> json) =>
      _$$_IdStatFromJson(json);

  @override
  final int? competitiveRank;
  @override
  final int? rankTier;
  @override
  final ProfileApi? profile;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IdStat(competitiveRank: $competitiveRank, rankTier: $rankTier, profile: $profile)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IdStat'))
      ..add(DiagnosticsProperty('competitiveRank', competitiveRank))
      ..add(DiagnosticsProperty('rankTier', rankTier))
      ..add(DiagnosticsProperty('profile', profile));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdStat &&
            (identical(other.competitiveRank, competitiveRank) ||
                other.competitiveRank == competitiveRank) &&
            (identical(other.rankTier, rankTier) ||
                other.rankTier == rankTier) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, competitiveRank, rankTier, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdStatCopyWith<_$_IdStat> get copyWith =>
      __$$_IdStatCopyWithImpl<_$_IdStat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdStatToJson(
      this,
    );
  }
}

abstract class _IdStat extends IdStat {
  const factory _IdStat(
      {required final int? competitiveRank,
      required final int? rankTier,
      required final ProfileApi? profile}) = _$_IdStat;
  const _IdStat._() : super._();

  factory _IdStat.fromJson(Map<String, dynamic> json) = _$_IdStat.fromJson;

  @override
  int? get competitiveRank;
  @override
  int? get rankTier;
  @override
  ProfileApi? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_IdStatCopyWith<_$_IdStat> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileApi _$ProfileApiFromJson(Map<String, dynamic> json) {
  return _ProfileApi.fromJson(json);
}

/// @nodoc
mixin _$ProfileApi {
  int? get accountId => throw _privateConstructorUsedError;
  String get personaname => throw _privateConstructorUsedError;
  String? get avatarmedium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileApiCopyWith<ProfileApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileApiCopyWith<$Res> {
  factory $ProfileApiCopyWith(
          ProfileApi value, $Res Function(ProfileApi) then) =
      _$ProfileApiCopyWithImpl<$Res, ProfileApi>;
  @useResult
  $Res call({int? accountId, String personaname, String? avatarmedium});
}

/// @nodoc
class _$ProfileApiCopyWithImpl<$Res, $Val extends ProfileApi>
    implements $ProfileApiCopyWith<$Res> {
  _$ProfileApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? personaname = null,
    Object? avatarmedium = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      personaname: null == personaname
          ? _value.personaname
          : personaname // ignore: cast_nullable_to_non_nullable
              as String,
      avatarmedium: freezed == avatarmedium
          ? _value.avatarmedium
          : avatarmedium // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileApiCopyWith<$Res>
    implements $ProfileApiCopyWith<$Res> {
  factory _$$_ProfileApiCopyWith(
          _$_ProfileApi value, $Res Function(_$_ProfileApi) then) =
      __$$_ProfileApiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? accountId, String personaname, String? avatarmedium});
}

/// @nodoc
class __$$_ProfileApiCopyWithImpl<$Res>
    extends _$ProfileApiCopyWithImpl<$Res, _$_ProfileApi>
    implements _$$_ProfileApiCopyWith<$Res> {
  __$$_ProfileApiCopyWithImpl(
      _$_ProfileApi _value, $Res Function(_$_ProfileApi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? personaname = null,
    Object? avatarmedium = freezed,
  }) {
    return _then(_$_ProfileApi(
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      personaname: null == personaname
          ? _value.personaname
          : personaname // ignore: cast_nullable_to_non_nullable
              as String,
      avatarmedium: freezed == avatarmedium
          ? _value.avatarmedium
          : avatarmedium // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ProfileApi extends _ProfileApi with DiagnosticableTreeMixin {
  const _$_ProfileApi(
      {required this.accountId,
      required this.personaname,
      required this.avatarmedium})
      : super._();

  factory _$_ProfileApi.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileApiFromJson(json);

  @override
  final int? accountId;
  @override
  final String personaname;
  @override
  final String? avatarmedium;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileApi(accountId: $accountId, personaname: $personaname, avatarmedium: $avatarmedium)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileApi'))
      ..add(DiagnosticsProperty('accountId', accountId))
      ..add(DiagnosticsProperty('personaname', personaname))
      ..add(DiagnosticsProperty('avatarmedium', avatarmedium));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileApi &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.personaname, personaname) ||
                other.personaname == personaname) &&
            (identical(other.avatarmedium, avatarmedium) ||
                other.avatarmedium == avatarmedium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountId, personaname, avatarmedium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileApiCopyWith<_$_ProfileApi> get copyWith =>
      __$$_ProfileApiCopyWithImpl<_$_ProfileApi>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileApiToJson(
      this,
    );
  }
}

abstract class _ProfileApi extends ProfileApi {
  const factory _ProfileApi(
      {required final int? accountId,
      required final String personaname,
      required final String? avatarmedium}) = _$_ProfileApi;
  const _ProfileApi._() : super._();

  factory _ProfileApi.fromJson(Map<String, dynamic> json) =
      _$_ProfileApi.fromJson;

  @override
  int? get accountId;
  @override
  String get personaname;
  @override
  String? get avatarmedium;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileApiCopyWith<_$_ProfileApi> get copyWith =>
      throw _privateConstructorUsedError;
}
