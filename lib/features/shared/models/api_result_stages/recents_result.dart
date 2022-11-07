// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../api_models/recents_api_model.dart';

part 'recents_result.freezed.dart';

@freezed
class RecentsApiResult with _$RecentsApiResult {
  const factory RecentsApiResult.data(
      {required List<RecentMatches> recentMatches}) = Data;
  const factory RecentsApiResult.loading() = Loading;
  const factory RecentsApiResult.error({required String message}) = Error;
}
