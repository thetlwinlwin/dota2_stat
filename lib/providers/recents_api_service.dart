import 'package:dota2_stat_river/features/shared/models/api_models/recents_api_model.dart';
import 'package:dota2_stat_river/providers/http_service.dart';
import 'package:dota2_stat_river/providers/user_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final recentMatchesProvider = FutureProvider<List<RecentMatches>>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final id = ref.watch(userDataProvider.select((value) => value.steamId));

  return await repo.getRecents(steamId: id!);
});
