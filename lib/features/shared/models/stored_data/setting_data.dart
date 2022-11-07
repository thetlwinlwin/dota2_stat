// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_data.freezed.dart';
part 'setting_data.g.dart';

@freezed
class SettingData with _$SettingData {
  const SettingData._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SettingData({
    required bool isGrid,
    required bool isDark,
  }) = _SettingData;

  factory SettingData.fromJson(Map<String, dynamic> json) =>
      _$SettingDataFromJson(json);

  factory SettingData.original() =>
      const SettingData(isGrid: true, isDark: true);
}

enum SettingDataKeys {
  isGrid('is_grid'),
  isDark('is_dark');

  final String key;
  const SettingDataKeys(this.key);
}
