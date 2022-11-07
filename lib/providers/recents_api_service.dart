import 'package:dota2_stat_river/features/shared/models/stored_data/user_data.dart';
import 'package:dota2_stat_river/providers/http_service.dart';
import 'package:dota2_stat_river/providers/user_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/shared/models/api_result_stages/recents_result.dart';

class RecentMatchesNotifier extends StateNotifier<RecentsApiResult> {
  RecentMatchesNotifier({required Repository repo})
      : _repo = repo,
        super(const RecentsApiResult.loading());
  final Repository _repo;

  Future<void> getRecents({required UserData data}) async {
    try {
      final result = await _repo.getRecents(steamId: data.steamId!);
      state = RecentsApiResult.data(recentMatches: result);
    } catch (e) {
      state = RecentsApiResult.error(message: e.toString());
    }
  }
}

final recentMatchesProvider =
    StateNotifierProvider<RecentMatchesNotifier, RecentsApiResult>((ref) {
  final notifier = RecentMatchesNotifier(repo: ref.watch(repositoryProvider));
  ref.listen(userDataProvider, (_, next) {
    if (!next.isGuest) {
      notifier.getRecents(data: next);
    }
  });

  return notifier;
});
