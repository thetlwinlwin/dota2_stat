import 'package:dota2_stat_river/features/shared/models/api_models/idstat_api_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_stat_result.freezed.dart';

@freezed
class IdStatApiResult with _$IdStatApiResult {
  const factory IdStatApiResult.data({required IdStat result}) = Data;
  const factory IdStatApiResult.loading() = Loading;
  const factory IdStatApiResult.error({required String message}) = Error;
}
