// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

  String get getTime {
    final fromUnixToLocal = DateTime.fromMillisecondsSinceEpoch(
      startTime * 1000,
      isUtc: false,
    );
    final startTimeDate = fromUnixToLocal.toIso8601String().split('T')[0];
    final timeOfDay = TimeOfDay.fromDateTime(fromUnixToLocal);
    return '$startTimeDate ${_stdTime(timeOfDay)}';
  }

  String get getTeam => playerSlot <= 127 ? 'Radient' : 'Dire';

  bool get getResult =>
      radiantWin && playerSlot <= 127 || !radiantWin && playerSlot > 127;

  String get getPartySize => 'x$partySize';

  String _stdTime(TimeOfDay timeOfDay) {
    final hour = _addLeadingZeroIfNeeded(timeOfDay.hour);
    final min = _addLeadingZeroIfNeeded(timeOfDay.minute);
    return '$hour:$min ${timeOfDay.period.name}';
  }

  String _addLeadingZeroIfNeeded(int value) {
    if (value < 10) {
      return '0$value';
    }
    return value.toString();
  }

  static List<RecentMatches> _decodeAndParse(String jsonBody) {
    final List<dynamic> json = jsonDecode(jsonBody);
    return json.map((e) => RecentMatches.fromJson(e)).toList();
  }

  static Future<List<RecentMatches>> getJson(String jsonBody) {
    return compute(_decodeAndParse, jsonBody);
  }
}
