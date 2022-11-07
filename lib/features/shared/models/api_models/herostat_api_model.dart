// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'herostat_api_model.g.dart';
part 'herostat_api_model.freezed.dart';

@Freezed()
class HeroStats with _$HeroStats {
  const HeroStats._();
  @JsonSerializable(explicitToJson: true)
  const factory HeroStats({
    required int id,
    @JsonKey(name: 'localized_name') required String name,
    @JsonKey(name: 'primary_attr') required String attribute,
    required List<String> roles,
    required String img,
    required String icon,
    @JsonKey(name: 'base_str') required num power,
    @JsonKey(name: 'base_agi') required num agile,
    @JsonKey(name: 'base_int') required num wisdom,
    @JsonKey(name: 'str_gain') required num powerGain,
    @JsonKey(name: 'agi_gain') required num agileGain,
    @JsonKey(name: 'int_gain') required num wisdomGain,
    @JsonKey(name: 'base_attack_max') required num attack,
    @JsonKey(name: 'base_armor') required num armor,
    @JsonKey(name: 'move_speed') required num mobile,
    @JsonKey(name: '1_pick') required int pick1,
    @JsonKey(name: '2_pick') required int pick2,
    @JsonKey(name: '3_pick') required int pick3,
    @JsonKey(name: '4_pick') required int pick4,
    @JsonKey(name: '5_pick') required int pick5,
    @JsonKey(name: '6_pick') required int pick6,
    @JsonKey(name: '7_pick') required int pick7,
    @JsonKey(name: '8_pick') required int pick8,
    @JsonKey(name: '1_win') required int win1,
    @JsonKey(name: '2_win') required int win2,
    @JsonKey(name: '3_win') required int win3,
    @JsonKey(name: '4_win') required int win4,
    @JsonKey(name: '5_win') required int win5,
    @JsonKey(name: '6_win') required int win6,
    @JsonKey(name: '7_win') required int win7,
    @JsonKey(name: '8_win') required int win8,
  }) = _HeroStats;

  double get winRate {
    final x = (win1 + win2 + win3 + win4 + win5 + win6 + win7 + win8) /
        (pick1 + pick2 + pick3 + pick4 + pick5 + pick6 + pick7 + pick8);
    return x * 100;
  }

  factory HeroStats.fromJson(Map<String, dynamic> json) =>
      _$HeroStatsFromJson(json);

  static List<HeroStats> _decodeAndParse(String jsonBody) {
    final List<dynamic> json = jsonDecode(jsonBody);
    return json.map((e) => HeroStats.fromJson(e)).toList();
  }

  static Future<List<HeroStats>> getJson(String jsonBody) {
    return compute(_decodeAndParse, jsonBody);
  }
}
