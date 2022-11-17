import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/shared/models/api_result_stages/hero_stats_result.dart';
import 'http_service.dart';

class HeroStatApiNotifier extends StateNotifier<HeroStatsApiResult> {
  HeroStatApiNotifier({required Repository repo})
      : _repo = repo,
        super(const HeroStatsApiResult.loading());

  final Repository _repo;
  void getStats() async {
    try {
      final result = await _repo.getStats();
      state = HeroStatsApiResult.data(topheroes: result);
    } catch (e) {
      state = HeroStatsApiResult.error(e.toString());
    }
  }
}

final heroStatapiStateProvider =
    StateNotifierProvider<HeroStatApiNotifier, HeroStatsApiResult>((ref) {
  // this does not depend on the userdata so that it can be loaded once the app start.
  return HeroStatApiNotifier(repo: ref.watch(repositoryProvider))..getStats();
});
