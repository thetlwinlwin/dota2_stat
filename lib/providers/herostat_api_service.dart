import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/shared/models/api_models/herostat_api_model.dart';
import '../features/shared/models/api_result_stages/hero_stats_result.dart';
import 'http_service.dart';

class HeroStatApiNotifier extends StateNotifier<HeroStatsApiResult> {
  HeroStatApiNotifier({required Repository repo})
      : _repo = repo,
        super(const HeroStatsApiResult.loading());

  final Repository _repo;
  void getStats() async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final result = await _repo.getStats();
      final sortedData = await compute(_winRateSorting, result);
      final tops = sortedData.sublist(0, 21);

      state = HeroStatsApiResult.data(topheroes: tops);
    } catch (e) {
      state = HeroStatsApiResult.error(e.toString());
    }
  }
}

List<HeroStats> _winRateSorting(List<HeroStats> result) {
  result.sort((a, b) => b.winRate.compareTo(a.winRate));

  return result;
}

final heroStatapiStateProvider =
    StateNotifierProvider<HeroStatApiNotifier, HeroStatsApiResult>((ref) {
  // this does not depend on the userdata so that it can be loaded once the app start.
  return HeroStatApiNotifier(repo: ref.watch(repositoryProvider))..getStats();
});
