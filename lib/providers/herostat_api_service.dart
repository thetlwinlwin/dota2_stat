import 'package:dota2_stat_river/features/shared/models/api_models/herostat_api_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'http_service.dart';

enum HeroSortTypes {
  name,
  winRate,
}

final heroSortingProvider = StateProvider<HeroSortTypes>((ref) {
  return HeroSortTypes.name;
});

final heroStatResultsProvider = FutureProvider<List<HeroStats>>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final sortingType = ref.watch(heroSortingProvider);
  final results = await repo.getStats();

  if (sortingType == HeroSortTypes.winRate) {
    return await _computeSort(results);
  }
  return results;
});

Future<List<HeroStats>> _computeSort(List<HeroStats> results) {
  return compute(_sort, results);
}

List<HeroStats> _sort(List<HeroStats> results) {
  final List<HeroStats> toSort = List.from(results);
  toSort.sort(
    (a, b) => b.winRate.compareTo(a.winRate),
  );
  return toSort;
}
