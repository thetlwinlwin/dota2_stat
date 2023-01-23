// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_played_hero.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerMostPlayedHeroes _$$_PlayerMostPlayedHeroesFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerMostPlayedHeroes(
      heroId: json['hero_id'] as String,
      games: json['games'] as int,
      win: json['win'] as int,
    );

Map<String, dynamic> _$$_PlayerMostPlayedHeroesToJson(
        _$_PlayerMostPlayedHeroes instance) =>
    <String, dynamic>{
      'hero_id': instance.heroId,
      'games': instance.games,
      'win': instance.win,
    };
