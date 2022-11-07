// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recents_api_model.g.dart';
part 'recents_api_model.freezed.dart';

@Freezed()
class RecentMatches with _$RecentMatches {
  const RecentMatches._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RecentMatches({
    required int matchId,
    required int playerSlot,
    required bool radiantWin,
    required int duration,
    required int gameMode,
    required int lobbyType,
    required int heroId,
    required int startTime,
    required int kills,
    required int deaths,
    required int assists,
    @JsonKey(name: 'average_rank') required int? avgRank,
    @JsonKey(name: 'xp_per_min') required int xpm,
    @JsonKey(name: 'gold_per_min') required int gpm,
    @JsonKey(defaultValue: 1) required int? partySize,
  }) = _RecentMatches;

  factory RecentMatches.fromJson(Map<String, dynamic> json) =>
      _$RecentMatchesFromJson(json);

  bool get isRadient => playerSlot <= 127;

  static List<RecentMatches> _decodeAndParse(String jsonBody) {
    final List<dynamic> json = jsonDecode(jsonBody);
    return json.map((e) => RecentMatches.fromJson(e)).toList();
  }

  static Future<List<RecentMatches>> getJson(String jsonBody) {
    return compute(_decodeAndParse, jsonBody);
  }
}
