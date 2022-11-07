// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'idstat_api_model.freezed.dart';
part 'idstat_api_model.g.dart';

@freezed
class IdStat with _$IdStat {
  const IdStat._();
  @JsonSerializable(
    explicitToJson: true,
    fieldRename: FieldRename.snake,
  )
  const factory IdStat({
    required int? competitiveRank,
    required int? rankTier,
    required ProfileApi? profile,
  }) = _IdStat;

  factory IdStat.fromJson(Map<String, dynamic> json) => _$IdStatFromJson(json);

  static IdStat _decodeAndParse(String jsonBody) {
    final json = jsonDecode(jsonBody);
    return IdStat.fromJson(json);
  }

  static Future<IdStat> getJson(String jsonBody) {
    return compute(_decodeAndParse, jsonBody);
  }

  factory IdStat.guest() => IdStat(
        competitiveRank: null,
        rankTier: null,
        profile: ProfileApi.guest(),
      );
}

@freezed
class ProfileApi with _$ProfileApi {
  const ProfileApi._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProfileApi({
    required int? accountId,
    required String personaname,
    required String? avatarmedium,
  }) = _ProfileApi;

  factory ProfileApi.fromJson(Map<String, dynamic> json) =>
      _$ProfileApiFromJson(json);

  factory ProfileApi.guest() => const ProfileApi(
        accountId: null,
        personaname: 'Guest',
        avatarmedium: null,
      );
  bool get isGuest => personaname != 'Guest';
}
