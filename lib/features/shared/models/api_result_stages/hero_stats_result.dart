// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../api_models/herostat_api_model.dart';

part 'hero_stats_result.freezed.dart';

@freezed
class HeroStatsApiResult with _$HeroStatsApiResult {
  const factory HeroStatsApiResult.data({required List<HeroStats> topheroes}) =
      Data;
  const factory HeroStatsApiResult.loading() = Loading;
  const factory HeroStatsApiResult.error([String? message]) = Error;
}
