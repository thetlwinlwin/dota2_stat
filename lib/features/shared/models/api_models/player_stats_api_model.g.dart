// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_stats_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerStats _$$_PlayerStatsFromJson(Map<String, dynamic> json) =>
    _$_PlayerStats(
      gameMode: GameMode.fromJson(json['game_mode'] as Map<String, dynamic>),
      lobbyType: LobbyType.fromJson(json['lobby_type'] as Map<String, dynamic>),
      isRadiant: IsRadiant.fromJson(json['is_radiant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlayerStatsToJson(_$_PlayerStats instance) =>
    <String, dynamic>{
      'game_mode': instance.gameMode.toJson(),
      'lobby_type': instance.lobbyType.toJson(),
      'is_radiant': instance.isRadiant.toJson(),
    };

_$_IsRadiant _$$_IsRadiantFromJson(Map<String, dynamic> json) => _$_IsRadiant(
      dire: GameWinStatus.fromJson(json['0'] as Map<String, dynamic>),
      radiant: GameWinStatus.fromJson(json['1'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IsRadiantToJson(_$_IsRadiant instance) =>
    <String, dynamic>{
      '0': instance.dire.toJson(),
      '1': instance.radiant.toJson(),
    };

_$_LobbyType _$$_LobbyTypeFromJson(Map<String, dynamic> json) => _$_LobbyType(
      normal: json['0'] == null
          ? null
          : GameWinStatus.fromJson(json['0'] as Map<String, dynamic>),
      rankedTeam: json['5'] == null
          ? null
          : GameWinStatus.fromJson(json['5'] as Map<String, dynamic>),
      rankedSolo: json['6'] == null
          ? null
          : GameWinStatus.fromJson(json['6'] as Map<String, dynamic>),
      ranked: json['7'] == null
          ? null
          : GameWinStatus.fromJson(json['7'] as Map<String, dynamic>),
      battleCup: json['9'] == null
          ? null
          : GameWinStatus.fromJson(json['9'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LobbyTypeToJson(_$_LobbyType instance) =>
    <String, dynamic>{
      '0': instance.normal?.toJson(),
      '5': instance.rankedTeam?.toJson(),
      '6': instance.rankedSolo?.toJson(),
      '7': instance.ranked?.toJson(),
      '9': instance.battleCup?.toJson(),
    };

_$_GameMode _$$_GameModeFromJson(Map<String, dynamic> json) => _$_GameMode(
      unknown: json['0'] == null
          ? null
          : GameWinStatus.fromJson(json['0'] as Map<String, dynamic>),
      allPick: json['1'] == null
          ? null
          : GameWinStatus.fromJson(json['1'] as Map<String, dynamic>),
      captainMode: json['2'] == null
          ? null
          : GameWinStatus.fromJson(json['2'] as Map<String, dynamic>),
      randomDraft: json['3'] == null
          ? null
          : GameWinStatus.fromJson(json['3'] as Map<String, dynamic>),
      singleDraft: json['4'] == null
          ? null
          : GameWinStatus.fromJson(json['4'] as Map<String, dynamic>),
      allRandom: json['5'] == null
          ? null
          : GameWinStatus.fromJson(json['5'] as Map<String, dynamic>),
      custom: json['15'] == null
          ? null
          : GameWinStatus.fromJson(json['15'] as Map<String, dynamic>),
      captainsDraft: json['16'] == null
          ? null
          : GameWinStatus.fromJson(json['16'] as Map<String, dynamic>),
      abilityDraft: json['18'] == null
          ? null
          : GameWinStatus.fromJson(json['18'] as Map<String, dynamic>),
      event: json['19'] == null
          ? null
          : GameWinStatus.fromJson(json['19'] as Map<String, dynamic>),
      allDraft: json['22'] == null
          ? null
          : GameWinStatus.fromJson(json['22'] as Map<String, dynamic>),
      turbo: json['23'] == null
          ? null
          : GameWinStatus.fromJson(json['23'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GameModeToJson(_$_GameMode instance) =>
    <String, dynamic>{
      '0': instance.unknown?.toJson(),
      '1': instance.allPick?.toJson(),
      '2': instance.captainMode?.toJson(),
      '3': instance.randomDraft?.toJson(),
      '4': instance.singleDraft?.toJson(),
      '5': instance.allRandom?.toJson(),
      '15': instance.custom?.toJson(),
      '16': instance.captainsDraft?.toJson(),
      '18': instance.abilityDraft?.toJson(),
      '19': instance.event?.toJson(),
      '22': instance.allDraft?.toJson(),
      '23': instance.turbo?.toJson(),
    };

_$_GameWinStatus _$$_GameWinStatusFromJson(Map<String, dynamic> json) =>
    _$_GameWinStatus(
      games: json['games'] as int,
      win: json['win'] as int,
    );

Map<String, dynamic> _$$_GameWinStatusToJson(_$_GameWinStatus instance) =>
    <String, dynamic>{
      'games': instance.games,
      'win': instance.win,
    };
