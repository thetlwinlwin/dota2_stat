// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'most_played_hero.freezed.dart';
part 'most_played_hero.g.dart';

@Freezed()
class PlayerMostPlayedHeroes with _$PlayerMostPlayedHeroes {
  const PlayerMostPlayedHeroes._();
  @JsonSerializable()
  const factory PlayerMostPlayedHeroes({
    @JsonKey(name: 'hero_id') required String heroId,
    required int games,
    required int win,
  }) = _PlayerMostPlayedHeroes;

  factory PlayerMostPlayedHeroes.fromJson(Map<String, dynamic> json) =>
      _$PlayerMostPlayedHeroesFromJson(json);

  static List<PlayerMostPlayedHeroes> decodeAndParse(
    String jsonBody, {
    required int limit,
  }) {
    final List<dynamic> json = jsonDecode(jsonBody);

    return json
        .take(limit)
        .map((e) => PlayerMostPlayedHeroes.fromJson(e))
        .toList();
  }
}
