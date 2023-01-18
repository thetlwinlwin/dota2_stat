import 'package:dota2_stat_river/providers/herostat_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/shared/models/api_models/recents_api_model.dart';
import 'http_service.dart';
import 'user_service.dart';

final recentMatchesProvider = FutureProvider<List<RecentMatches>>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final id =
      ref.watch(userDataStateNotifierProvider.select((value) => value.steamId));

  return await repo.getRecents(steamId: id!);
});

final heroImgUrlProvider = FutureProvider.family<String?, int>((ref, id) async {
  final results = ref.watch(heroStatResultsProvider).valueOrNull;

  final heroStats = results?.firstWhere((element) => element.id == id);
  return heroStats?.img;
});
