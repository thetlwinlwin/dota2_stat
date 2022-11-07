import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/shared/models/api_models/idstat_api_model.dart';
import '../features/shared/models/api_result_stages/id_stat_result.dart';
import '../features/shared/models/stored_data/user_data.dart';
import 'http_service.dart';
import 'user_service.dart';

class IdStatApiStateNotifier extends StateNotifier<IdStatApiResult> {
  final Repository _repo;
  IdStatApiStateNotifier({
    required Repository repo,
  })  : _repo = repo,
        super(const IdStatApiResult.loading());

  Future<void> reset({required UserData data}) async {
    if (data.isGuest) {
      state = IdStatApiResult.data(result: IdStat.guest());
    } else {
      try {
        final result = await _repo.getProfileStat(steamId: data.steamId!);
        state = IdStatApiResult.data(result: result);
      } catch (e) {
        state = IdStatApiResult.error(message: e.toString());
      }
    }
  }
}

final idStatApiStateProvider =
    StateNotifierProvider<IdStatApiStateNotifier, IdStatApiResult>((ref) {
  final notifier = IdStatApiStateNotifier(
    repo: ref.watch(repositoryProvider),
  );
  ref.listen(
    userDataProvider,
    (_, next) {
      notifier.reset(data: next);
    },
  );
  return notifier;
});
