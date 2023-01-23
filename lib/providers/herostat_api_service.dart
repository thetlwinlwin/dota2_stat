import 'package:dota2_stat_river/features/home/provider/hero_sorting_provider.dart';
import 'package:dota2_stat_river/features/shared/models/api_models/herostat_api_model.dart';
import 'package:dota2_stat_river/providers/http_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final heroStatResultsProvider = FutureProvider<List<HeroStats>>((ref) async {
  final repo = ref.watch(repositoryProvider);
  final sortingType = ref.watch(heroSortingProvider);
  final results = await repo.getStats();

  return await _computeSort(results, sortingType);
});

Future<List<HeroStats>> _computeSort(
    List<HeroStats> results, HeroSortTypes type) {
  switch (type) {
    case HeroSortTypes.name:
      return compute(_nameSort, results);
    case HeroSortTypes.winRate:
      return compute(_winRateSort, results);
    default:
      return compute(_nameSort, results);
  }
}

List<HeroStats> _nameSort(List<HeroStats> results) {
  final List<HeroStats> toSort = List.from(results);
  toSort.sort(
    (a, b) => a.name.compareTo(b.name),
  );
  return toSort;
}

List<HeroStats> _winRateSort(List<HeroStats> results) {
  final List<HeroStats> toSort = List.from(results);
  toSort.sort(
    (a, b) => b.winRate.compareTo(a.winRate),
  );
  return toSort;
}
