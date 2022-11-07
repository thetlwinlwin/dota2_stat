// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingData _$SettingDataFromJson(Map<String, dynamic> json) {
  return _SettingData.fromJson(json);
}

/// @nodoc
mixin _$SettingData {
  bool get isGrid => throw _privateConstructorUsedError;
  bool get isDark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingDataCopyWith<SettingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingDataCopyWith<$Res> {
  factory $SettingDataCopyWith(
          SettingData value, $Res Function(SettingData) then) =
      _$SettingDataCopyWithImpl<$Res, SettingData>;
  @useResult
  $Res call({bool isGrid, bool isDark});
}

/// @nodoc
class _$SettingDataCopyWithImpl<$Res, $Val extends SettingData>
    implements $SettingDataCopyWith<$Res> {
  _$SettingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGrid = null,
    Object? isDark = null,
  }) {
    return _then(_value.copyWith(
      isGrid: null == isGrid
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingDataCopyWith<$Res>
    implements $SettingDataCopyWith<$Res> {
  factory _$$_SettingDataCopyWith(
          _$_SettingData value, $Res Function(_$_SettingData) then) =
      __$$_SettingDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isGrid, bool isDark});
}

/// @nodoc
class __$$_SettingDataCopyWithImpl<$Res>
    extends _$SettingDataCopyWithImpl<$Res, _$_SettingData>
    implements _$$_SettingDataCopyWith<$Res> {
  __$$_SettingDataCopyWithImpl(
      _$_SettingData _value, $Res Function(_$_SettingData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGrid = null,
    Object? isDark = null,
  }) {
    return _then(_$_SettingData(
      isGrid: null == isGrid
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_SettingData extends _SettingData {
  const _$_SettingData({required this.isGrid, required this.isDark})
      : super._();

  factory _$_SettingData.fromJson(Map<String, dynamic> json) =>
      _$$_SettingDataFromJson(json);

  @override
  final bool isGrid;
  @override
  final bool isDark;

  @override
  String toString() {
    return 'SettingData(isGrid: $isGrid, isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingData &&
            (identical(other.isGrid, isGrid) || other.isGrid == isGrid) &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isGrid, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingDataCopyWith<_$_SettingData> get copyWith =>
      __$$_SettingDataCopyWithImpl<_$_SettingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingDataToJson(
      this,
    );
  }
}

abstract class _SettingData extends SettingData {
  const factory _SettingData(
      {required final bool isGrid,
      required final bool isDark}) = _$_SettingData;
  const _SettingData._() : super._();

  factory _SettingData.fromJson(Map<String, dynamic> json) =
      _$_SettingData.fromJson;

  @override
  bool get isGrid;
  @override
  bool get isDark;
  @override
  @JsonKey(ignore: true)
  _$$_SettingDataCopyWith<_$_SettingData> get copyWith =>
      throw _privateConstructorUsedError;
}
