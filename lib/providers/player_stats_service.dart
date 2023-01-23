import 'package:dota2_stat_river/features/shared/models/api_models/player_stats_api_model.dart';
import 'package:dota2_stat_river/features/stats/provider/patch_provider.dart';
import 'package:dota2_stat_river/features/stats/provider/patch_switcher.dart';
import 'package:dota2_stat_river/providers/http_service.dart';
import 'package:dota2_stat_river/providers/user_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getPlayerStatsProvider = FutureProvider<PlayerStats>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final patchId = ref.watch(getLatestPatchIdProvider).valueOrNull;
  final patchChoice = ref.watch(patchSwitcherProvider);
  final steamId =
      ref.watch(userDataStateNotifierProvider.select((value) => value.steamId));

  return await repo.getPlayerStats(
    steamId: steamId!,
    patchId: patchChoice == PatchList.latest ? patchId.toString() : null,
  );
});
