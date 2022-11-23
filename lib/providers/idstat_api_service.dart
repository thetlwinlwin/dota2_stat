import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/shared/models/api_models/idstat_api_model.dart';
import 'http_service.dart';
import 'user_service.dart';

final idStatProvider = FutureProvider<IdStat>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final data = ref.watch(userDataStateNotifierProvider);

  if (data.isGuest) {
    return IdStat.guest();
  }

  return await repo.getProfileStat(steamId: data.steamId!);
});
