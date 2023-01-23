// ignore_for_file: invalid_annotation_target
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_stats_api_model.g.dart';
part 'player_stats_api_model.freezed.dart';

//FIXME: This heavily rely on source api. Below numbers are hand-picked

@Freezed()
class PlayerStats with _$PlayerStats {
  const PlayerStats._();
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory PlayerStats({
    required GameMode gameMode,
    required LobbyType lobbyType,
    required IsRadiant isRadiant,
  }) = _PlayerStats;

  factory PlayerStats.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatsFromJson(json);

  static PlayerStats _decodeAndParse(String jsonBody) {
    return PlayerStats.fromJson(jsonDecode(jsonBody));
  }

  static Future<PlayerStats> getJson(String jsonBody) {
    return compute(_decodeAndParse, jsonBody);
  }
}

@Freezed()
class IsRadiant with _$IsRadiant {
  const IsRadiant._();
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory IsRadiant({
    @JsonKey(name: '0') required GameWinStatus dire,
    @JsonKey(name: '1') required GameWinStatus radiant,
  }) = _IsRadiant;

  factory IsRadiant.fromJson(Map<String, dynamic> json) =>
      _$IsRadiantFromJson(json);

  Map<String, String> get winLose => {
        'win': '${dire.win + radiant.win}',
        'lose': '${dire.lose + radiant.lose}',
        'winRate':
            '${((radiant.winRate + dire.winRate) / 2).toStringAsFixed(2)}%',
      };
}

@Freezed()
class LobbyType with _$LobbyType {
  const LobbyType._();
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory LobbyType({
    @JsonKey(name: '0') required GameWinStatus? normal,
    @JsonKey(name: '5') required GameWinStatus? rankedTeam,
    @JsonKey(name: '6') required GameWinStatus? rankedSolo,
    @JsonKey(name: '7') required GameWinStatus? ranked,
    @JsonKey(name: '9') required GameWinStatus? battleCup,
  }) = _LobbyType;

  factory LobbyType.fromJson(Map<String, dynamic> json) =>
      _$LobbyTypeFromJson(json);
}

@Freezed()
class GameMode with _$GameMode {
  const GameMode._();
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory GameMode({
    @JsonKey(name: '0') GameWinStatus? unknown,
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
    @JsonKey(name: '23') GameWinStatus? turbo,
  }) = _GameMode;

  factory GameMode.fromJson(Map<String, dynamic> json) =>
      _$GameModeFromJson(json);
}

@Freezed()
class GameWinStatus with _$GameWinStatus {
  const GameWinStatus._();
  @JsonSerializable()
  const factory GameWinStatus({
    required int games,
    required int win,
  }) = _GameWinStatus;

  factory GameWinStatus.fromJson(Map<String, dynamic> json) =>
      _$GameWinStatusFromJson(json);

  int get lose => games - win;
  double get winRate => (win / games) * 100;
}
