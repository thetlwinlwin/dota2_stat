// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recents_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecentMatches _$$_RecentMatchesFromJson(Map<String, dynamic> json) =>
    _$_RecentMatches(
      matchId: json['match_id'] as int,
      playerSlot: json['player_slot'] as int,
      radiantWin: json['radiant_win'] as bool,
      duration: json['duration'] as int,
      gameMode: json['game_mode'] as int,
      lobbyType: json['lobby_type'] as int,
      heroId: json['hero_id'] as int,
      startTime: json['start_time'] as int,
      kills: json['kills'] as int,
      deaths: json['deaths'] as int,
      assists: json['assists'] as int,
      avgRank: json['average_rank'] as int?,
      xpm: json['xp_per_min'] as int,
      gpm: json['gold_per_min'] as int,
      partySize: json['party_size'] as int? ?? 1,
    );

Map<String, dynamic> _$$_RecentMatchesToJson(_$_RecentMatches instance) =>
    <String, dynamic>{
      'match_id': instance.matchId,
      'player_slot': instance.playerSlot,
      'radiant_win': instance.radiantWin,
      'duration': instance.duration,
      'game_mode': instance.gameMode,
      'lobby_type': instance.lobbyType,
      'hero_id': instance.heroId,
      'start_time': instance.startTime,
      'kills': instance.kills,
      'deaths': instance.deaths,
      'assists': instance.assists,
      'average_rank': instance.avgRank,
      'xp_per_min': instance.xpm,
      'gold_per_min': instance.gpm,
      'party_size': instance.partySize,
    };
