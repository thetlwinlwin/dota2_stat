import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/herostat_api_service.dart';
import '../../../shared/models/api_models/herostat_api_model.dart';
import '../../../shared/widgets/loading_container.dart';
import '../../provider/sorting_heroes.dart';
import 'hero_card.dart';

class GridBody extends ConsumerWidget {
  const GridBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(heroStatapiStateProvider);
    final sortingType = ref.watch(heroSortingProvider);

    return state.when(
      data: (topheroes) {
        final List<HeroStats> result = List.from(topheroes);
        if (sortingType != HeroSortTypes.name) {
          result.sort(
            (a, b) => b.winRate.compareTo(a.winRate),
          );
        }
        return GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: topheroes.length,
          gridDelegate: _gridDelegate(),
          itemBuilder: (_, index) {
            return HeroCard(stat: result[index]);
          },
        );
      },
      loading: () => GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: _gridDelegate(),
        itemBuilder: (_, index) {
          return const LoadingContainer();
        },
      ),
      error: (message) => Center(child: Text(message.toString())),
    );
  }

  SliverGridDelegateWithMaxCrossAxisExtent _gridDelegate() {
    return const SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 250,
      childAspectRatio: 4 / 3,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
    );
  }
}
