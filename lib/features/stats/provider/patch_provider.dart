import 'package:dota2_stat_river/providers/http_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getLatestPatchIdProvider = FutureProvider<int>((ref) async {
  final result = await ref.watch(repositoryProvider).getLatestPatchId();
  return result;
});
