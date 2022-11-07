// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const UserData._();
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory UserData({
    @JsonKey(defaultValue: false) required bool isGuest,
    required String? steamId,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  factory UserData.fresh() => const UserData(
        isGuest: false,
        steamId: null,
      );
}

enum UserDataKeys {
  isGuest('is_guest'),
  steamId('steam_id');

  final String key;
  const UserDataKeys(this.key);
}
